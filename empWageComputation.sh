#!/bin/sh
echo "<<--------WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM IN MASTER BRANCH-------->>"
#use Case 1-
declare -A array
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
Present=$?
	if(($Present==0))
	then
		echo "Employee is Present!!"
	else
		echo "Employe is Absent!!"
	fi

#UserCase_2
DailyWage()
{
	Wage_per_Hour=20
	FullDay_Hour=8
	Dailywage=$(($FullDay_Hour*$Wage_per_Hour))
	return $Dailywage
	echo "Employee Daily Wage is Rs $Dailywage of $FullDay_Hour hours"
}

#UserCase_3
PartTime_Wage()
{
	PartTime_Hour=4
	Wages_Per_Hour=20
	PartTime=$(($PartTime_Hour*$Wages_Per_Hour))
	return $PartTime
	echo "Part Time Wage Of a Employee is Rs $PartTime."
}

#UserCase_4
echo "<<---------Employee Daily / Partime Wages:--------->>"
echo -e "1.DailyWages \n2.Partime Wage"
echo "Enter one Option:"
read option
case $option in
	1)
		DailyWage
		echo Employee Daily Wage is Rs $?
		echo " "
		;;
	2)
		PartTime_Wage
		echo Part Time Wage Of a Employee is Rs $?
		echo " "
		;;
	*)
		echo "Enter a Valid option"
		;;
esac

#UserCase_5
MonthlyWage()
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
echo "<<----------Monthly Payment Of Employee---------->>"
echo -e "1.Monthly DailyWage \n2.Monthly Partime Wage"
echo "Enter one Option:"
read option
case $option in
	1)
		DailyWage
		wages=$?
		echo "Monthly wage of a Full time Employee is Rs" $(($wages*$count))
		echo " "
		;;
	2)
		PartTime_Wage
		wages=$?
		echo "Monthly wage of PartTime employee is Rs" $(($wages*$count))
		echo " "
		;;
	*)
		echo "Enter a Valid option"
		;;
esac
}
MonthlyWage

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

echo "<<----------Conditional Monthly Payment of 100hr/20Days---------->>"
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
		echo "Monthly Payment of 100Hours/20Days of Full Time Employee is Rs" $MonthlyWages
		echo
		;;
	2)
		TotalWorkHour=$((4*$count))
		if(($TotalWorkHour<100 && $count<=20))
		then
			MonthlyWages=$(($TotalWorkHour*20))
		else
			MonthlyWages=$((100*20))
		fi
		echo "Monthly Payment of 100Hours/20Days of PartTime Employee is Rs" $MonthlyWages
		echo 
		;;
esac
}
CondMonthlyWage

#UserCase_7
WorkHour()
{
count=0
        for((i=0; i<20; i++))
	do
		CheckAttendance
		res=$?
		if(($res==0))
		then
			count=$(($count+1))
		fi
	done
	echo "<<--------Total Working Hour Of an Employee-------->>"
	echo -e "1.Full Time employee \n2.Part Time Employee"
	echo "Enter a option"
	read option
		if(($option==1))
		then
			TotalWorkHour=$((8*$count))
		elif(($option==2))
		then
			TotalWorkHour=$((4*$count))
		else
			echo "Enter a Valid option."
		fi
		return $TotalWorkHour
}
WorkHour
echo "Total Working Hour of Employee is $?"
echo 

#UserCase_8
DailyAndTotalWages()
{
	echo "<<---------Daily and Total Wages Of an Employee In a Month!!-------->>"
	echo -e "1.Full Time Employee \n2.Part Time Employee"
	echo "Enter an Option"
	read option
	case $option in
	1)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				DailyWage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	2)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				PartTime_Wage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	esac
		for((i=0; i<20; i++))
		do
			echo -n $((array[$i])) ""
			sum=$(($sum+array[$i]))

		done
			echo
			echo "Sum of Total Wages is Rs" $sum
			echo
}
DailyAndTotalWages

#UserCase_9
DailyAndMonthlyTotalWages()
{
	sum=0
	echo "<<---------Daily, Monthly and Total Wages Of an Employee In a Month!!--------->>"
	echo -e "1.Full Time Employee \n2.Part Time Employee"
	echo "Enter an Option"
	read option
	case $option in
	1)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				DailyWage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	2)
		i=0
		while((i<20))
		do
			CheckAttendance
			res=$?
			if(($res==0))
			then
				PartTime_Wage
				wage=$?
				array[$i]=$wage
			else
				array[$i]=0
			fi
			i=$((i+1))
		done
		;;
	esac
		echo "Daily Wages: "
		for((i=0; i<20; i++))
		do
			if(($((array[$i]))==0 ))
			then
				echo -n "Day $((i+1)) :  Absent "
			else
				echo -n "Day $((i+1)) :  Present "
			fi
			echo $((array[$i])) ""
			sum=$(($sum+array[$i]))

		done
			echo
			echo "Sum of Total Wages is Rs" $sum
}
DailyAndMonthlyTotalWages
