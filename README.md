# Backup Rotation with remote backup
***
#### Create a cron job which wil run ervery dat at 01.00 :
_0 1 * * * [location of your backup folder]/backups/daily_backup.sh >/dev/null 2>&1_

### To make rsync work without password
Make sure to generate an id_rsa.pub key.

Make the remote host use this key, by running:

_ssh-copy-id [remotehost]_


## Edit the variables in both .sh files:
### backup.sh
__storage=[location of the backupfolder]__

_example: storage=/home/homeassistant/backups_

__rsync=[ssh string with host and location]__

_example: rsync='admin@x.x.x.x:/volume1/sys/rsync/Backups/hassbian/'_

### daily_bakup.sh
__BACKUP_DIR=[location of the backupfolder]__

_example: BACKUP_DIR=/home/homeassistant/backups_

__FILES_DIR=[location of files to backup]__

_example: FILES_DIR=$HOME/.homeassistant_

