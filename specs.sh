#!/bin/bash

echo Where is this runner?

curl -s http://ip-api.com/json|jq

hostname

whoami

echo lsblk

lsblk

echo Rotational disks? $(cat /sys/block/vda/queue/rotational)

echo Installing hdparm

sudo apt update -qy && sudo apt install -qy hdparm

echo Read speed

sudo hdparm -t $(mount |grep "/ "|cut -d " " -f1)

echo Write speed

sync; dd if=/dev/zero of=./tempfile bs=1M count=1024; sync

echo Information on main disk

df -h /

echo Memory info
free -h

echo Total CPUs:
echo CPUs: $(nproc)

echo CPU Model
cat /proc/cpuinfo |grep "model name"

echo Kernel and OS info
uname -a

cat /etc/os-release

echo PATH defined as:
echo $PATH

echo Public IP:

curl -s -L -S https://checkip.amazonaws.com

echo Checking speed

sudo pip install speedtest-cli

speedtest-cli

echo Kernel config:

cat /boot/config-$(uname -r)
