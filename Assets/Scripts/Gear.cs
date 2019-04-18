using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Assets
{
    public enum Status
    {
        accelerating = 1,
        slowing,
        braking
    }
    public class Gear
    {
        public int gear;
        public Status type { get; set; }

        public int which_gear(int speed)
        {
            if (speed > 0 && speed <= 60)
            {
                return 1;
            }
            else if (speed > 60 && speed <= 120)
            {
                return 2;
            }
            else if (speed > 120 && speed <= 165)
            {
                return 3;
            }
            else if (speed > 165 && speed <= 215)
            {
                return 4;
            }
            else if (speed > 215 && speed <= 245)
            {
                return 5;
            }
            else if (speed > 245 && speed <= 281)
            {
                return 6;
            }
            else return 0;
        }
    }
}