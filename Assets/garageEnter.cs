using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class garageEnter : MonoBehaviour
{
    public GarageScript gs;

    public GameObject garage;
    public GameObject RaceIcon;
    public GameObject InGameUI;
    public GameObject garageUI;
    public GameObject GarageIcon;
    void OnTriggerEnter(Collider col)
    {
        if(col.tag == "Player")
        {
            ShowIcon(1);
        }
    }

    void OnTriggerStay(Collider col)
    {
        if (col.tag == "Player")
        {
            if (Input.GetKeyUp(KeyCode.E))
            {
                gs.realCars[gs.selectedCar].SetActive(false);
                for(int i =0;i< gs.realCars.Length; i++)
                {
                    gs.realCars[i].transform.rotation = Quaternion.Euler(0, -93f, 0);
                }
                //TocusCar.SetActive(false);
                InGameUI.SetActive(false);
                garage.SetActive(true);
                garageUI.SetActive(true);
            }
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            HideIcon(1);
        }
        else
        {
            Debug.Log("NOTTTT !!! HIDINH ICON" + col.name);
        }
    }

    void ShowIcon(int iconNumber)
    {
        switch (iconNumber)
        {
            case 1:
                GarageIcon.SetActive(true);
                break;
            case 2:
                RaceIcon.SetActive(true);
                break;
            default:
                break;
        }
    }

    void HideIcon(int iconNumber)
    {
        switch (iconNumber)
        {
            case 1:
                GarageIcon.SetActive(false);
                break;
            case 2:
                RaceIcon.SetActive(false);
                break;
            default:
                break;
        }
    }
}