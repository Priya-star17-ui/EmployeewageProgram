#!/bin/bash -x
isFullTime=1
isPartTime=2
ratePerHour=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
        empWorkingHr=8;
elif [ $isPartTime -eq  $randomCheck ]
then
        empWorkingHr=4;
else
        empWorkingHr=0;
fi
salary=$(($empWorkingHr*$ratePerHour))
echo $salary
