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
    Transmission back = new Transmission(0.0f, -100.0f, 300.0f);
    Transmission first = new Transmission(0.0f, 40.0f, 400.0f);
    Transmission second = new Transmission(40.0f, 80.0f, 500.0f);
    Transmission third = new Transmission(80.0f, 100.0f, 550.0f);
    Transmission fourth = new Transmission(100.0f, 150.0f, 600.0f);
    Transmission fifth = new Transmission(150.0f, 200.0f, 650.0f);
    Transmission sixth = new Transmission(200.0f, 260.0f, 700.0f);
    Transmission[] mass;

    void Start()
    {
        mass = new Transmission[] {back, first, second, third, fourth, fifth, sixth };
    }

    void Update()
    {
        v = Input.GetAxis("Vertical") * mass[curentTransmission].torquePower;
        checkTransmission();
        Transmission();
        slowingDown();
        Steer();
        Stop();
        //Debug.Log(curentTransmission);
    }
    void Transmission()
    {
        //Debug.Log("This is v: " + v);
        if (v > 0)
        {
            torqueBrake(0);
            if ((RR.rpm < mass[curentTransmission].maxRPM || RL.rpm < mass[curentTransmission].maxRPM))
            {
                torqueStart(v);
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
        else if (v < 0)
        {
            torqueBrake(0);
            if ((RR.rpm > mass[0].maxRPM || RL.rpm > mass[0].maxRPM))
            {
                torqueStart(v);
            }
            else if (RR.rpm <= mass[curentTransmission].maxRPM || RL.rpm <= mass[curentTransmission].maxRPM)
            {
                torqueStart(0);
            }
        }
       // Debug.Log(RR.rpm);
    }
    void checkTransmission()
    {
        float curentRPM = RR.rpm;
        if(curentRPM < mass[curentTransmission].minRPM && curentTransmission > 1)
        {
            curentTransmission--;
        }
    }
    void Stop()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            torqueBrake(stopTorque);
        }
    }
    void Steer()
    {
        float h = Input.GetAxis("Horizontal") * steer;
        FR.steerAngle = h;
        FL.steerAngle = h;
    }
    void slowingDown()
    {
        if(v==0)
        {
            torqueBrake(slowing);
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
}
