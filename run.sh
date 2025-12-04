#!/bin/bash

# =======================================
#  Generic Bot Runner
#  This file starts your bot safely.
# =======================================

# Path to your bot script (Python example)
BOT_SCRIPT="bot.py"

# Log file
LOGFILE="bot.log"

echo "Starting bot..."
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Bot started" >> "$LOGFILE"

# Run in a loop (auto-restart if it crashes)
while true
do
    python3 "$BOT_SCRIPT" >> "$LOGFILE" 2>&1
    echo "Bot crashed or stopped. Restarting in 3 seconds..."
    sleep 3
done