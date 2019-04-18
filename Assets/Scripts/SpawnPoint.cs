using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnPoint : MonoBehaviour
{
    private float timer;
    private float maxTime;
    public Vector3 spawnPosition;
    public Quaternion spawnQuaternion;
    void Start()
    {
        timer = 0.0f;
        maxTime = 5.0f;
        spawnPosition = new Vector3(transform.position.x, transform.position.y, transform.position.z);
        spawnQuaternion = Quaternion.Euler(transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, 0);
    }

    
    void Update()
    {
        if(timer<maxTime)
        {
            timer += Time.deltaTime;
        }
        else
        {
            timer = 0;
            spawnPosition = new Vector3(transform.position.x, transform.position.y + 1.0f, transform.position.z);
            spawnQuaternion = Quaternion.Euler(transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, 0);
            Debug.Log("Respawn updated");
        }
    }
}
