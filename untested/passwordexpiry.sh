#!/bin/bash
if [ "$(pwd)" = "$HOME/Desktop" ] && [ -e "users.txt" ]; then
  for i in $(cat users.txt); do
	chage -M 30 $i
	chage -m 3 $i
	passwd -x30 -n3 -w7 $i 
 	usermod -U $i # unlocks the account
  	echo "User $i configured."
  done
cp /etc/login.defs /etc/backuplogin.defs
sed -i '/PASS_MAX_DAYS/s/[0-9]\+/30/' /etc/login.defs
sed -i '/PASS_MIN_DAYS/s/[0-9]\+/3/' /etc/login.defs
sed -i '/PASS_WARN_AGE/s/[0-9]\+/7/' /etc/login.defs
exit 0 
else 
  echo "This script must be run in the Desktop directory and/or with users.txt."
  echo "Exiting..."
exit 0 
