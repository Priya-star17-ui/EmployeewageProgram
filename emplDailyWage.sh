#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
        empRatePerHour=20;
        workingHours=8;
        salary=$(($empRatePerHours*$workingHours))
else
         salary=0;
fi
