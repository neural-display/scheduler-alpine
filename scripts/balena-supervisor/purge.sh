#!/bin/bash

# POST /v1/purge
# Clears the user application's /data folder.

# Has to be a JSON object with an appId property

curl -X POST --header "Content-Type:application/json" \
    --data '{"appId": <appId>}' \
    "$BALENA_SUPERVISOR_ADDRESS/v1/purge?apikey=$BALENA_SUPERVISOR_API_KEY"