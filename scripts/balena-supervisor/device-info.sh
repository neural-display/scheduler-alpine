#!/bin/bash

# Returns the current device state,
# GET /v1/device

curl -X GET --header "Content-Type:application/json" \
    "$BALENA_SUPERVISOR_ADDRESS/v1/device?apikey=$BALENA_SUPERVISOR_API_KEY"