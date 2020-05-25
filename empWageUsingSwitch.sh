#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
WORKING_DAYS=20;
MAX_HR_IN_MONTHS=10;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr  -lt  $MAX_HR_IN_MONTHS  &&
        $totalWorkingDays  -lt  $WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        case $empCheck in
        $IS_FULL_TIME) empHrs=8;;
        $IS_PART_TIME) empHrs=4;;
        *)empHrs=0;;
        esac
        totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalWorkingDays*$EMP_RATE_PER_HR));
echo $totalSalary