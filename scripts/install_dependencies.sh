#!/bin/bash
set -e
set -x

echo "Updating package lists..."
sudo apt update -y || { echo "Failed to update packages"; exit 1; }

echo "Installing Go..."
sudo apt install -y golang || { echo "Failed to install Go"; exit 1; }

echo "Checking if myapp exists..."
if [ -f "/home/ubuntu/myapp/myapp" ]; then
  echo "Setting executable permissions..."
  chmod +x /home/ubuntu/myapp/myapp || { echo "Failed to set executable permissions"; exit 1; }
else
  echo "Warning: myapp file not found, skipping chmod"
fi

echo "Dependencies installed successfully!"
