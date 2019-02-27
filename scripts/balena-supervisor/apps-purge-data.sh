#!/bin/bash

# Purge all user data for a given application id

curl -X POST --header "Content-Type:application/json" "$BALENA_SUPERVISOR_ADDRESS/v2/applications/$APPID/purge?apikey=$BALENA_SUPERVISOR_API_KEY"