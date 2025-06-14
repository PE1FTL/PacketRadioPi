#!/bin/bash
# This script will run the first time the raspberry pi boots.
# It is ran as root.

echo '>>> Starting firstboot.sh'

# resize root partion to possible maximum
echo 'Resizing root partition'

raspi-config nonint do_expand_rootfs

echo 'set memory-split'
raspi-config nonint do_memory_split 16

# Get current date from debian time server
ntpdate 0.debian.pool.ntp.org

reboot
