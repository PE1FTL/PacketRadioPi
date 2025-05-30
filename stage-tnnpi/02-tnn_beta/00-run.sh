#!/bin/bash -e

# Function to run commands in the chroot environment
run_in_chroot() {
  echo "Running in chroot: $1"
  on_chroot << EOF
$1
EOF
}

# Download and set up tnn-beta
echo "Cloning tnn repository"
if [ ! -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/tnn-beta" ]; then
  run_in_chroot "
  git clone https://github.com/PE1FTL/tnn179cb55beta.git /home/${FIRST_USER_NAME}/tnn-beta
  chmod -R 775 /home/${FIRST_USER_NAME}/tnn-beta
  chown -R pi:pi /home/${FIRST_USER_NAME}/tnn-beta
  "
else
  echo "tnn repository already exists, skipping clone."
fi

# compile tnn-beta
echo "compile tnn-beta"
run_in_chroot "
cd /home/${FIRST_USER_NAME}/tnn-beta
make baseinstall
"

# set baseconfig
echo "set base config"
install -m 775 files/tnn.ini "${ROOTFS_DIR}/usr/local/tnn/tnn.ini"
