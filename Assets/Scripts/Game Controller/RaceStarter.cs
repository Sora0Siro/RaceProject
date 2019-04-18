using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaceStarter : MonoBehaviour
{
    private bool enterTheRace = false;
    private bool showDetails = false;
    public bool getEnter()
    {
        return enterTheRace;
    }
    public void setEnter(bool enterTheRace)
    {
        this.enterTheRace = enterTheRace;
    }
    public bool getDetails()
    {
        return showDetails;
    }
    public void setDetails(bool showDetails)
    {
        this.showDetails = showDetails;
    }
    void OnTriggerEnter(Collider col)
    {
        Debug.Log(col.tag);
        if(col.tag == "Player")
        {
            showDetails = true;
        }
    }
    void OnTriggerStay(Collider col)
    {
        if(col.tag == "Player")
        {
            if(Input.GetKeyUp(KeyCode.E))
            {
                showDetails = false;
                enterTheRace = true;
            }
        }
    }
    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            showDetails = false;
        }
    }
}