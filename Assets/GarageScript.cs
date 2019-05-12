using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GarageScript : MonoBehaviour
{
    public GameObject car;
    void Update()
    {
        if (Input.GetKey(KeyCode.Escape))
        {
            SceneManager.LoadScene("Msce");
        }
        else if (Input.GetKey(KeyCode.LeftArrow))
        {
            car.transform.Rotate(new Vector3(0, 1, 0), 1);
        }
        else if (Input.GetKey(KeyCode.RightArrow))
        {
            car.transform.Rotate(new Vector3(0, 1, 0), -1);
        }
    }
}