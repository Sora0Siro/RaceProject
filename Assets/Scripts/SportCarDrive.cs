using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SportCarDrive : MonoBehaviour
{
    public WheelCollider FR;
    public WheelCollider FL;
    public WheelCollider RR;
    public WheelCollider RL;
    public float speed;
    public float startingTorquePower = 50.0f;
    public float firstTransmission = 100.0f;
    public float speedBoost1 = 1.0f; //скорость разгона первая передача (до 100)
    public float speedBoost2 = 1.0f; //скорость разгона вторая передача (свыше 100)
    public float stopingSpeed = -0.5f;//скорость замедления (задний ход или бездействие)
    public float backSpeed = -0.5f;//скорость заднего хода
    public float emergencyStop = -2.0f;//скорость тормоза (пробел)
    public float maxSpeed = 400.0f;//максимальная скорость
    public float minSpeed = -200.0f;//минимальная скорость
    public float steerSpeed = 10.0f;//скорость поворота
    public float torqueStop = 100.0f;//скорость заглухания двигателя;
    void Start()
    {
        speed = startingTorquePower;
    }

    void Update()
    {
        if (!Input.GetKey(KeyCode.Space))
        {
            if (Input.GetKey(KeyCode.W))
            {
                MoveForward();
            }
            if (!Input.GetKey(KeyCode.W) && !Input.GetKey(KeyCode.S))
            {
                StopDuringTheTime();
            }
            if (Input.GetKey(KeyCode.S) && !Input.GetKey(KeyCode.W))
            {
                MoveBackward();
            }
        }
        else
        {
            EmergencyStop();
        }
        if (Input.GetKeyUp(KeyCode.Space))
        {
            StopTorque(0);
        }
        MoveTheCar();
        //Debug.Log(speed);
        //Debug.Log(rot.speed_value);
    }

    public void MoveForward()
    {
        StopTorque(0);
        if (speed < maxSpeed)
        {
            if (speed <= firstTransmission)
            {
                speed += speedBoost1;
            }
            else
            {
                speed += speedBoost2;
            }
        }
    }

    public void StopDuringTheTime()
    {
        if (speed > startingTorquePower)
        {
            speed += stopingSpeed;
            StopTorque(100);
        }
        if (speed < startingTorquePower)
        {
            speed -= stopingSpeed;
        }
    }

    public void MoveBackward()
    {
        StopTorque(0);
        if (speed > minSpeed)
        {
            speed += backSpeed;
        }
    }

    public void EmergencyStop()
    {
        if (speed > startingTorquePower)
        {
            speed += emergencyStop;
        }
        if (speed < startingTorquePower)
        {
            speed -= emergencyStop;
        }
        if (speed > startingTorquePower && speed <= startingTorquePower + 0.5f)
        {
            speed = startingTorquePower;
        }
        StopTorque(torqueStop);
    }

    public void MoveTheCar()
    {
        float h = Input.GetAxis("Horizontal") * steerSpeed;
        float v = Input.GetAxis("Vertical") * speed;
        //Debug.Log("Vertical:" + v);
        RR.motorTorque = v;
        RL.motorTorque = v;
        //FR.motorTorque = v;
        //FL.motorTorque = v;
        FR.steerAngle = h;
        FL.steerAngle = h;
    }
    public void StopTorque(float power)
    {
        RR.brakeTorque = power;
        RL.brakeTorque = power;
        //FR.brakeTorque = power;
        //FL.brakeTorque = power;
    }
}
