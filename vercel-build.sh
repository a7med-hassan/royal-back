#!/bin/bash
echo "Starting build process..."

# Install dependencies
echo "Installing dependencies..."
npm install

# Check if build is successful
if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
    echo "✅ Build completed successfully!"
else
    echo "❌ Build failed!"
    exit 1
fi
