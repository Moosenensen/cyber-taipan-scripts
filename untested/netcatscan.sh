#!/bin/bash
if [ "$(pwd)" = "$HOME/Desktop" ]; then
	if [ -z "$(which netcat)" ]; then
		echo "Netcat is not installed."
	  echo "Exiting..."
		exit 0 
	else
	  mkdir netcat 
	  ps aux | grep nc >> netcat/ncinstances.txt # shows all netcat instances
		netstat -tuln | grep nc >> netcat/nclistening.txt # shows all ports that netcat is using 
	  find / -name "*nc*" -type f >> netcat/potentialncfiles.txt # shows all files with NC 
	fi
	echo "Created netcat directory and possible netcat files."
	echo "Remember to also check crontabs to ensure netcat does not run during startup"
	echo "also remember that netcat should be removed after backdoors are removed"
	exit 0 
else
echo "This script should be run in the Desktop directory."
exit 0 
