#!/bin/bash

# Restart a service (POST /v2/applications/:appId/restart-service)
# Restart a service in the application
SERVICE_NAME="my-service"
APPID="YOUR_APP_ID"
curl --header "Content-Type:application/json" \
	"$BALENA_SUPERVISOR_ADDRESS/v2/applications/$APPID/restart-service?apikey=$BALENA_SUPERVISOR_API_KEY" \
	-d '{"serviceName": "my-service"}'