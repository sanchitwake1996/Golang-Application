#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status
set -x  # Print commands for debugging

echo "Updating package lists..."
sudo apt update -y || { echo "Failed to update packages"; exit 1; }

echo "Installing Go..."
sudo apt install -y golang || { echo "Failed to install Go"; exit 1; }

echo "Setting permissions for the Go application..."
chmod +x /home/ubuntu/myapp/myapp || { echo "Failed to set executable permissions"; exit 1; }

echo "Dependencies installed successfully!"
