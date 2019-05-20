using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class SaveLoadManager : MonoBehaviour
{
    string filePath;
    RacesManager RM;
    PlayerStats PS;
    ChangeCamera CC;
    RespawnCar RC;
    List<Race> races = new List<Race>();
    private void Start()
    {
        filePath = Application.persistentDataPath + "/save.gamesave";
        RM = GetComponent<RacesManager>();
        PS = GetComponent<PlayerStats>();
        CC = GetComponent<ChangeCamera>();
        RC = GetComponent<RespawnCar>();
        races = RM.getRaces();
    }
    public void SaveGame()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream fs = new FileStream(filePath, FileMode.Create);

        Save save = new Save();
        save.numberOfActiveRaces = RM.numberOfActiveRaces;
        save.playerCar = PS.carName;
        save.playerPos = new Save.Vec3(PS.playerPos.x, PS.playerPos.y, PS.playerPos.z);
        save.playerMoney = PS.playerMoney;

        bf.Serialize(fs, save);
        fs.Close();
    }

    public void LoadGame()
    {
        if (!File.Exists(filePath))
            return;

        BinaryFormatter bf = new BinaryFormatter();
        FileStream fs = new FileStream(filePath, FileMode.Open);

        Save save = new Save();

        save = (Save)bf.Deserialize(fs);
        fs.Close();

        PS.carName = save.playerCar;
        PS.playerPos = new Vector3(save.playerPos.x, save.playerPos.y, save.playerPos.z);
        PS.LoadData(save.playerMoney, save.playerCar);
        CC.LoadCameras();
        RC.LoadSpawns();
    }
}

[System.Serializable]
public class Save
{
    public int numberOfActiveRaces;
    public string playerCar;
    public int playerMoney;
    public Vec3 playerPos;

    [System.Serializable]
    public struct Vec3
    {
       public float x, y, z;
        public Vec3(float x, float y, float z)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }
    }
    [System.Serializable]
    public struct RaceCoords
    {
        public List<Vec3> checkPointsVectors;

        public RaceCoords(List<Vec3> checkPointsVectors)
        {
            this.checkPointsVectors = checkPointsVectors;
        }
    }
}
