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
#UserCase_2
DailyWage()
{
Wage_per_Hour=20
FullDay_Hour=8
echo "Employee Daily Wage is Rs$(($Wage_per_Hour*$FullDay_Hour)) of $FullDay_Hour hours"
}
#UserCase_3
PartTime_Wage()
{
PartTime_Hour=4
Wages_Per_Hour=20
echo "Part Time Wage Of a Employee is Rs$(($PartTime_Hour*$Wages_Per_Hour))."
}
#Switch Statement
echo "1.DailyWages \n 2.Partime Wage"
echo "Enter one Option:"
read option
case $option in
	1)
		DailyWage
		;;
	2)
		PartTimeWage
		;;
	*)
		echo "Enter a Valid option"
		;;
esac


