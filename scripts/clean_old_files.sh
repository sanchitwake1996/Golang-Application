#!/bin/bash
set -e
set -x

echo "Cleaning up old files..."
rm -rf /home/ubuntu/myapp/* || { echo "Failed to clean old files"; exit 1; }

echo "Old files removed successfully!"
