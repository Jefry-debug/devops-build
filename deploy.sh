#!/bin/bash

echo "=============================="
echo "Deploying Application..."
echo "=============================="

docker rm -f react-container 2>/dev/null || true

docker run -d \
  --name react-container \
  -p 80:80 \
  --restart always \
  react-app:latest

if [ $? -eq 0 ]; then
    echo "Application deployed successfully."
else
    echo "Deployment failed!"
    exit 1
fi
