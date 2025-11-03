#!/usr/bin/env bash
# Exit on error
set -o errexit

# Create static files directory if it doesn't exist
mkdir -p staticfiles

# Install dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput