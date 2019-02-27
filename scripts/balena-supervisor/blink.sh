#!/bin/bash

# Starts a blink pattern on a LED for 15 seconds
curl -X POST --header "Content-Type:application/json" "$BALENA_SUPERVISOR_ADDRESS/v1/blink?apikey=$BALENA_SUPERVISOR_API_KEY"