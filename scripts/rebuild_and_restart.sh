#!/bin/bash
set -e
set -x

echo "Rebuilding the Go binary..."
cd /home/ubuntu/myapp
go build -o myapp main.go || { echo "Failed to build the Go app"; exit 1; }

echo "Restarting the myapp service..."
sudo systemctl restart myapp.service || { echo "Failed to restart myapp"; exit 1; }

echo "App successfully restarted with the latest changes."
