using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class raceEnterBeh : MonoBehaviour
{
    public GameObject carIcon;
    public Vector3 defPos;

    bool down = false;

    float step = 0.01f;
    float counter = 0;

    Vector3 vc = new Vector3();

    void Start()
    {
        defPos = carIcon.transform.position;
    }

    void Update()
    {
        if (down)
        {
            counter -= step;
        }
        else
        {
            counter += step;
        }
        if (counter >= 0.3f)
        {
            down = true;
        }
        else if(counter <= -0.3f)
        {
            down = false;
        }

        vc = defPos;
        vc.y += counter;

        carIcon.transform.position = vc;
    }
}