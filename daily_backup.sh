#!/bin/bash
BACKUP_DIR=/home/homeassistant/backups
FILES_DIR=$HOME/.homeassistant

tar -cvzf $BACKUP_DIR/incoming/archive.tgz "$FILES_DIR"

# Run backup rotate
cd $BACKUP_DIR || exit
bash backup.sh
