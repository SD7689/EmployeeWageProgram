#!/bin/sh
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM IN MASTER BRANCH"
#use Case 1-
CheckAttendance()
{
    	Attendance=$(($RANDOM%2))
		if(($Attendance<1))
		then
            		return 0
        	else
            		return 1
        	fi
}
CheckAttendance
#UserCase_2
DailyWage()
{
	Wage_per_Hour=20
	FullDay_Hour=8
	Dailywage=$(($FullDay_Hour*$Wage_per_Hour))
	return $Dailywage
	echo "Employee Daily Wage is Rs$Dailywage of $FullDay_Hour hours"
}
#UserCase_3
PartTime_Wage()
{
	PartTime_Hour=4
	Wages_Per_Hour=20
	PartTime=$(($PartTime_Hour*$Wages_Per_Hour))
	return $PartTime
	echo "Part Time Wage Of a Employee is Rs$PartTime."
}
#UserCase_6
CondMonthlyWage()
{
	for((i=0; i<20; i++))
	do
		CheckAttendance
		res=$?
		if(($res==0))
		then
			count=$((count+1))
		fi
	done

echo -e "1. Full Time Employee \n2. Part Time Employee"
echo "Enter one option"
read option
case $option in
	1)
		TotalWorkHour=$((8*$count))
		if(($TotalWorkHour<100 && $count<=20))
		then
			MonthlyWages=$(($TotalWorkHour*20))
		else
			MonthlyWages=$((100*20))
		fi
		echo "Monthly Payment of 100Hours/20Days is Rs"$MonthlyWages
		;;
	2)
		TotalWorkHour=$((4*$count))
		if(($TotalWorkHour<100 && $count<=20))
		then
			MonthlyWages=$(($TotalWorkHour*20))
		else
			MonthlyWages=$((100*20))
		fi
		echo "Monthly Payment of PartTime Employee is Rs"$MonthlyWages
		;;
esac
}
CondMonthlyWage
