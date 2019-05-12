using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class RaceStarter : MonoBehaviour
{
    public List<GameObject> raceMembers = new List<GameObject>();
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
        if (col.tag == "Player")
        {
            showDetails = true;
        }
    }
    void OnTriggerStay(Collider col)
    {
        DecreaseRadius();
        if (col.tag == "Player")
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
        ChangeSphereRadius(2.4f);
        if (col.tag == "Player")
        {
            showDetails = false;
        }
    }

    public void SpawnCars()
    {
        float x, y, z;
        x = gameObject.transform.position.x;
        y = gameObject.transform.position.y;
        z = gameObject.transform.position.z;
        for (int i = 0; i < raceMembers.Count; i++)
        {
            if (i != raceMembers.Count - 1)
            {
                if ((i + 1) % 2 == 0)
                {
                    x = gameObject.transform.position.x + 2.5f;
                    Instantiate(raceMembers[i], new Vector3(x, y, z), Quaternion.identity);
                    z = gameObject.transform.position.z - (8 * ((i+1)/2));
                }
                else
                {
                    x = gameObject.transform.position.x - 2.5f;
                    Instantiate(raceMembers[i], new Vector3(x, y, z), Quaternion.identity);
                }
            }
            else
            {
                if ((i + 1) % 2 == 0)
                {
                    x = gameObject.transform.position.x + 2.5f;
                    raceMembers[i].transform.position = new Vector3(x, y, z);
                    z = gameObject.transform.position.z - (5 * ((i+1)/2));
                }
                else
                {
                    x = gameObject.transform.position.x - 2.5f;
                    raceMembers[i].transform.position = new Vector3(x, y, z);
                }
            }
        }
    }

    void ChangeSphereRadius(float radius)
    {
        this.gameObject.GetComponent<SphereCollider>().radius = radius;
    }

    void IncreaseRadius()
    {
        if (this.gameObject.GetComponent<SphereCollider>().radius < 2.4f)
        {
            this.gameObject.GetComponent<SphereCollider>().radius += 0.01f;
        }
    }
    void DecreaseRadius()
    {
        this.gameObject.GetComponent<SphereCollider>().radius -= 0.01f;
    }
}