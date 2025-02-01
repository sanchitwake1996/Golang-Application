#!/bin/bash
set -e

echo "Stopping any running Go application..."
pkill -f myapp || echo "No process found"
echo "Application stopped!"
