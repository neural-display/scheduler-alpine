#!/bin/bash

WORKDIR=/app
# Default to UTC if no TZ env variable is set
echo "Setting time zone to ${TZ}"
echo "$(date)"

# turn on/off screen at defined time
if [ "$ENABLE_BACKLIGHT_TIMER" == "1" ]
then
  echo "[Enable] Backlight Timer"
  (crontab -l; echo "${BACKLIGHT_ON:-0 8 * * *} $WORKDIR/backlight_on.sh") | crontab -
  (crontab -l; echo "${BACKLIGHT_OFF:-0 22 * * *} $WORKDIR/backlight_off.sh") | crontab -
fi

# Shutdown at 15:25 as default
if [ "$ENABLE_SHUTDOWN_TIMER" == "1" ]
then
  echo "[Enable] Shutdown Timer"
  (crontab -l; echo "${SHUTDOWN_AT:-15 22 * * *} $WORKDIR/shutdown.sh") | crontab -
fi

# Ping to server every minute as default
if [ "$ENABLE_PING" == "1" ]
then
echo "[Enable] Ping"
  (crontab -l; echo "${PING_INTERVAL:-*/5 * * * *} $WORKDIR/ping.sh") | crontab -
fi

# Save log every minutes as default
if [ "$ENABLE_LOG" == "1" ]
then
  echo "[Enable] Log"
  (crontab -l; echo "${LOG_INTERVAL:-*/15 * * * *} $WORKDIR/log.sh") | crontab -
fi

# echo "Scheduled Info"

# # Lich off thu 2
(crontab -l; echo "0 9 * * MON $WORKDIR/schedule-info.sh" 0) | crontab -

# # Lich 2 Cuoi tuan 
(crontab -l; echo "30 18 * * * $WORKDIR/schedule-info.sh" 1) | crontab -

# # Lich 3 Trong Tuan 
(crontab -l; echo "40 18 * * * $WORKDIR/schedule-info.sh" 2) | crontab -

# Start cron in foreground
crond -f