# PacketRadioPi Image Generator 

_Tool zum Erstellen der PacketRadioPi-Images. Basierend auf Raspberry Pi OS Lite-Images von raspberrypi.org_

Dieses Build-Skript verwendet das offizielle Pi-Gen-Build-Skript (https://github.com/RPi-Distro/pi-gen). Es fügt dem Standard-Image-Build von Raspberry Pi OS Lite (früher bekannt als Raspbian Lite) eine benutzerdefinierte Stufe hinzu

## Schnellstart

1. [Download latest release](https://gitea.home.pfeiffer-privat.de/ppfeiffer/PacketRadioPi/releases) *** noch nicht realisiert ***
2. Image auf SD-Karte schreiben
3. Schalten Sie Ihren Pi ein. Nach dem ersten Booten wird er automatisch neu gestartet. Warten Sie nach dem Booten einige Zeit. 
4. Die PackeRadioPi-Dienste werden automatisch gestartet.
5. Weitere Informationen zur Steuerung der Software finden Sie im Repo-Wiki . Das Standard-SSH-Passwort in diesem vorgefertigten PacketRadioPi-Image lautet 'packetradio'. 
7. Have fun!

```
Username: pi
Password: packetradio
```

## Entwicklung

### Erstellen des Images
Stellen Sie sicher, dass Docker auf Ihrem System installiert ist. Außerdem benötigen Sie einen Git-Client. Starten Sie das Skript einfach mit folgendem Aufruf:

```
sudo ./build-tnnpi.sh
```

### Aufräumen
Für die Reinigung des Arbeitsbereichs rufen Sie einfach an

```
sudo ./clean.sh
```
### Build-Ordner
Der Build wird im Ordner abgelegt ```pi-gen/deploy/```

### Anforderungen
Für MacOS:

```
brew install coreutils
```

### Danksagung
* basierend auf [HoneyPi-Build-Raspbian](https://github.com/Honey-Pi/HoneyPi-Build-Raspbian)
* basierend auf [Rasbian Images selbst bauen](https://javan.de/raspbian-images-selbst-bauen/)



