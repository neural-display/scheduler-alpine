#!/bin/bash
echo "[$(date "+%Y-%m-%d %H:%M:%S")] Backlight OFF"
echo -n 1 > /sys/class/backlight/rpi_backlight/bl_power