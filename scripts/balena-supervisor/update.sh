#!/bin/bash

# Triggers an update check on the supervisor. Optionally, forces an update when updates are locked.
# Responds with an empty 204 (No Content) response.

curl -X POST --header "Content-Type:application/json" \
    --data '{"force": true}' \
    "$BALENA_SUPERVISOR_ADDRESS/v1/update?apikey=$BALENA_SUPERVISOR_API_KEY"