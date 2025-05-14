# https://javan.de/raspbian-images-selbst-bauen/

# PacketRadioPi Image Generator 

_Tool used to create the PacketRadioPi images. Based on raspberrypi.org Raspberry Pi OS Lite images_

This build script uses the official Pi-Gen build script (https://github.com/RPi-Distro/pi-gen). It adds a custom stage to the default Raspberry Pi OS Lite (previously known as Raspbian Lite) image build.

## Quick start

1. [Download latest release](https://gitea.home.pfeiffer-privat.de/ppfeiffer/PacketRadioPi/releases) *** still to be done
2. Burn image on sd card
3. Power on your Pi, after your first boot it does automatically reboot, wait some time after the boot. 
4. The PackeRadioPi services are automatically starting.
5. More information on controlling the software can be found in the [main repo]( ). The default SSH password in this pre-built PacketRadioPi image is `packetradio`. 
7. Have fun!

```
Username: pi
Password: packetradio
```

## Development

### Build the Image
Be sure that you have installed Docker on your System. You will also need a git client installed.
Just start the script by calling:

```
sudo ./build-honeypi.sh
```

### Clean up
For cleaning up the workspace just call

```
sudo ./clean.sh
```

### Build folder
The build will be placed in the folder ```pi-gen/deploy/```

### Requirements

For MacOS:

```
brew install coreutils
```

## Acknowledgments
* based on [HoneyPi-Build-Raspbian](https://github.com/Honey-Pi/HoneyPi-Build-Raspbian)

