using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class garageEnter : MonoBehaviour
{
    public GameObject GarageIcon;
    public GameObject RaceIcon;
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
                SceneManager.LoadScene("GarageScene");
            }
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            HideIcon(1);
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