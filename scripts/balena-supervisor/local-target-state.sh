#!/bin/bash

# Get current target state (GET /v2/local/target-state)
# Get the current target state
curl "$BALENA_SUPERVISOR_ADDRESS/v2/local/target-state"