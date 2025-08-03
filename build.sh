#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Installing Node.js dependencies..."
cd frontend
npm install

echo "Building React frontend..."
npm run build
cd ..

echo "Testing wsgi.py import..."
python test_wsgi.py

echo "Build completed successfully!" 