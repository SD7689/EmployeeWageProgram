#!/bin/sh
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM IN MASTER BRANCH"
#use Case 1-
CheckAttendance()
{
    Attendance =$(($RANDOM % 2))
		if (($Attendance < 1))
		then
            echo "Employee is present:"

        else
        echo "Employee is Absent:"

        fi
}
CheckAttendance
echo "Daily Employee Wage:"
DailyWage()
{
    Wage_per_Hour = 20
FullDay_Hour = 8
echo "Employee Wage is Rs$(($Wage_per_Hour*$FullDay_Hour)) of $FullDay_Hour hours"
}
PartTime_Wage()
{
PartTime_Hour=4
Wages_Per_Hour=20
echo "Part Time Wage Of a Employee is Rs$(($PartTime_Hour*$Wages_Per_Hour))."
}
PartTime_Wage
