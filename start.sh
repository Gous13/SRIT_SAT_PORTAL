#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Starting Flask application..."

# Check if frontend build exists, if not build it
if [ ! -d "frontend/build" ]; then
    echo "Frontend build not found, building React app..."
    cd frontend
    npm install
    npm run build
    cd ..
fi

cd backend
python init_db.py
cd ..

gunicorn wsgi:app --bind 0.0.0.0:$PORT 