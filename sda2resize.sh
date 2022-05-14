#!/bin/bash

exists()
{
  command -v "$1" >/dev/null 2>&1
}

if exists growpart; then
        echo ''
else
  sudo apt install cloud-guest-utils -y
fi

echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "Auto expand disk size by fxpy"
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'

df -h
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "/dev/sda2 will be resized to 100% 
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'

growpart /dev/sda2
resize2fs /dev/sda2

df -h

echo ''
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
echo "Your partition /dev/sda2 resized successfully!"
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
