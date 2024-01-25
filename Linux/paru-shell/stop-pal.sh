#!/bin/bash
PID=`ps -ef|grep PalServer-Linux|grep -v grep|awk '{print $2}'`
if [ -n "$PID" ]
then
kill -9 $PID
echo "stopped time：$nowtime"
fi