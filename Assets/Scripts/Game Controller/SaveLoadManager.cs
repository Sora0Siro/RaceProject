using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class SaveLoadManager : MonoBehaviour
{
    string filePath;
    RacesManager RM;
    List<Race> races = new List<Race>();
    private void Start()
    {
        filePath = Application.persistentDataPath + "/save.gamesave";
        RM = GetComponent<RacesManager>();
        races = RM.getRaces();
    }
    public void SaveGame()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream fs = new FileStream(filePath, FileMode.Create);

        Save save = new Save();
        save.numberOfActiveRaces = RM.numberOfActiveRaces;
        save.SaveCheckPoints(races);

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

        int i = 0;
        RM.numberOfActiveRaces = save.numberOfActiveRaces;
        foreach(var race in save.RaceData)
        {
            races[i].LoadRaces(race);
            i++;
        }
    }
}

[System.Serializable]
public class Save
{
    public int numberOfActiveRaces;

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
    public List<RaceCoords> RaceData = new List<RaceCoords>();

    public void SaveCheckPoints(List<Race> races)
    {
        foreach(var r in races)
        {
            GameObject[] concretRace = r.getRace();
            List<Vec3> checkPoints = new List<Vec3>();
            for(int i=0;i<concretRace.Length;i++)
            {
                checkPoints.Add(new Vec3(concretRace[i].transform.position.x, concretRace[i].transform.position.y, concretRace[i].transform.position.z));
            }
            RaceData.Add(new RaceCoords(checkPoints));
        }
    }
}
