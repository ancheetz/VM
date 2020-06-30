#!/bin/bash/
##function to create backup of indicated directory; compresses and archives file

backup()
{
#specify dir to backup and create archived/zip file
$backup_loc=/home

sudo tar -cvpzf backup.tar.gz $backup_loc
echo "Backup generated at $(date)"
}
