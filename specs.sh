#!/bin/bash


hostname

whoami

echo read speed

sudo hdparm -t /dev/sda

echo write speed

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

curl -s -L -S https://checkip.amazonaws.com
