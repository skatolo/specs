#!/bin/bash

lsblk

echo Rotational disks? $(cat /sys/block/vda/queue/rotational)

echo Installing hdparm

sudo apt update -qqqqy && sudo apt install -qqqqy hdparm

echo Read speed

sudo hdparm -t $(mount |grep "/ "|cut -d " " -f1)

echo Write speed

sync;

sudo dmesg

time dd if=/dev/zero of=./tempfile bs=1M count=1024 conv=fdatasync

rm ./tempfile

# curl -i https://192.168.128.1:5000/v2/_catalog

# echo $DEBIAN_FRONTEND

# # /usr/bin/which python3
# # echo "which python3" $?

# # /usr/bin/which python
# # echo "which python" $?

# echo OS:
# sudo cat /etc/os-release

# # df -h /
# # lsblk

# # echo "Machine ID: $(sudo cat /etc/machine-id)"
# # echo "DBUS machine ID: $(sudo cat /var/lib/dbus/machine-id)"

# # sudo rm -rf /var/lib/dbus/machine-id
# # sudo systemd-machine-id-setup

# # echo "Machine ID: $(sudo cat /etc/machine-id)"
# # echo "DBUS machine ID: $(sudo cat /var/lib/dbus/machine-id)"

# # sudo dbus-uuidgen --ensure=/etc/machine-id

# # echo "Machine ID: $(sudo cat /etc/machine-id)"
# # echo "DBUS machine ID: $(sudo cat /var/lib/dbus/machine-id)"

# # echo What was the start-time of the system image?

# sudo systemd-analyze critical-chain

# sudo systemd-analyze

# sudo systemd-analyze blame

# sudo systemctl list-jobs

# # echo Where is this runner?

# # curl -s http://ip-api.com/json|jq

# # echo Hostname: $(hostname)

# # echo Whoami: $(whoami)

# echo lsblk

# lsblk

# echo Rotational disks? $(cat /sys/block/vda/queue/rotational)

# echo Installing hdparm

# sudo apt update -qqqy && sudo apt install -qqqy hdparm

# echo Read speed

# sudo hdparm -t $(mount |grep "/ "|cut -d " " -f1)

# echo Write speed

# sync; dd if=/dev/zero of=./tempfile bs=1M count=1024; sync

# echo Information on main disk

# df -h /

# # echo Memory info
# # free -h

# # echo Total CPUs:
# # echo CPUs: $(nproc)

# # echo CPU Model
# # cat /proc/cpuinfo |grep "model name"

# # echo Kernel and OS info
# # uname -a

# # cat /etc/os-release

# # echo PATH defined as:
# # echo $PATH

# # echo Public IP:

# # curl -s -L -S https://checkip.amazonaws.com

# # #echo Checking speed
# # # sudo pip install speedtest-cli
# # # speedtest-cli

# docker pull ubuntu:latest

# sudo journalctl -u mount-runner.service
