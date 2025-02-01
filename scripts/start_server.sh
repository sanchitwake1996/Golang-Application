#!/bin/bash
set -e

echo "Starting Go application..."
nohup /home/ubuntu/myapp/myapp > /home/ubuntu/myapp/output.log 2>&1 &
echo "Application started successfully!"
