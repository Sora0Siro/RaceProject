using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCamera : MonoBehaviour
{
    public int lenght = 4;
    public GameObject[] cameras = new GameObject[4];
    private int choosedCamera = 0;
    void Start()
    {
        
    }

    
    void Update()
    {
        if(Input.GetKeyUp(KeyCode.Tab) && !Input.GetKey(KeyCode.LeftShift))
        {
            disableEnableCamera(false, choosedCamera);
            if (choosedCamera == lenght-1)
            {
                choosedCamera = 0;
            }
            else
            {
                choosedCamera++;
            }
            disableEnableCamera(true, choosedCamera);
        }
        if(Input.GetKey(KeyCode.LeftShift))
        {
            disableEnableCamera(false, choosedCamera);
            disableEnableCamera(true, 3);
        }
        else
        {
            disableEnableCamera(true, choosedCamera);
        }
    }
    public void disableEnableCamera(bool flag, int number)
    {
        cameras[number].GetComponent<Camera>().enabled = flag;
    }
}
