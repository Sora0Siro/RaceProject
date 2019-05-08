using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

public class BuildRoad : EditorWindow
{
    public GameObject starterPrefab;
    public GameObject prefab;
    public GameObject GameController;
    private RacesManager RM;
    private bool addPoints;
    private bool addRace;
    private bool empty = true;
    private string checkPointsNumber, raceType, prizePool;
    private string[,] checkPoints;
    private string[] coordsNames = new string[] { "X", "Y", "Z" };
    private GameObject[] raceRoute;
    [MenuItem("Window/Race Editor")]

    public static void ShowWindow()
    {
        EditorWindow.GetWindow(typeof(BuildRoad));
    }
    void OnGUI()
    {
        GUIStructure();
        GUILogic();
    }
    void creatFields()
    {
        int n = Convert.ToInt32(checkPointsNumber);
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                checkPoints[i, j] = EditorGUILayout.TextField(coordsNames[j], checkPoints[i, j]);
            }
        }
        addRace = GUILayout.Button("Add Race to the database");
    }
    void GUIStructure()
    {
        GUILayout.Label("Adding new Race", EditorStyles.boldLabel);
        checkPointsNumber = EditorGUILayout.TextField("Number of Points", checkPointsNumber);
        raceType = EditorGUILayout.TextField("Type of the Race", raceType);
        prizePool = EditorGUILayout.TextField("First place prize pool", prizePool);
        addPoints = GUILayout.Button("Add new race points");
    }
    void GUILogic()
    {
        if (!empty)
        {
            creatFields();
        }
        if (addPoints)
        {
            checkPoints = new string[Convert.ToInt32(checkPointsNumber), 3];
            empty = false;
        }
        if (addRace)
        {
            addToDatabase();
            this.Close();
        }
    }
    void addToDatabase()
    {
        int n = Convert.ToInt32(checkPointsNumber);
        GameController = GameObject.Find("GameController");
        RM = GameController.GetComponent<RacesManager>();
        raceRoute = new GameObject[n];
        for (int i = 0; i < n; i++)
        {
            float[] pointCoords = new float[3];
            for (int j = 0; j < 3; j++)
            {
                float.TryParse(checkPoints[i, j], out pointCoords[j]);
            }
            if (i == 0)
            {
                RM.raceStarter.Add(Instantiate(starterPrefab, new Vector3(pointCoords[0], pointCoords[1], pointCoords[2]), Quaternion.identity));
            }
            raceRoute[i] = Instantiate(prefab, new Vector3(pointCoords[0], pointCoords[1], pointCoords[2]), Quaternion.Euler(0, 0, 90));
        }
        RM.AllRaces.Add(new Race(raceRoute, raceType, Convert.ToInt32(prizePool)));
    }
}
