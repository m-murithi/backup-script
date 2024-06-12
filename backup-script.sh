#!/bin/bash

if ["$# -ne 2"]; then 
    echo "Usage: $0 source_directory destination_directory"
    exit 1
fi

SOURCE_DIR = "$1"
DEST_DIR = "$2"

if [! -d "$SOURCE_DIR"]; then
    echo "Source directory $SOURCE_DIR does not exist"
    exit 1
fi

if [! -d "DEST_DIR"]; then
    echo "Destination directory $DEST_DIR does not exist"
    exit 1
fi

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$DEST_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -c "$SOURCE_DIR"