#!/bin/bash
WORKDIR=/app
LOG_FILE=/data/cron.log
if [ ! -f $LOG_FILE ]; then
	echo "Create log file at '$LOG_FILE'"
	touch $LOG_FILE
fi

echo "Lich $1"
if [ $1 -eq 0 ]
then
	echo "Do something 1" >> $LOG_FILE
elif [ $1 -eq 1 ]
then
	echo "Do something 2" >> $LOG_FILE
elif [ $1 -eq 2 ]
then
	echo "Do something 3" >> $LOG_FILE
fi
