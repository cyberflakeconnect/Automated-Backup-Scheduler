#!/bin/bash
#@cyberflakeconnect

SOURCE_DIR="/app/data"
BACKUP_DIR="/backup/location"
LOG_FILE="/root/logfile.log"
DATE=$(date +%Y%m%d%H%M%S)
BACKUP_NAME="backup-$DATE.tar.gz"

# Create a new backup
echo "Starting backup: $(date)" >> $LOG_FILE
tar -czf $BACKUP_DIR/$BACKUP_NAME $SOURCE_DIR 2>> $LOG_FILE

if [ $? -eq 0 ]; then
  echo "Backup completed successfully: $BACKUP_NAME" >> $LOG_FILE
else
  echo "Backup failed: $BACKUP_NAME" >> $LOG_FILE
fi

# Remove backups older than 7 days
find $BACKUP_DIR -type f -name "backup-*.tar.gz" -mtime +7 -exec rm {} \; >> $LOG_FILE 2>&1

echo "Old backups cleaned up: $(date)" >> $LOG_FILE
