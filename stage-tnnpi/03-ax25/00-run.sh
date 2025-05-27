#!/bin/bash -e

# Function to run commands in the chroot environment
run_in_chroot() {
  echo "Running in chroot: $1"
  on_chroot << EOF
$1
EOF
}

# configure firstboot options
install -m 775 files/InstAX25.sh "${ROOTFS_DIR}/usr/local/ax25"


# compile tnn-ax25
echo "compile tnn-ax25"
run_in_chroot "
cd ${ROOTFS_DIR}/usr/local/ax25
sudo chmod a+x InstAX25.sh
sudo ./InstAX25.sh
"