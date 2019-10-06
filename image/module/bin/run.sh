#!/bin/bash

web_ui_up(){
	sudo pihole -a -p << EOF
$PASSWORD
$PASSWORD
EOF
	while ! curl -s http://127.0.0.1/admin/ | grep -q "Pi-hole Admin Console"; do
		sleep 1
	done
	echo "[`hostname -s`] Started"
}

web_ui_up &
/s6-init
echo "[`hostname -s`] Stopped"
