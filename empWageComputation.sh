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
