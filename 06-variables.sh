#!/bin/bash

starttime=$(date +%s)

echo " script executed at : $starttime"
 sleep 10
endtime=$(date +%s)
TotalTime=$(($endtime-$starttime))
echo "script excecuted in :$TotalTime "

