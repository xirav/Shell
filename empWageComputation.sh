#!/bin/bash -x

attendance=$(($RANDOM%2))

if [[ $attendance -eq 1 ]]
then
        echo "The Employee is Present"
else
        echo "The Employee is Absent"
fi

