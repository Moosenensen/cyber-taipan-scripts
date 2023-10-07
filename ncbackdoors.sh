#!/bin/bash
if [ -z "$(which netcat)" ]; then
	echo “Netcat is not installed.”
	exit 0 
else
mkdir netcat 
ps aux | grep nc >> netcat/ncinstances.txt # shows all netcat instances
	netstat -tuln | grep nc >> netcat/nclistening.txt # shows all ports that netcat is using 
find / -name "*nc*" -type f >> netcat/potentialncfiles.txt # shows all files with nc 
echo “Created netcat directory and possible netcat files.”
	echo “Remember to also check crontabs for netcat running upon system startup.”
exit 0 
