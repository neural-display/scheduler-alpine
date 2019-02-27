#!/bin/bash
WORKDIR=/app
echo "[$(date "+%Y-%m-%d %H:%M:%S")] Ping"
LOG_FILE=/data/ping.log
if [ ! -f $LOG_FILE ]; then
	echo "Create log file at '$LOG_FILE'"
	touch $LOG_FILE
fi

curl --retry 3 https://hc-ping.com/b205e922-0af4-4069-8093-6b198e685b73 >> $LOG_FILE;echo " - Done at $(/bin/date)" >> $LOG_FILE