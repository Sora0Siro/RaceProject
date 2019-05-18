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
            if (choosedCamera != lastcam)
            {
                previousCamNumber = choosedCamera;

                SetActiveCamera(false, choosedCamera);

                choosedCamera = lastcam;

                SetActiveCamera(true, choosedCamera); // last camera should looking backwards
            }
        }
        else if (Input.GetKeyUp(KeyCode.B))
        {
            SetActiveCamera(false, choosedCamera);
            choosedCamera = previousCamNumber;
            SetActiveCamera(true, choosedCamera);
        }
        else
        {
            SetActiveCamera(true, choosedCamera);
        }
    }
}