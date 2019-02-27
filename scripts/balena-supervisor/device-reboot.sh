#!/bin/bash

# Reboots the device.
# This will first try to stop applications, and fail if there is an update lock. 
# An optional "force" parameter in the body overrides the lock when true 
# (and the lock can also be overridden from the dashboard).

# When successful, responds with 202 accepted and a JSON object:
# {
#     "Data": "OK",
#     "Error": ""
# }

curl -X POST --header "Content-Type:application/json" \
    "$BALENA_SUPERVISOR_ADDRESS/v1/reboot?apikey=$BALENA_SUPERVISOR_API_KEY"