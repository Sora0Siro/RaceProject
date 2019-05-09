using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class Race
{
    public GameObject[] raceRoute;
    public string raceType;
    public int prizePool;

    public GameObject[] getRace()
    {
        return raceRoute;
    }
    public string getType()
    {
        return raceType;
    }
    public int getMoney()
    {
        return prizePool;
    }
    public Race(GameObject[] raceRoute, string raceType, int prizePool)
    {
        this.raceRoute = raceRoute;
        this.raceType = raceType;
        this.prizePool = prizePool;
    }

    public void LoadRaces(Save.RaceCoords save)
    {
        int i = 0;
        foreach (var v in save.checkPointsVectors)
        {
            raceRoute[i].transform.position = new Vector3(v.x, v.y, v.z);
            i++;
        }
    }
}

public class RacesManager : MonoBehaviour
{
    private StreamReader read;
    public List<Race> AllRaces = new List<Race>();
    public List<GameObject> raceStarter = new List<GameObject>();
    private GameObject[] curentRace;
    private int curentPoint;
    private int curentRaceStarter;
    private bool raceStarts;
    public int numberOfActiveRaces;
    public GameObject pointPrefab;
    public GameObject raceStartPrefab;
    public GameObject UIDetails;
    public Text raceType;
    public Text prizePool;

    public List<Race> getRaces()
    {
        return AllRaces;
    }
    public void setRaces(List<Race> AllRaces)
    {
        this.AllRaces = AllRaces;
    }
    void Start()
    {
        curentPoint = 0;
        raceStarts = false;
    }

    void Update()
    {
        if (!raceStarts)
        {
            CheckForRaceEntering();
        }
        else
        {
            routeUpdate();
        }
    }

    /* Функция вызывающаяся в Update и отслеживающая начало гонки игроком, а также вызывающая
     * ряд других функций влияющих на активацию гонки.*/
    public void CheckForRaceEntering()
    {
        for (int i = 0; i < raceStarter.Count; i++)
        {
            if (raceStarter[i].GetComponent<RaceStarter>().getDetails())
            {
                showDetails(i);
            }
            else
            {
                UIDetails.SetActive(false);
            }
            if (raceStarter[i].GetComponent<RaceStarter>().getEnter())
            {
                raceStarter[i].GetComponent<RaceStarter>().SpawnCars();
                enterTheRace(i);
                activatorOfRaces(false);
            }
        }
    }
    /*Функция отвечающая за активацию и заполнения UI с данными про гонку. */
    public void showDetails(int n)
    {
        int prizeCalculation = AllRaces[n].getMoney();
        UIDetails.SetActive(true);
        raceType.text = "Race Type: " + AllRaces[n].getType();
        prizePool.text = Convert.ToString("Prize Pool\n 1st: " + prizeCalculation + "$\n 2nd: " + (prizeCalculation / 2) + "$\n 3rd: " + (prizeCalculation / 4) + "$");
    }
    /*Функция отвечающая за активацию конкретной гонки.*/
    public void enterTheRace(int n)
    {
        curentRace = AllRaces[n].getRace();
        curentRace[0].GetComponent<CheckPoint>().gameObject.SetActive(true);
        curentRace[0].GetComponent<CheckPoint>().setActive(true);
        raceStarter[n].GetComponent<RaceStarter>().setEnter(false);
        raceStarter[n].SetActive(false);
        curentRaceStarter = n;
        raceStarts = true;
    }
    /*Функция отвечающая за активацию чекпоинтов для игрока и регистрацию окончания гонки. 
     * А также по окончанию гонки происходит активация остальных точек входа в гонку*/
    public void routeUpdate()
    {
        if (!curentRace[curentPoint].GetComponent<CheckPoint>().getActive())
        {
            curentRace[curentPoint].SetActive(false);
            if ((curentPoint + 1) < curentRace.Length)
            {
                curentPoint++;
                curentRace[curentPoint].GetComponent<CheckPoint>().setActive(true);
                curentRace[curentPoint].SetActive(true);
            }
            else
            {
                raceStarts = false;
                activatorOfRaces(true);
            }
        }
    }
    /* Функция использующаяся для актвицаи/деактивации точек входа в другие гонки*/
    public void activatorOfRaces(bool activate)
    {
        for(int i = 0; i<raceStarter.Count;i++)
        {
            if (i != curentRaceStarter)
            {
                raceStarter[i].SetActive(activate);
            }
        }
    }
}
