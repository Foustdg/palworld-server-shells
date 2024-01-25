#!/bin/bash
# Stop process
PID=`ps -ef|grep PalServer-Linux|grep -v grep|awk '{print $2}'`
if [ -n "$PID" ]
then
kill -9 $PID
echo "stopped time：$nowtime"
fi

nowtime=$(date "+%Y-%m-%d %H:%M:%S")
echo "start time：$nowtime"

su - steam -c "/home/steam/Steam/steamapps/common/PalServer/PalServer.sh" >> /home/steam/Steam/steamapps/common/PalServer/Pal.log