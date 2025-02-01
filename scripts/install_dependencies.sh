#!/bin/bash
set -e

echo "Updating packages and installing dependencies..."
sudo apt update -y
sudo apt install -y golang

echo "Ensuring executable permissions..."
chmod +x /home/ubuntu/myapp/myapp
