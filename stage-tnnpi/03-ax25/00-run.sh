#!/bin/bash -e

# configure firstboot options
install -m 775 files/InstAX25.sh "${ROOTFS_DIR}/usr/local/ax25"
install -m 775 files/firstboot.sh "${ROOTFS_DIR}/root/firstboot.sh"

on_chroot << EOF
	raspi-config nonint do_memory_split 16
EOF
