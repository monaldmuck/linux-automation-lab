#!/bin/bash

SOURCE_DIR="$HOME/scripts"
BACKUP_BASE="$HOME/backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="scripts_backup_$TIMESTAMP"
BACKUP_DEST="$BACKUP_BASE/$BACKUP_NAME"
LOG_FILE="$HOME/backup/backup.log"

mkdir -p "$BACKUP_BASE"

echo "[$(date)] Starting backup..." >> "$LOG_FILE"

if cp -r "$SOURCE_DIR" "$BACKUP_DEST"; then
    echo "[$(date)] Backup successful: $BACKUP_DEST" >> "$LOG_FILE"
    echo "Backup completed successfully: $BACKUP_DEST"
else
    echo "[$(date)] Backup FAILED" >> "$LOG_FILE"
    echo "Backup failed"
    exit 1
fi
