#!/bin/bash

# Stream the logs of the applications containers and the supervisor. 
# The logs come in as NDJSON.

curl "$BALENA_SUPERVISOR_ADDRESS/v2/local/logs"