#!/bin/bash/
##function to create backup of indicated directory; archives file but does not compress the file

backup()
{
#specify dir to backup and create archived/zip file
$backup_loc=/home

sudo tar -cvpf backup.tar. $backup_loc
echo "Backup generated at $(date)"
}
