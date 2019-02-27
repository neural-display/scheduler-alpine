#!/bin/bash

# Responds with a simple "OK", signaling that the supervisor is alive and well.

curl -X GET --header "Content-Type:application/json" "$BALENA_SUPERVISOR_ADDRESS/ping?apikey=$BALENA_SUPERVISOR_API_KEY"