#!/bin/sh
Monthly_Wage()
{
Working_Days = 20
Daily_Wage = 160
Partime_Wage = 120
echo "Monthly Wage of Employe is: Rs$(($Working_Days*$Daily_Wage))"
echo "Monthly Wage of a part Time Employee is: Rs$(($Partime_Wage*$Working_Days))"
}
