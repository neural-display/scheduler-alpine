#!/bin/bash

# Restarts a user application container

curl -X POST --header "Content-Type:application/json" \
    --data '{"appId": <appId>}' \
    "$BALENA_SUPERVISOR_ADDRESS/v1/restart?apikey=$BALENA_SUPERVISOR_API_KEY"