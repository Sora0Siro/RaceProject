using Assets;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class rotation : MonoBehaviour
{
    //Gear g;
    Image im;
    Image im2;
    //KeyCode lastPressedKey;

    public int rotationDegree;
    public Text SpeedVal;
    double previousSpeedValue = 0;
    /* public Text GearVal;
     public Text ActVal;
     public Text GearSound;
     public AudioSource [] upShift = new AudioSource[7];
     public AudioSource [] downShift = new AudioSource[7];*/

    public float speed_value;


   /*private bool car_is_accelerating = false;
    private int previous_gear = 0;
    private bool sound_is_playing = false;
    private int previousGearType = 0; // 0 downShift 1 UpShift

    private double speedGainValue = 0.3;
    private double speedLostValue = 0.3;

    private int previousStatus = 0;*/

    void Start ()
    {
        im = GetComponent<Image>();
        im2 = GetComponent<Image>();
        im.rectTransform.Rotate(new Vector3(0, 0, 131));
        speed_value = 0.0f;
        //g = new Assets.Gear();
    }
	
	// Update is called once per frame
	void Update ()
    {
        rotating();
        /*if (Input.GetKey(KeyCode.W))
        {
            lastPressedKey = KeyCode.W;
            accelerating();
        }
        else if (Input.GetKey(KeyCode.S))
        {
            lastPressedKey = KeyCode.S;
            //braking();
        }
        else if (!Input.GetKey(KeyCode.W) && lastPressedKey == KeyCode.W)
        {
            slowing();
        }*/
	}

    /*private void accelerating()
    {
        g.type = Status.accelerating;
        if(speed_value < 280)
        {
            speed_value += speedGainValue;
            im.rectTransform.Rotate(new Vector3(0, 0, -(float)speedGainValue));
            SpeedVal.text = "Speed:" + speed_value;

            int tmpGear = g.which_gear((int)speed_value);

            if (previous_gear != tmpGear)
            {
                playSound(tmpGear);
            }
        }
    }*/
    /*private void slowing()
    {
        g.type = Status.slowing;
        if (speed_value > 0)
        {
            speed_value -= speedLostValue;
            im.rectTransform.Rotate(new Vector3(0, 0, (float)speedLostValue));
            SpeedVal.text = "Speed:" + speed_value;

            int tmpGear = g.which_gear((int)speed_value);

            if (previous_gear != tmpGear || Input.GetKeyUp(KeyCode.W))
            {
                playSound(tmpGear);
            }
        }
    }*/

    /*private void playSound(int currentGear)
    {
        // upShift[currentGear]

        // 1-6 gear shifting
        GearVal.text = "Gear:" + currentGear;
        ActVal.text = "Status:" + g.type;
        if ((int)g.type == 1)
        {
            if (previous_gear != 0)
            {
                upShift[previous_gear].Stop();
            }
            upShift[currentGear].Play();
            GearSound.text = "GS: Up: " + currentGear;
            previous_gear = currentGear;
        }
        //6-6-1 gear shifting
        if ((int)g.type == 2)
        {
            //6-6 from accelerating sound to slowing down
            if (previousStatus == 1)
            {
                upShift[previous_gear].Stop();
                upShift[currentGear].Stop();
                downShift[currentGear].Play();
                GearSound.text = "GS: Down: " + currentGear;
            }
            //6-1 gear shifting
            else if (previousStatus == 2)
            {
                downShift[previous_gear].Stop();
                if (currentGear != 0)
                {
                    downShift[currentGear].Play();
                }
                previous_gear = currentGear;
                GearSound.text = "GS: Down: " + currentGear;
            }
        }
        
        
        previousStatus = (int)g.type;
    }*/
    /*private void stopSound(int currentGear)
    {
        if (sound_is_playing)
        {
            upShift[currentGear].Stop();
            sound_is_playing = false;
        }
    }*/
    private void rotating()
    {
        double rotAngle;
        //95 195
        if (speed_value > previousSpeedValue)
        {
            rotAngle = previousSpeedValue - speed_value;
            im.rectTransform.Rotate(new Vector3(0, 0, (float)rotAngle));
        }
        else if (speed_value < previousSpeedValue)
        {
            rotAngle = previousSpeedValue - speed_value;
            im.rectTransform.Rotate(new Vector3(0, 0, (float)rotAngle));
        }
        previousSpeedValue = speed_value;
    }
}