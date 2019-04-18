using Assets;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class rotation : MonoBehaviour
{
    Image im;
    Image im2;

    public int rotationDegree;
    public Text SpeedVal;
    double previousSpeedValue = 0;

    public float speed_value;

    public Rigidbody car;

    void Start ()
    {
        im = GetComponent<Image>();
        im2 = GetComponent<Image>();
        im.rectTransform.Rotate(new Vector3(0, 0, 131));
        speed_value = 0.0f;
    }
	
	void Update ()
    {
        rotating();
	}
    private void rotating()
    {
        speed_value = car.velocity.magnitude;
        double rotAngle;

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
        SpeedVal.text = "" + (int)speed_value;
    }
}