#!/usr/bin/bash

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