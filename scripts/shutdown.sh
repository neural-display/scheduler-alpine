#!/bin/bash

WORKDIR=/app

LOG_FILE=/data/cron.log
if [ ! -f $LOG_FILE ]; then
	echo "Create log file at '$LOG_FILE'"
	touch $LOG_FILE
fi

echo "Prepare shutdown at [$(date "+%Y-%m-%d %H:%M:%S")]"
echo "Shutdown at [$(date "+%Y-%m-%d %H:%M:%S")]" | tee -a /data/cron.log
bash $WORKDIR/balena-supervisor/device-shutdown.sh