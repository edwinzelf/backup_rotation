# Backup Rotation with remote backup
***
#### Create a cron job which wil run ervery dat at 01.00 :
_0 1 * * * [location of your backup folder]/backups/daily_backup.sh >/dev/null 2>&1_

#### To make rsync work without password
Make sure to generate an id_rsa.pub key.

Make the remote host use this key, by running:

_ssh-copy-id [remotehost]_
