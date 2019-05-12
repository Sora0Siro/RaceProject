using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SportDrive : MonoBehaviour
{
    public WheelCollider FR;
    public WheelCollider FL;
    public WheelCollider RR;
    public WheelCollider RL;

    public int maxTransmission = 5;
    public float slowing = 1000.0f;
    public float steer = 25.0f;
    public float stopTorque = 5000.0f;
    private float v;
    private int curentTransmission = 1;

    Transmission back = new Transmission(0.0f, -80.0f, 1700);//300
    Transmission first = new Transmission(0.0f, 500, 1000);//400
    Transmission second = new Transmission(500, 900, 500);//500
    Transmission third = new Transmission(900, 1200, 350);//550
    Transmission fourth = new Transmission(1200, 1600, 300);//600
    Transmission fifth = new Transmission(1600, 1800, 250);//650
    Transmission sixth = new Transmission(1800, 2000, 200);//700
    Transmission[] mass;

    public float brakeForce = 0f;
    public float StopForce = 0f;
    public float StartForce = 0f;
    public float VertAxis = 0f;
    public int currTransm = 0;
    public Vector3 velocityIn3;
    public float WheelsRPM = 0;

    Rigidbody carBody;
    
    float accel;
    float steerLimitAngle = 35f;

    bool lightstate = true;

    float some = 10;
    float formulaAngle;

    

    public Light[] FrontLights;
    public Light[] RearLights;

    public GameObject menu;

    bool canMove = true;

    float b;
    float carVelocity;
    float mSteerAngle;
    
    void Update()
    {
        Ext();

        if (canMove)
        {
            v = Input.GetAxis("Vertical") * mass[curentTransmission].torquePower;
            CheckTransmission();
            Transmission();
            WheelRotation();
            SlowingDown();
            Steer();
            Lights();
            Stop();
        }
    }
    void Start()
    {
        mass = new Transmission[] { back, first, second, third, fourth, fifth, sixth };
        carBody = GetComponent<Rigidbody>();
    }

    //Transmission    
    void Transmission()
    {
        if (v > 0)
        {
            offBrakeLights();
            torqueBrake(0);
            if ((RR.rpm<mass[curentTransmission].maxRPM || RL.rpm<mass[curentTransmission].maxRPM))
            {
                torqueStart(v);
            }
            else if (RR.rpm >= mass[curentTransmission].maxRPM || RL.rpm >= mass[curentTransmission].maxRPM)
            {
                if (curentTransmission<maxTransmission)
                {
                    curentTransmission++;
                }
                else
                {
                    torqueStart(0);
                }
            }
        }
        else if (v< 0)
        {
            torqueBrake(0);
            onBrakeLights();
            if ((RR.rpm > mass[0].maxRPM || RL.rpm > mass[0].maxRPM))
            {
                torqueStart(v);
            }
            else if (RR.rpm <= mass[curentTransmission].maxRPM || RL.rpm <= mass[curentTransmission].maxRPM)
            {
                torqueStart(0);
            }
        }
        else if (v == 0)
        {
            offBrakeLights();
        }
        formulaAngle = RL.rpm * some / 60;
        // Debug.Log(RR.rpm);
    }
    
    //Actions
    void Steer()
    {
        mSteerAngle = Input.GetAxis("Horizontal") * steerLimitAngle;
        FR.steerAngle = mSteerAngle;
        FL.steerAngle = mSteerAngle;
    }
    void Stop()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            torqueBrake(stopTorque);
            onBrakeLights();
        }
        else if (Input.GetKeyUp(KeyCode.Space))
        {
            offBrakeLights();
        }
    }
    void GamePause()
    {
        canMove = !canMove;
        menu.SetActive(!menu.active);
    }
    void SlowingDown()
    {
        if (v == 0)
        {
            torqueBrake(slowing);
        }
    }
    void CheckTransmission()
    {
        if (RR.rpm < mass[curentTransmission].minRPM && curentTransmission > 1)
        {
            curentTransmission--;
        }
    }
    void Lights()
    {
        if (Input.GetKeyDown(KeyCode.H))
        {
            onOffFrontLights();
        }
    }
    void Ext()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            GamePause();
        }
    }
    void WheelRotation()
    {
        Vector3 v = new Vector3(formulaAngle + FR.transform.rotation.x, mSteerAngle, 0);

        FR.transform.localRotation = Quaternion.Euler(v);
        FL.transform.localRotation = Quaternion.Euler(v);

        RR.transform.Rotate(Vector3.right, formulaAngle);
        RL.transform.Rotate(Vector3.right, formulaAngle);
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