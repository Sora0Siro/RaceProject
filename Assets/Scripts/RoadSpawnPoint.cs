using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoadSpawnPoint : MonoBehaviour
{
    public Vector3 roadSpawnPoint;
    public Quaternion roadSpawnQuaternion;
    private float Timer;
    private float maxTimer;
    private Ray ray;
    private RaycastHit roadHit;

    void Start()
    {
        Timer = 0.0f;
        maxTimer = 3.0f;
        ray.origin = transform.position;
        ray.direction = new Vector3(0, -1, 0);
        roadSpawnPoint = transform.position;
        roadSpawnQuaternion = Quaternion.Euler(transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z);
    }

    void Update()
    {
        ray.origin = new Vector3(transform.position.x, transform.position.y + 0.3f,transform.position.z);
        ray.direction = new Vector3(0, -0.1f, 0);
        if (Timer<maxTimer)
        {
            Timer += Time.deltaTime;
        }
        else
        {
            Timer = 0.0f;
            roadSearch();
        }
    }
    public void roadSearch()
    {
        if (Physics.Raycast(ray, out roadHit))
        {
            if (roadHit.collider.tag == "Road")
            {
                //Debug.Log("Road Found!  ");
                roadSpawnPoint = transform.position;
                roadSpawnQuaternion = Quaternion.Euler(transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z);
            }
        }
    }
}
