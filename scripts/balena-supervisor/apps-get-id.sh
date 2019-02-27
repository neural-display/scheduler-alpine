#!/bin/bash

# Get the application ID
# note that you will need jq and curl inside your container
APPNAME=$1
APPID=$(curl --header "Content-Type:application/json" "$BALENA_SUPERVISOR_ADDRESS/v2/applications/state?apikey=$BALENA_SUPERVISOR_API_KEY" | jq ".$APPNAME.appId")
echo "APPID: $APPID"