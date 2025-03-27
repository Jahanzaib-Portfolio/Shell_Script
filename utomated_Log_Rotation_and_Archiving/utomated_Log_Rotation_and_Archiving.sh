#!/bin/bash
log_dir="/var/log/myapp/"
backup_dir="/var/log/myapp/archive/"
mkdir -p "$backup_dir"

# Compress logs
find "$log_dir" -type f -name "*.log" -mtime +1 -exec gzip {} \;

# Move compressed logs
find "$log_dir" -type f -name "*.gz" -exec mv {} "$backup_dir" \;

# Delete logs older than 7 days
find "$backup_dir" -type f -name "*.gz" -mtime +7 -exec rm {} \;

echo "Log rotation complete."
