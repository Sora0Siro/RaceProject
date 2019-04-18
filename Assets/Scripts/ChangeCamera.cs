using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCamera : MonoBehaviour
{
    public Camera[] cameras;
    int choosedCamera = 0;
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.V))
        {
            ActiveCamera(false, choosedCamera);
            if (choosedCamera == cameras.Length - 1)
            {
                choosedCamera = 0;
            }
            else
            {
                choosedCamera++;
            }
            ActiveCamera(true, choosedCamera);
        }
        if(Input.GetKey(KeyCode.B))
        {
            ActiveCamera(false, choosedCamera);
            ActiveCamera(true, cameras.Length - 1); // last camera should looking backwards
        }
        else
        {
            ActiveCamera(true, choosedCamera);
        }
    }
    public void ActiveCamera(bool flag, int number)
    {
        cameras[number].enabled = flag;
    }
}
