#/bin/bash
#Author:Rafael Caballero
#Date:Nov. 2014
#Purpose: Used to backup files locally and store remotely .

BACKUPDIR=~/backup
SCRIPTDIR=~/temp2
BACKUPFILE=scripts.backup.`date +%F`
COUNT=`ls $BACKUPDIR/scripts.* | wc -l`
BACKUPHOST=
THRESHOLD=7

if [ $COUNT -le $THRESHOLD ]
then

    tar -czvf $BACKUPDIR/$BACKUPFILE $SCRIPTDIR
    scp $BACKUPDIR/$BACKUPFILE $BACKUPHOST
fi


#END
