#!/usr/bin/env python3
import sys
import os

# Add the backend directory to the Python path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'backend'))

try:
    # Import the Flask app from backend
    from app import app
    print("✅ Successfully imported Flask app from backend/app.py")
    print(f"✅ App type: {type(app)}")
    print(f"✅ App name: {app.name}")
except Exception as e:
    print(f"❌ Error importing app: {e}")
    sys.exit(1) 