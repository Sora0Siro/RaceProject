using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCamera : MonoBehaviour
{
    public GameObject[] camerasObj;
    private int previousCamNumber = 0;
    private int lastcam = 0;
    Camera[] cameras;
    int choosedCamera = 0;
    void Start()
    {
        cameras = new Camera[camerasObj.Length];
        for (int i = 0; i < camerasObj.Length; i++)
        {
            cameras[i] = camerasObj[i].GetComponent<Camera>();
        }
        lastcam = cameras.Length - 1;
    }
    void Update()
    {
        ChangeView();
        LookBack();
    }
    void SetActiveCamera(bool flag, int number)
    {
        camerasObj[number].SetActive(flag);
        cameras[number].enabled = (flag);
    }
    void ChangeView()
    {
        if (Input.GetKeyDown(KeyCode.V))
        {
            SetActiveCamera(false, choosedCamera);
            if (choosedCamera == lastcam)
            {
                choosedCamera = 0;
            }
            else
            {
                choosedCamera++;
            }
            SetActiveCamera(true, choosedCamera);
        }
    }
    void LookBack()
    {
        if (Input.GetKey(KeyCode.B))
        {
            if(choosedCamera != lastcam)
            {
                Debug.Log("KEY DOWN");

                previousCamNumber = choosedCamera;
                Debug.Log("previous cam:" + previousCamNumber);

                SetActiveCamera(false, choosedCamera);

                choosedCamera = lastcam;
                Debug.Log("next cam :" + choosedCamera);

                SetActiveCamera(true, choosedCamera); // last camera should looking backwards
            }
        }
        else if(Input.GetKeyUp(KeyCode.B))
        {
            Debug.Log("KEY UP");
            Debug.Log("What camera to off:" + choosedCamera);
            SetActiveCamera(false, choosedCamera);
            choosedCamera = previousCamNumber;
            Debug.Log("What camera to on:" + choosedCamera);
            SetActiveCamera(true, choosedCamera);
        }
        else
        {
            SetActiveCamera(true, choosedCamera);
        }
    }
}