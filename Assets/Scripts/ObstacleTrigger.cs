using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleTrigger : MonoBehaviour
{
    public bool triggered = false;

    private void OnTriggerEnter(Collider col)
    {
        if(col.tag!="Player")
        {
            triggered = true;
            Debug.Log(triggered + "  " + transform.name);
        }
    }
    private void OnTriggerExit(Collider col)
    {
        if(col.tag!="Player")
        {
            triggered = false;
        }
    }
}
