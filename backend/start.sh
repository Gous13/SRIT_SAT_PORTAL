#!/usr/bin/env bash
# exit on error
set -o errexit

python init_db.py
gunicorn app:app --bind 0.0.0.0:$PORT 