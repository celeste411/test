#!/bin/sh

echo "Starting Trading Bot Add-on..."

PROJECT_DIR="/config/QUANTATIVE-PROJECT-BASE-IS-DONE"

cd $PROJECT_DIR || exit 1

echo "Installing dependencies..."
pip install --no-cache-dir -r requirements_pi.txt

echo "Starting bot loop..."

while true
do
    python main.py
    echo "Bot crashed at $(date). Restarting in 5 seconds..."
    sleep 5
done
