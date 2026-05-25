#!/bin/bash

# Nginx Config Backup Script
# Backs up Nginx config files daily with timestamp and compression

TIMESTAMP=$(date +%F_%H-%M-%S)
BACKUP_DIR="/home/haseeb/nginx-backups"
BACKUP_FILE="nginx-config-backup_$TIMESTAMP.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create compressed backup
tar -czf $BACKUP_DIR/$BACKUP_FILE /etc/nginx/

echo "Backup completed: $BACKUP_DIR/$BACKUP_FILE"
