#!/bin/bash

set -u;

if [ -d "$DATA_DIR/log" ];
then
	 mv -f /var/log "$DATA_DIR";
else
	rm -rf /var/log;
fi;

ln -sf "$DATA_DIR/log" /var/log;

