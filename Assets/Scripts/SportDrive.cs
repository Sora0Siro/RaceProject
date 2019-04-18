using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SportDrive : MonoBehaviour
{
    public float brakeForce = 0f;
    public float StopForce = 0f;
    public float StartForce = 0f;
    public float VertAxis = 0f;
    public int currTransm = 0;
    public Vector3 velocityIn3;
    public float WheelsRPM = 0;

    Rigidbody carBody;
    public WheelCollider FR;
    public WheelCollider FL;
    public WheelCollider RR;
    public WheelCollider RL;

    int maxTransmission = 5;
    float accel;
    float steerLimitAngle = 25f;
    float slowing = 2500f;
    float stopTorque = 5000f;
    private int curentTransmission = 1;

    bool lightstate = true;

    float some = 10;
    float formulaAngle;

    Transmission back = new Transmission(0.0f, -40.0f, 700);//300
    Transmission first = new Transmission(0.0f, 500, 1000);//400
    Transmission second = new Transmission(500, 900, 500);//500
    Transmission third = new Transmission(900, 1200, 350);//550
    Transmission fourth = new Transmission(1200, 1600, 300);//600
    Transmission fifth = new Transmission(1600, 1800, 250);//650
    Transmission sixth = new Transmission(1800, 2000, 200);//700
    Transmission[] mass;

    public Light[] FrontLights;
    public Light[] RearLights;

    float b;
    float carVelocity;
    float mSteerAngle;
    void Start()
    {
        mass = new Transmission[] {back, first, second, third, fourth, fifth, sixth };
        carBody = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.H))
        {
            onOffFrontLights();
        }
        if (Input.GetKey(KeyCode.Space))
        {
            torqueBrake(stopTorque);
            onBrakeLights();
        }
        else if (Input.GetKeyUp(KeyCode.Space))
        {
            offBrakeLights();
        }



        carVelocity = carBody.velocity.magnitude;
        velocityIn3 = carBody.velocity;

        accel = Input.GetAxis("Vertical") * mass[curentTransmission].torquePower;
        Transmission();
        Steer();

        VertAxis = Input.GetAxis("Vertical");
        StartForce = RL.motorTorque;
        StopForce = FL.brakeTorque;
        currTransm = curentTransmission;
        WheelsRPM = RR.rpm;


        Vector3 v = new Vector3(formulaAngle + FR.transform.rotation.x, mSteerAngle, 0);

        FR.transform.localRotation = Quaternion.Euler(v);
        FL.transform.localRotation = Quaternion.Euler(v);

        //FR.transform.localRotation = Quaternion.Euler(0, mSteerAngle, 0);
        //FL.transform.localRotation = Quaternion.Euler(0, mSteerAngle, 0);

        //FR.transform.Rotate(Vector3.right, formulaAngle);
        //FL.transform.Rotate(Vector3.right, formulaAngle);



        RR.transform.Rotate(Vector3.right, formulaAngle);
        RL.transform.Rotate(Vector3.right, formulaAngle);
    }

    //Transmission
    void Transmission()
    {
        checkTransmission();

        if (accel > 0)
        {
            offBrakeLights();
            /*if(RR.rpm < 0)
            {
                //Slowing(0.1f);
            }
            else
            {*/
                ReleaseBrakes();
                if ((RR.rpm < mass[curentTransmission].maxRPM || RL.rpm < mass[curentTransmission].maxRPM))
                {
                    torqueStart(accel);
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
            //}
        }
        else if (accel < 0)
        {
            onBrakeLights();
            /*if(RR.rpm > 0)
            {
                Slowing(0.1f);
            }
            else
            {*/
                ReleaseBrakes();
                if ((RR.rpm > mass[0].maxRPM || RL.rpm > mass[0].maxRPM))
                {
                    torqueStart(accel);
                }
                else if (RR.rpm <= mass[curentTransmission].maxRPM || RL.rpm <= mass[curentTransmission].maxRPM)
                {
                    torqueStart(0);
                }

            //}
        }
        else if(accel == 0)
        {
            offBrakeLights();
            Slowing(0.05f /*very sensitive*/);
            ReleaseTorque();
            ReleaseBrakes();
        }


        formulaAngle = RL.rpm * some / 60;
    }
    void checkTransmission()
    {
        if(RR.rpm < mass[curentTransmission].minRPM && curentTransmission > 1)
        {
            curentTransmission--;
        }
    }

    //Actions
    void Steer()
    {
        mSteerAngle = Input.GetAxis("Horizontal") * steerLimitAngle;
        FR.steerAngle = mSteerAngle;
        FL.steerAngle = mSteerAngle;
    }
    void ReleaseBrakes()
    {
        if(RR.brakeTorque != 0 && FR.brakeTorque != 0)
        {
            torqueBrake(0);
            offBrakeLights();
        }
    }
    void ReleaseTorque()
    {
        if(RR.motorTorque != 0)
        {
            torqueStart(0);
        }
    }
    void Slowing(float force /*very sensitive*/)
    {
        carBody.velocity = Vector3.MoveTowards(carBody.velocity, new Vector3(0, 0, 0), force);
    }

    //physics values
    public void torqueBrake(float brakePower)
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
    void onBrakeLights()
    {
        for (int i = 0; i < RearLights.Length; i++)
        {
            RearLights[i].gameObject.SetActive(true);
        }
    }
    void offBrakeLights()
    {
        for (int i = 0; i < RearLights.Length; i++)
        {
            RearLights[i].gameObject.SetActive(false);
        }
    }

    void onOffFrontLights()
    {
        FrontLights[0].gameObject.SetActive(lightstate);
        FrontLights[1].gameObject.SetActive(lightstate);

        //for (int i = 0; i < FrontLights.Length; i++)
        //{
        //    FrontLights[i].gameObject.SetActive(lightstate);
        //}
        lightstate = !lightstate;
    }
}