#!/bin/bash

if ["$# -ne 2"]; then 
    echo "Usage: $0 source_directory destination_directory"
    exit 1
fi

SOURCE_DIR = "$1"
DEST_DIR = "$2"
