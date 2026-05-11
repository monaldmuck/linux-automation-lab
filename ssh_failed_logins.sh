#!/bin/bash

LOG_FILE="$HOME/ssh_failed_logins.log"
AUTH_LOG="/var/log/auth.log"
DATE=$(date)

echo "==============================" >> "$LOG_FILE"
echo "SSH Failed Login Report - $DATE" >> "$LOG_FILE"
echo "==============================" >> "$LOG_FILE"

if [ -f "$AUTH_LOG" ]; then
    grep "Failed password" "$AUTH_LOG" | tail -10 >> "$LOG_FILE"
else
    echo "Auth log not found: $AUTH_LOG" >> "$LOG_FILE"
fi

echo "" >> "$LOG_FILE"
echo "Report complete."
