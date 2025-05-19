# PacketRadioPi Image Generator 
[![PacketRadioPi CI release](https://github.com/PE1FTL/PacketRadioPi/actions/workflows/release.yml/badge.svg)](https://github.com/PE1FTL/PacketRadioPi/actions/workflows/release.yml)
_Tool zum Erstellen der PacketRadioPi-Images. Basierend auf Raspberry Pi OS Lite-Images von raspberrypi.org_

Dieses Build-Skript verwendet das offizielle Pi-Gen-Build-Skript (https://github.com/RPi-Distro/pi-gen). Es fügt dem Standard-Image-Build von Raspberry Pi OS Lite (früher bekannt als Raspbian Lite) eine benutzerdefinierte Stufe hinzu

## Schnellstart

1. [Download latest release](https://gitea.home.pfeiffer-privat.de/ppfeiffer/PacketRadioPi/releases) *** noch nicht realisiert ***
2. Image auf SD-Karte schreiben
3. Schalten Sie Ihren Pi ein. Nach dem ersten Booten wird er automatisch neu gestartet. Warten Sie nach dem Booten einige Zeit. 
4. Das Standard-SSH-Passwort in diesem vorgefertigten PacketRadioPi-Image lautet 'packetradio'. Der SSH-Dienst startet automatisch.
5. Solange die PacketRadio-Dienste noch unkonfiguriert sind, startet eine Konfigurations-Routine. *** noch nicht realisiert ***
   Nach der erfolgreichen Konfiguration werden die PackeRadioPi-Dienste automatisch gestartet.
6. Weitere Informationen zur Steuerung der Software finden Sie im Repo-Wiki . *** noch nicht realisiert ***
7. Noch Wünsche offen, dann schreiben...... 
8. Have fun!

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



