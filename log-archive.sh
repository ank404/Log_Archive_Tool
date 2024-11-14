#!/bin/bash

# Check if the user provided a directory
if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

# Assign the first argument to a variable
LOG_DIR=$1

# Generate a timestamp for the archive file name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Define the archive file name
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Create an archive of the log directory
tar -czf $ARCHIVE_NAME -C "$LOG_DIR" .

# Define the backup directory
BACKUP_DIR="./log_backups"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Move the archive file to the backup directory
mv "$ARCHIVE_NAME" "$BACKUP_DIR"

# Log the archiving action with date and time
echo "Archived $ARCHIVE_NAME on $(date +"%Y-%m-%d %H:%M:%S")" >> archive_log.txt

echo "Logs have been archived successfully!"
