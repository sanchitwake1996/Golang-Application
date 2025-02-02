#!/bin/bash
set -e
set -x

echo "Setting permissions for the Go application..."
chmod +x /home/ubuntu/myapp/myapp || { echo "Failed to set executable permissions"; exit 1; }

echo "Permissions set successfully!"
