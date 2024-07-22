#!/bin/bash

# Enable automatic exporting of all defined variables
set -o allexport

# Source the .env file to read the environment variables
source "../../.env"

# Disable automatic exporting to avoid unintended exports later in the script
set +o allexport

# Create the Kubernetes secret with the exported environment variables
kubectl create secret generic app-secrets \
  --from-literal=POSTGRES_USER="$POSTGRES_USER" \
  --from-literal=POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
  --from-literal=DD_API_KEY="$DD_API_KEY" \
  --from-literal=DD_APP_KEY="$DD_APP_KEY"
