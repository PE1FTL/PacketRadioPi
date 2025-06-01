#!/bin/bash -e

# Function to run commands in the chroot environment
run_in_chroot() {
  echo "Running in chroot: $1"
  on_chroot << EOF
$1
EOF
}

# configure options
#install -d "${ROOTFS_DIR}/usr/local/ax25"
#install -m 775 files/InstAX25.sh "${ROOTFS_DIR}/usr/local/ax25/InstAX25.sh"
install -m 775 files/ax25_interlink.sh "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/ax25_interlink.sh"
install -m 775 files/axports "${ROOTFS_DIR}/etc/ax25/axports"

# compile tnn-ax25
#echo "compile tnn-ax25"
#run_in_chroot "
#cd /usr/local/ax25
#./InstAX25.sh
#ln -s /usr/local/etc/ax25 /etc/ax25
#ln -s /usr/local/var/ax25 /var/ax25
#"
