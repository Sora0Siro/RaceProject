using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;

public class RacesManager : MonoBehaviour
{
    public int numberOfActiveRaces;
    private StreamReader read;
    private List<CheckpointsManager> AllRaces;
    private List<GameObject> raceStarter;
    private GameObject[] curentRace;
    private int curentPoint;
    private int curentRaceStarter;
    private bool raceStarts;
    public GameObject pointPrefab;
    public GameObject raceStartPrefab;
    public GameObject UIDetails;
    public Text raceType;
    public Text prizePool;
    public Text tip;

    bool way = false; //false - to zero // true - to 1
    float step = 0.005f;
    void Start()
    {
        curentPoint = 0;
        raceStarts = false;
        string s = Application.dataPath + "/Races Database.txt";
        AllRaces = new List<CheckpointsManager>();
        raceStarter = new List<GameObject>();
        read = new StreamReader(s);
        while(read.Peek()>=0)
        {
            AddNewRace();
            Debug.Log("Adding new race");
        }
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

        if (UIDetails.active)
        {
            TextBlinking(tip);
        }

    }

    /*Функция вызывающаяся при запуске сцены. Отвечает за считывание из файла данных о гонках.
     * Создает объект гонки и добавляет его в список всех гонок.*/
    public void AddNewRace()
    {
        int n = 0, money = 0;
        string type = "";
        AddRaceDetails(ref n, ref type, ref money);
        GameObject[] bufArr = new GameObject[n];
        
        for (int i = 0; i < n; i++)
        {
            float[] pointCoords = ConvertCoords();
            if (i == 0)
            {
                raceStarter.Add(Instantiate(raceStartPrefab, new Vector3(pointCoords[0], pointCoords[1], pointCoords[2]), Quaternion.identity));
            }
            bufArr[i] = Instantiate(pointPrefab, new Vector3(pointCoords[0], pointCoords[1], pointCoords[2]), Quaternion.Euler(0, 0, 90));
        }
        AllRaces.Add(new CheckpointsManager(bufArr, type, money));
    }
    /*Конвертация координатов из файла из string в float. Не существует обычного Convert.ToFloat
     * и чтобы не загрязнать основной код добавления гони было принято решение вынести конвертацию
     * в отдельную функцию */
    public float[] ConvertCoords()
    {
        float[] pointCoords = new float[3];
        string[] coords = read.ReadLine().Split(' ');
        for (int i = 0; i < 3; i++)
        {
            float.TryParse(coords[i], out pointCoords[i]);
        }
        return pointCoords;
    }
    /*Считывание из файла строки с дополнительными данными по гонке, а именно: количество чекпоинтов,
     * тип гонки и призовые. Решение было принято по той же причине что и с функцией выше. */
    public void AddRaceDetails(ref int checkPointsNumber, ref string raceType, ref int raceMoney)
    {
        string[] details = read.ReadLine().Split(' ');
        checkPointsNumber = Convert.ToInt32(details[0]);
        raceType = details[1];
        raceMoney = Convert.ToInt32(details[2]);
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
            if (raceStarter[i].GetComponent<RaceStarter>().getEnter()) //если игрок нажат кнопку E
            {
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
        Debug.Log("IS UI ACTIVE??: " + UIDetails.active);
        raceType.text = "Race Type: " + AllRaces[n].getType();
        prizePool.text = Convert.ToString("Prize Pool\n 1st: " + prizeCalculation + "$\n 2nd: " + (prizeCalculation / 2) + "$\n 3rd: " + (prizeCalculation / 4) + "$");
    }
    /*Функция отвечающая за активацию конкретной гонки.*/
    public void enterTheRace(int n)
    {
        Debug.Log("All races list" + AllRaces.ToString());
        foreach(CheckpointsManager c in AllRaces)
        {
            Debug.Log("Check manager" + c.ToString());
        }
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

    void TextBlinking(Text sometext)
    {
        Color f = sometext.color;
        if(f.a > 0) f.a -= 0.05f;
        else
        {
            f.a = 1;
        }
        sometext.color = f;
    }
}
