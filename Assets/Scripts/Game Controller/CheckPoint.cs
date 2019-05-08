using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoint : MonoBehaviour
{
    private bool active = true;

    public void setActive(bool active)
    {
        this.active = active;
    }
    public bool getActive()
    {
        return active;
    }
    void Start()
    {
        active = false;
        gameObject.SetActive(false);
    }
    void Update()
    {
    }
    public void OnTriggerEnter(Collider col)
    {
        if(col.tag == "Player")
        {
            active = false;
        }
    }
}
