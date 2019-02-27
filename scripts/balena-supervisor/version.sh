#!/bin/bash

# Returns the supervisor version currently running the device api.

curl "$BALENA_SUPERVISOR_ADDRESS/v2/version?apikey=$BALENA_SUPERVISOR_API_KEY"