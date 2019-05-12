using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PointTrigger : MonoBehaviour
{
    void OnTriggerEnter(Collider coll)
    {
        /*if(coll.tag == "Race AI")
        {
            Debug.Log("+");
            coll.GetComponentInParent<BotsPathFinding>().currentPoint += 1;
            Debug.Log(coll.GetComponentInParent<BotsPathFinding>().currentPoint);
        }*/
    }
}
