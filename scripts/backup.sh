#!/bin/bash

SOURCE="./data"
DEST="./backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $DEST

tar -czf $DEST/backup_$DATE.tar.gz $SOURCE

echo "Backup completed: backup_$DATE.tar.gz"