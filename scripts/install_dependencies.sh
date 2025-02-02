echo "Checking if myapp exists..."
if [ -f "/home/ubuntu/myapp/myapp" ]; then
  echo "Fixing ownership of myapp..."
  sudo chown ubuntu:ubuntu /home/ubuntu/myapp/myapp || { echo "Failed to change ownership"; exit 1; }
  
  echo "Removing immutable attribute (if exists)..."
  sudo chattr -i /home/ubuntu/myapp/myapp || echo "No immutable attribute set"

  echo "Setting executable permissions..."
  sudo chmod +x /home/ubuntu/myapp/myapp || { echo "Failed to set executable permissions"; exit 1; }
else
  echo "Warning: myapp file not found, skipping chmod"
fi
