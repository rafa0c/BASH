#/bin/bash
#Author:Rafael Caballero
#Date:Nov. 2014
#Purpose: This Script monitors Internet Connectivity.

SITE="www.google.com"

ping -c 2 $SITE  > /dev/null

if [ $? != 0 ]
then
	echo `date +%F` 
	echo PING failed!
fi

#END
