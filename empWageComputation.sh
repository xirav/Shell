#!/bin/bash -x
##this
attendance=$(($RANDOM%2))

if [[ $attendance -eq 1 ]]
then
        echo "The Employee is Present"


EMPLOYEE_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=120


total_working_hours=0
totalWorkingDays=0
totalWage=0
workDonePerDay=0


getWorkDonePerDay(){

	case $1 in
		0) workDonePerDay=$PART_TIME;;
		1) workDonePerDay=$FULL_TIME;;
		*) workDonePerDay=0;;
	esac
	echo $workDonePerDay


}


while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
	((totalWorkingDays++));
	workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)));
	total_working_hours=$((total_working_hours+workDonePerDay));
	tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
	totalWage=$((tempWage+totalWage));
done

echo "total wage" $totalWage
echo "total Days Worked" $totalWorkingDays
echo "total hours done" $total_working_hours


else
        echo "The Employee is Absent"
fi


