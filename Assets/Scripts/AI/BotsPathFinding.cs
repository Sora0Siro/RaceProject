using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BotsPathFinding : MonoBehaviour
{
    public Vector3 garagePlace;
    public GameObject gameController;
    public float maxSteer = 45.0f;
    public WheelCollider FR;
    public WheelCollider FL;
    public WheelCollider RR;
    public WheelCollider RL;
    private GameObject[] path;
    public int maxTransmission = 5;
    public float slowing = 1000.0f;
    public float steer = 25.0f;
    public float stopTorque = 5000.0f;
    public bool inRace = false;

    public float sensorLength = 3.0f;
    public Vector3 frontSensorPosition = new Vector3(0, 0.5f, 2.0f);
    public float frontSideSensorPosition = 0.6f;
    public float frontSensorAngle = 30.0f;
    public float steerSpeed = 5.0f;

    private float targetSteerAngle = 0.0f;
    private int currentPoint = 0;
    private int curentTransmission = 1;
    private bool avoiding = false;
    private float avoidingMultiplier = 0.0f;
    Transmission back = new Transmission(0.0f, -100.0f, 300.0f);
    Transmission first = new Transmission(0.0f, 40.0f, 400.0f);
    Transmission second = new Transmission(40.0f, 80.0f, 500.0f);
    Transmission third = new Transmission(80.0f, 100.0f, 550.0f);
    Transmission fourth = new Transmission(100.0f, 150.0f, 600.0f);
    Transmission fifth = new Transmission(150.0f, 200.0f, 650.0f);
    Transmission sixth = new Transmission(200.0f, 260.0f, 700.0f);
    Transmission[] mass;

    public void setCurrentPoint(int currentPoint)
    {
        this.currentPoint = currentPoint;
    }
    public int getCurrentPoint()
    {
        return currentPoint;
    }
    void Start()
    {
        mass = new Transmission[] { back, first, second, third, fourth, fifth, sixth };
        garagePlace = gameObject.transform.position;
    }

    void FixedUpdate()
    {
        if (path == null)
        {
            path = gameController.GetComponent<RacesManager>().getBotsPath();
            if (path != null)
            {
                Debug.Log(path.Length + "  " + gameObject.name);
            }
        }
        if (inRace && path != null)
        {
            if (currentPoint < path.Length)
            {
                LerpToSteerAngle();
                Sensors();
                ApplySteer();
                checkTransmission();
                Drive();
                CheckDistance();
            }
            else if (currentPoint >= path.Length)
            {
                torqueBrake(stopTorque);
                inRace = false;
            }
        }
    }

    public void ApplySteer()
    {
        if (!avoiding)
        {
            Vector3 relativeVector = transform.InverseTransformPoint(path[currentPoint].transform.position);
            float newSteer = (relativeVector.x / relativeVector.magnitude) * maxSteer;
            targetSteerAngle = newSteer;
        }
    }

    public void Drive()
    {
        torqueBrake(0);
        if ((RR.rpm < mass[curentTransmission].maxRPM || RL.rpm < mass[curentTransmission].maxRPM))
        {
            torqueStart(mass[curentTransmission].torquePower);
        }
        else if (RR.rpm >= mass[curentTransmission].maxRPM || RL.rpm >= mass[curentTransmission].maxRPM)
        {
            if (curentTransmission < maxTransmission)
            {
                curentTransmission++;
            }
            else
            {
                torqueStart(0);
            }
        }
    }

    void torqueBrake(float brakePower)
    {
        RR.brakeTorque = brakePower;
        RL.brakeTorque = brakePower;
        FR.brakeTorque = brakePower;
        FL.brakeTorque = brakePower;
    }

    void torqueStart(float movePower)
    {
        RR.motorTorque = movePower;
        RL.motorTorque = movePower;
    }

    void checkTransmission()
    {
        float curentRPM = RR.rpm;
        if (curentRPM < mass[curentTransmission].minRPM && curentTransmission > 1)
        {
            curentTransmission--;
        }
    }

    public void CheckDistance()
    {
        if (Vector3.Distance(gameObject.transform.position, path[currentPoint].transform.position) < 3.0f)
        {
            currentPoint++;
        }
    }

    public void Sensors()
    {
        avoiding = false;
        avoidingMultiplier = 0.0f;
        RaycastHit hit;
        Vector3 sensorStartPos = transform.position;
        sensorStartPos += transform.forward * frontSensorPosition.z;
        sensorStartPos += transform.up * frontSensorPosition.y;

        //right sensor
        sensorStartPos += transform.right * frontSideSensorPosition;
        if (Physics.Raycast(sensorStartPos, transform.forward, out hit, sensorLength))
        {
            if (!hit.collider.CompareTag("Terrain") && !hit.collider.CompareTag("Player Point") && !hit.collider.CompareTag("Road"))
            {
                avoiding = true;
                avoidingMultiplier -= 1.0f;
              //  Debug.DrawLine(sensorStartPos, hit.point);
             //   Debug.Log(hit.collider.tag + "  " + gameObject.name);
            }
        }
        //right angle sensor
        else if (Physics.Raycast(sensorStartPos, Quaternion.AngleAxis(frontSensorAngle, transform.up) * transform.forward, out hit, sensorLength))
        {
            if (!hit.collider.CompareTag("Terrain") && !hit.collider.CompareTag("Player Point") && !hit.collider.CompareTag("Road"))
            {
                avoiding = true;
                avoidingMultiplier -= 0.5f;
              //  Debug.DrawLine(sensorStartPos, hit.point);
              //  Debug.Log(hit.collider.name + "  " + gameObject.name);
            }
        }
        //left sensor
        sensorStartPos -= transform.right * frontSideSensorPosition * 2;
        if (Physics.Raycast(sensorStartPos, transform.forward, out hit, sensorLength))
        {
            if (!hit.collider.CompareTag("Terrain") && !hit.collider.CompareTag("Player Point") && !hit.collider.CompareTag("Road"))
            {
                avoiding = true;
                avoidingMultiplier += 1.0f;
                //Debug.DrawLine(sensorStartPos, hit.point);
                //Debug.Log(hit.collider.tag + "  " + gameObject.name);
            }
        }
        //left angle sensor
       else if (Physics.Raycast(sensorStartPos, Quaternion.AngleAxis(-frontSensorAngle, transform.up) * transform.forward, out hit, sensorLength))
        {
            if (!hit.collider.CompareTag("Terrain") && !hit.collider.CompareTag("Player Point") && !hit.collider.CompareTag("Road"))
            {
                avoiding = true;
                avoidingMultiplier += 0.5f;
                /*Debug.DrawLine(sensorStartPos, hit.point);
                Debug.Log(hit.collider.tag + "  " + gameObject.name);*/
            }
        }
        //front sensor;
        if (avoidingMultiplier == 0.0f)
        {
            if (Physics.Raycast(sensorStartPos, transform.forward, out hit, sensorLength))
            {
                if (!hit.collider.CompareTag("Terrain") && !hit.collider.CompareTag("Player Point") && !hit.collider.CompareTag("Road"))
                {
                    avoiding = true;
                   // Debug.DrawLine(sensorStartPos, hit.point);
                   // Debug.Log(hit.collider.tag + "  " + gameObject.name);
                    if(hit.normal.x<0)
                    {
                        avoidingMultiplier -= 1.0f;
                    }
                    else
                    {
                        avoidingMultiplier += 1.0f;
                    }
                }
            }
        }
        if(avoiding)
        {
            targetSteerAngle = maxSteer * avoidingMultiplier;
        }
    }

    public void LerpToSteerAngle()
    {
        FL.steerAngle = Mathf.Lerp(FL.steerAngle, targetSteerAngle, Time.deltaTime * steerSpeed);
        FR.steerAngle = Mathf.Lerp(FR.steerAngle, targetSteerAngle, Time.deltaTime * steerSpeed);
    }

    public void ReturnToTheGarage()
    {
        gameObject.transform.position = garagePlace;
        inRace = false;
        path = null;
        gameObject.SetActive(false);
        gameObject.SetActive(true);
    }

}
