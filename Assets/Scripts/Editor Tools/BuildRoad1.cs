/*using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

public class BuildRoad : EditorWindow
{
    private bool addPoints;
    private bool addRace;
    private bool empty = true;
    private string checkPointsNumber, raceType, prizePool;
    private string[,] checkPoints;
    private string[] coordsNames = new string[] { "X", "Y", "Z" };
    StreamReader stream;
    StreamWriter write;
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
            string s = Application.dataPath + "/Races Database.txt";
            addToDatabase(s);
            this.Close();
        }
    }
    void addToDatabase(string path)
    {
        int n = Convert.ToInt32(checkPointsNumber);
        File.AppendAllText(path, checkPointsNumber + " " + raceType + " " + prizePool + '\n');
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                File.AppendAllText(path, checkPoints[i, j] + " ");
            }
            File.AppendAllText(path, "\n");
        }
    }
}*/