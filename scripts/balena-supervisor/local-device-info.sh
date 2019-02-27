#!/bin/bash

# Get the architecture and device type of the device.

curl "$BALENA_SUPERVISOR_ADDRESS/v2/local/device-info"