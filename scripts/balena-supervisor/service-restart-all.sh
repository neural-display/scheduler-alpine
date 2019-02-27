#!/bin/bash

# Restart all services in an application (POST /v2/applications/:appId/restart)
# Restart every service in an application
curl -X POST --header "Content-Type: application/json" "$BALENA_SUPERVISOR_ADDRESS/v2/applications/$APPID/restart?apikey=$BALENA_SUPERVISOR_API_KEY"