using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerStats : MonoBehaviour
{
    public int playerMoney = 1000;
    public Text moneyUI;
    public string carName;
    public Vector3 playerPos;
    public GameObject playerCar;
    public GameObject[] cars;


    public void SetMoney(int playerMoney)
    {
        this.playerMoney += playerMoney;
    }

    void Start()
    {
        LoadData(playerMoney, carName);
    }
    public void LoadData(int money, string name)
    {
        carName = name;
        Debug.Log("Load");
        if (playerCar.name != carName)
        {
            playerCar.SetActive(false);
            for(int i=0;i<cars.Length;i++)
            {
                if(cars[i].name == carName)
                {
                    playerCar = cars[i];
                    break;
                }
            }
        }

        if (!playerCar.activeSelf)
        {
            playerCar.SetActive(true);
        }
        playerMoney = money;
        playerCar.transform.position = playerPos;
    }
    void Update()
    {

        playerPos = playerCar.transform.position;
        moneyUI.text = Convert.ToString(playerMoney + "$");
    }
}
