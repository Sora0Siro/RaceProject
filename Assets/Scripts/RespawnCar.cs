using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnCar : MonoBehaviour
{
    public GameObject car;
    public PlayerStats PS;

    public SpawnPoint spawn;
    public RoadSpawnPoint roadSpawn;
    private Transform carTransform;
    private Rigidbody carRigidbody;
    private Quaternion defaultQuaternion;
    private Vector3 spawnPosition;
    private bool respawnActive = false;
    private float Timer;
    void Start()
    {
        PS = GetComponent<PlayerStats>();
        carTransform = car.transform;
        carRigidbody = car.GetComponent<Rigidbody>();
        LoadSpawns();
    }


    void Update()
    {
        if (Input.GetKeyUp(KeyCode.R) && Timer == 0.0f)
        {
            Respawn(spawn.spawnPosition, spawn.spawnQuaternion);
        }
        if ((Input.GetKeyUp(KeyCode.R) && Input.GetKey(KeyCode.LeftControl)) && Timer == 0.0f)
        {
            Respawn(roadSpawn.roadSpawnPoint, roadSpawn.roadSpawnQuaternion);
        }
        RespawnTimer();
    }

    public void RespawnTimer()
    {
        if (respawnActive)
        {
            Timer += Time.deltaTime;
            Debug.Log(Timer);
        }
        if (Timer >= 1.0)
        {
            carRigidbody.constraints = RigidbodyConstraints.None;
            Timer = 0;
            respawnActive = false;
        }
    }
    public void Respawn(Vector3 v, Quaternion q)
    {
        defaultQuaternion = q;
        spawnPosition = v;
        car.SetActive(false);
        car.SetActive(true);
        carTransform.rotation = defaultQuaternion;
        carTransform.position = spawnPosition;
        carRigidbody.constraints = RigidbodyConstraints.FreezeRotationZ;
        respawnActive = true;
    }

    public void LoadSpawns()
    {
        car = PS.playerCar;
        spawn = car.GetComponent<SpawnPoint>();
        roadSpawn = car.GetComponent<RoadSpawnPoint>();
        carTransform = car.transform;
        carRigidbody = car.GetComponent<Rigidbody>();
    }
}
