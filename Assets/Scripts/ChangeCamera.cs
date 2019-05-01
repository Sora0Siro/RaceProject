using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCamera : MonoBehaviour
{
    public GameObject[] camerasObj;
    public float cameraShift;
    
    Camera[] cameras;
    Vector3 vc;
    int choosedCamera = 0;
    void Start()
    {
        cameras = new Camera[camerasObj.Length];
        for (int i = 0; i < camerasObj.Length; i++)
        {
            cameras[i] = camerasObj[i].GetComponent<Camera>();
        }
    }
    void Update()
    {
        ChangeView();
        LookBack();
        CameraAngle();
    }
    void SetActiveCamera(bool flag, int number)
    {
        camerasObj[number].SetActive(flag);
        cameras[number].enabled = (flag);
    }

    void CameraAngle()
    {
        vc = cameras[choosedCamera].transform.position;
        if(choosedCamera == 1)
        {
            if (Input.GetKey(KeyCode.LeftArrow))
            {// pos 0 <<< x // rot y >>> 1
                vc.x -= cameraShift; //set finish position
                cameras[choosedCamera].transform.Rotate(new Vector3(0, 1, 0), .1f); // change rotation
                Debug.Log("Moving Left");
                cameras[choosedCamera].transform.position = Vector3.MoveTowards(cameras[choosedCamera].transform.position, vc, 0.05f); // moving camera to finish angle
            }
            else if (Input.GetKey(KeyCode.RightArrow))
            {// pos x >>> 1 // rot 0 <<< y
                vc.x += cameraShift;
                cameras[choosedCamera].transform.Rotate(new Vector3(0, 1, 0), -.1f); // change rotation
                Debug.Log("Moving Right");
                cameras[choosedCamera].transform.position = Vector3.MoveTowards(cameras[choosedCamera].transform.position, vc, 0.05f); // moving camera to finish angle
            }
        }
    }

    void ChangeView()
    {
        if (Input.GetKeyDown(KeyCode.V))
        {
            SetActiveCamera(false, choosedCamera);
            if (choosedCamera == cameras.Length - 1)
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
            SetActiveCamera(false, choosedCamera);
            SetActiveCamera(true, cameras.Length - 1); // last camera should looking backwards
        }
        else
        {
            SetActiveCamera(true, choosedCamera);
        }
    }
}