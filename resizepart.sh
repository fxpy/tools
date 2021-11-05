#!/bin/bash

exists()
{
  command -v "$1" >/dev/null 2>&1
}

if exists growpart; then
        echo ''
else
  sudo apt install growpart -y
fi

echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "Auto expand disk size by fxpy"
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'

df -h
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "Which partition you want to expand? Enter /dev/sda NUMBER." 
read -p "Example: for /dev/sda2 enter 2: " PART_NUM
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'

growpart /dev/sda $PART_NUM
resize2fs /dev/sda$PART_NUM

df -h

echo ''
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "Your partition /dev/sda"$PART_NUM "resized"
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
