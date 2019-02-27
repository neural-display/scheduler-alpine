#!/bin/bash

curl --header "Content-Type:application/json" "$BALENA_SUPERVISOR_ADDRESS/v2/applications/state?apikey=$BALENA_SUPERVISOR_API_KEY"