#### Shebang and initial Checks
```bash
#!/bin/bash
```
#### Accept Source and Destination as Arguments
```bash
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 source_directory destination_directory"
  exit 1
fi

SOURCE_DIR="$1"
DEST_DIR="$2"
```

- *"$#":* This variable represents the number of arguments passed to the script.
- *-ne 2:* This checks if the number of arguments is not equal to 2.
- *SOURCE_DIR="$1":* This assigns the first argument to the SOURCE_DIR variable.
- *DEST_DIR="$2":* This assigns the second argument to the DEST_DIR variable.

#### Timestamped Backup File Name
```bash
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$DEST_DIR/backup_$TIMESTAMP.tar.gz"
```

- *date +"%Y%m%d%H%M%S":* This generates a timestamp in the format YYYYMMDDHHMMSS.
- *BACKUP_FILE="$DEST_DIR/backup_$TIMESTAMP.tar.gz":* This constructs the backup file name using the destination directory and the timestamp.

#### Create and compress backup
```bash
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .
```

- *tar -czf:* This creates a compressed archive (-c), compresses it with gzip (-z), and specifies the output file name (-f).
- *-C "$SOURCE_DIR":* This changes to the source directory before creating the archive.
- *.: *This includes all files and directories in the source directory.

#### Logging
- *LOG_FILE="backup_script.log":* This sets the log file name.
- *echo "message" | tee -a "$LOG_FILE":* This prints message to both the terminal and appends it to LOG_FILE.
- *if tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .; then ... else ... fi:* This checks if the tar command succeeds and logs the outcome.