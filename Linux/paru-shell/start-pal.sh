#!/bin/bash
nowtime=$(date "+%Y-%m-%d %H:%M:%S")
echo "start time：$nowtime"
# 启动应用
su - steam -c "/home/steam/Steam/steamapps/common/PalServer/PalServer.sh"