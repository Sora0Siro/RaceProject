using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerStats : MonoBehaviour
{
    public int playerMoney = 1000;
    public Text moneyUI;

    public void SetMoney(int playerMoney)
    {
        this.playerMoney += playerMoney;
    }

    void Update()
    {
        moneyUI.text = Convert.ToString(playerMoney + "$");
    }
}
