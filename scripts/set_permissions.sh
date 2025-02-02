#!/bin/bash
set -e
set -x

echo "Fixing ownership of the Go application..."
sudo chown ubuntu:ubuntu /home/ubuntu/myapp/myapp || { echo "Failed to change ownership"; exit 1; }

echo "Setting permissions for the Go application..."
sudo chmod +x /home/ubuntu/myapp/myapp || { echo "Failed to set executable permissions"; exit 1; }

echo "Permissions set successfully!"

