#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
MAX_HRS_IN_MONTH=4
NUM_WORKING_DAYS=20

totalEmpHrs=0
totalWorkingDays=0

declare -A dailyWage

function getWorkHrs()
{
        local $empCheck=$1
        case $empCheck in
        $IS_FULL_TIME)empHrs=8;;
        $IS_PARK_TIME)empHrs=4;;
        *)empHrs=0;;
        esac
        echo $empHrs
 }

function getWage() {
        local empHrs=$1
        echo $(($empHrs*$EMP_RATE_PER_HRS))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$( getWorkHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        dailyWage["Day"  $totalWorkingDays]="$( getWage $empHrs
)"
done

        salary=$(( $totalEmpHrs * $EMP_RATE_PER_HRS ))
        echo "${dailyWage[@]}"
        echo "${!dailyWage[@]}"
