#!/bin/bash

att_interlink(){
        sleep 1
        (socat -d -d pty,link=/etc/ax25/dev/ax25inter1,raw,echo=0 pty,link=/etc/ax25/dev/ax25inter2,raw,echo=0) &
        ret=$!y
        sleep 5
        kissattach /etc/ax25/dev/ax25inter1 $1
        kissattach /etc/ax25/dev/ax25inter2 $2
        kissparms -f n -c 1 -p $1
        kissparms -f n -c 1 -p $2
        echo "AX25-Init: Interlinks $1 und $2 erfolgreich initialisiert..."
}

att_interlink INT1 INT2
