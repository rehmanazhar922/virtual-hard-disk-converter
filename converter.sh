#!/usr/bin/bash
# channel https://www.youtube.com/channel/UCeLj2WCady6CAvOXxn6xwiQ
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi


echo "virtualbox converter"
echo -n "type format of output: "
read outputf
echo -n "type path of output : "
read output 
echo -n "type source path : "
read source

VBoxManage clonehd $source $output --format $outputf

notify-send "converter" "task completed! thanks to cyber security922"
sleep 2
notify-send "subscribe me" "thanks to cyber security922"

echo "https://www.youtube.com/channel/UCeLj2WCady6CAvOXxn6xwiQ"
