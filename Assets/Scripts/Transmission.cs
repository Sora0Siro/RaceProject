using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Transmission
{
    public float minRPM;
    public float maxRPM;
    public float torquePower;

    public Transmission(float minRPM, float maxRPM, float torquePower)
    {
        this.minRPM = minRPM;
        this.maxRPM = maxRPM;
        this.torquePower = torquePower;
    }
}
