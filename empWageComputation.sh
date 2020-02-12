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
