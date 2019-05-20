using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GarageScript : MonoBehaviour
{
    int Mode = 5;
    Quaternion rotation = new Quaternion();

    public int buttonsCount;
    public int selectedCar = 0;
    public int buttSelected = 0;

    public GameObject car;
    public GameObject TocusCar;

    public GameObject garage;
    public GameObject garageUI;

    public GameObject InGameUI;

    public GameObject[] availableCars;
    public GameObject[] realCars;
    public GameObject[] buttSelections;
    public GameObject GameController;

    void Start()
    {
        ActivateOnlyIndex(availableCars, selectedCar);
    }

    void Update()
    {
        switch (Mode)
        {
            case 5: // selection main contr
                MainBtts();
                ActivateOnlyIndex(buttSelections, buttSelected);
                break;
            case 0:
                rotation = availableCars[selectedCar].transform.rotation;
                ActivateOnlyIndex(availableCars, selectedCar);
                CarSelect();
                break;
            case 1:
                CarSpin();
                break;
            default:
                break;
        }
        if (Input.GetKeyDown(KeyCode.Return))
        {
            Mode = buttSelected;
        }
        else if (Input.GetKeyDown(KeyCode.Escape))
        {
            Mode = 5;
        }
    }

    void MainBtts()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            garageUI.SetActive(false);
            garage.SetActive(false);
            //TocusCar.SetActive(true);
            InGameUI.SetActive(true);
            ActivateOnlyIndex(realCars, selectedCar);
        }
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            if (buttSelected == 0)
            {
                buttSelected = buttonsCount - 1;
            }
            else
            {
                buttSelected--;
            }
        }
        else if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            if (buttSelected == buttonsCount - 1)
            {
                buttSelected = 0;
            }
            else
            {
                buttSelected++;
            }
        }
    }

    void CarSpin()
    {
        if (Input.GetKey(KeyCode.LeftArrow))
        {
            availableCars[selectedCar].transform.Rotate(new Vector3(0, 1, 0), 1);
            //car.transform.Rotate(new Vector3(0, 1, 0), 1);
        }
        else if (Input.GetKey(KeyCode.RightArrow))
        {
            availableCars[selectedCar].transform.Rotate(new Vector3(0, 1, 0), -1);
            //car.transform.Rotate(new Vector3(0, 1, 0), -1);
        }
    }

    void CarSelect()
    {
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            if (selectedCar == 0)
            {
                selectedCar = availableCars.Length - 1;
            }
            else
            {
                selectedCar--;
            }
        }
        else if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            if (selectedCar == availableCars.Length - 1)
            {
                selectedCar = 0;
            }
            else
            {
                selectedCar++;
            }
        }
        availableCars[selectedCar].transform.rotation = rotation;
        ChangeRespawnReference();
        ChangeCameraReference();
    }

    void ActivateOnlyIndex(GameObject [] array, int index)
    {
        DeactivateAll(array);
        array[index].SetActive(true);
    }

    void DeactivateAll(GameObject[] array)
    {
        for (int i = 0; i < array.Length; i++)
        {
            array[i].SetActive(false);
        }
    }

    void ChangeRespawnReference()
    {
        GameController.GetComponent<RespawnCar>().car = availableCars[selectedCar].gameObject;
        //GameController.GetComponent<SpawnPoint>().spawnPosition = availableCars[selectedCar].GetComponent<SpawnPoint>().spawnPosition;
        //GameController.GetComponent<RoadSpawnPoint>().roadSpawnPoint = availableCars[selectedCar].GetComponent<RoadSpawnPoint>().roadSpawnPoint;

        //GameController.GetComponent<SpawnPoint>().spawnQuaternion = availableCars[selectedCar].GetComponent<SpawnPoint>().spawnQuaternion;
        //GameController.GetComponent<RoadSpawnPoint>().roadSpawnQuaternion = availableCars[selectedCar].GetComponent<RoadSpawnPoint>().roadSpawnQuaternion;
    }

    void ChangeCameraReference()
    {
        GameController.GetComponent<ChangeCamera>().cameras = realCars[selectedCar].GetComponentsInParent<Camera>();
    }
}