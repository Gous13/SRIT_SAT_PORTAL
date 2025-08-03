#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Installing Python dependencies..."
pip install -r requirements.txt

echo "Installing backend dependencies..."
cd backend
pip install -r requirements.txt
cd ..

echo "Build completed successfully!" 