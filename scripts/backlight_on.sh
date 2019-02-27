#!/bin/bash
echo "[$(date "+%Y-%m-%d %H:%M:%S")] Backlight ON"
echo -n 0 > /sys/class/backlight/rpi_backlight/bl_power