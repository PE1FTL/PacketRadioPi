#!/bin/bash

# install dependencies
sudo apt update
sudo apt install -y curl quilt parted realpath qemu-user-static debootstrap zerofree pxz zip dosfstools bsdtar libcap2-bin grep rsync xz-utils git

# get pi-gen sources
git clone https://github.com/RPi-Distro/pi-gen
cd pi-gen
git fetch && git fetch --tags
#git checkout 2020-02-05-raspbian-buster # Up to image v1.0.8-beta10
#git checkout 2020-12-02-raspbian-buster # Up to image v1.1
git checkout 2023-05-03-raspios-buster # Used for image v1.3
#git checkout 2023-02-21-raspios-bullseye # Used for images after Dec 2023 v1.4
#git checkout 2023-12-05-raspios-bookworm # v1.5.2 - caused issues on Raspi Zero and 5 (rolled back)
#git 2024-03-12-raspios-bullseye # v1.5.3
rm -rf ./stage[345]
cd ..

# copy config
[ -e pi-gen/config ] && rm -R pi-gen/config
cp config pi-gen/config

# copy custom stage
[ -e pi-gen/stage-tnnpi ] && rm -R pi-gen/stage-tnnpi
cp -R stage-tnnpi pi-gen/stage-tnnpi

# only minimalsystem
touch pi-gen/stage2/SKIP_NOOBS pi-gen/stage2/SKIP_IMAGES 
#rm pi-gen/stage2/EXPORT_IMAGE pi-gen/stage2/EXPORT_NOOBS

case "$OSTYPE" in
  darwin*)
	echo "Preparing sed to work with OSX"
	sed -i -e 's/sed -r/sed -E/g' pi-gen/build-docker.sh
	;;
esac

echo "Running build..."
cd pi-gen
#PRESERVE_CONTAINER=0 CONTINUE=0 ./build-docker.sh
sudo CLEAN=1 ./build.sh
#sudo ./build.sh
