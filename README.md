# backup-script
### Overview
Backup Script is a bash script that creates a compressed, timestamped backup of a sppecified directory and saves it to a destination directory. It logs the backup process and provides error handling to ensure reliable backups

#### Features
- Creates a timestamped backup of the source directory
- Compresses the backup using 'tar' and 'gzip'
- Logs the backup process and any errors
- Supports specifying source and destination directories as arguments

### Usage
1. Clone or download the repository
2. Make the script executable:
```bash
chmod +x backup_script.sh
```
3. Run the script with the source and destination as arguments:
```bash
./backup_script.sh /path/to/source_directory /path/to/destination_directory
```

#### Logging
The script logs its actions to a file named 'backup-script.log' in the current directory. The log includes information about the start and completion of the backup and any errors encountered
