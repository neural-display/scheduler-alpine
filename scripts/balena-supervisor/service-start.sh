#!/bin/bash

# Start a service (POST /v2/applications/:appId/start-service)
# Start a service in the application with application id passed in with the url
SERVICE_NAME="my-service"
APPID="YOUR_APP_ID"
curl --header "Content-Type:application/json" \
	"$BALENA_SUPERVISOR_ADDRESS/v2/applications/$APPID/start-service?apikey=$BALENA_SUPERVISOR_API_KEY" \
	-d '{"serviceName": "my-service"}'
