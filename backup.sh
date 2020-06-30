#!/bin/bash
#
## create weekly backup of selected directories 
#

## variables
LOG_LOC="/var/log/mybackup.log"
##

funtion check_loc_dir()
#check for dir list file
{
if [ ! then -s "/backup.dirs.conf" ];
then
echo "Please create a list of directories to backup by creating a backups_dir.conf file in the root directory."
exit 1
fi
}

function check_backup_loc()
if [ ! -s "/backup_loc.conf" ];
then
echo "Please specify the full path of where to send the backup to, by creating the backup_loc.conf file in the root directory."
exit 1
fi
}

function check_cron_schedule()
#check to see if script exists in cron weekly dir to run backup
{
if [ ! -s "/etc/cron.weekly/make_backup" ];
then 
#copy copy script to weekly cron dir
$(sudo cp make_backup.sh/ etc/cron.weekly/make_backup)
echo "The backup schedule has been set to run weekly."
echo "The exact run time is in the /etc/crontab file."
exit 1
fi
}

function perform_backup()
#get backup location
backup_path=$(cat /backup_loc.conf)

echo "Starting backup ..." > $LOC_LOG
#for each dir, archive and compress to backup loc
while read dir_path
do
#get backup dir name
dir_name=$(basename $dir_path)

#create filename for compressed backup
filename=$backup_path$dir_name.tar.gz

#archive dirs and compress archive
$(tar -zcf $filename $dir_path) 2 >> $LOC_LOG

#change ownership of backup files
chown andreac:andreac $filename

echo "Backing up of $dir_name completed." >> $LOC_LOG
done < /backup.dirs.conf

echo "Backup complete at:" : $LOC_LOG
$(date) >> $LOC_LOG
}

check_loc_dir()
check_backup_loc()
check_cron_schedule()
perform_backup()
