using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckpointsManager
{
    private GameObject[] Race;
    private string raceType;
    private int prizePool;

    public GameObject[] getRace()
    {
        return Race;
    }
    public string getType()
    {
        return raceType;
    }
    public int getMoney()
    {
        return prizePool;
    }
    public CheckpointsManager(GameObject[] Race, string raceType, int prizePool)
    {
        this.Race = Race;
        this.raceType = raceType;
        this.prizePool = prizePool;
    }
}
