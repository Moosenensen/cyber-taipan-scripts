#!/bin/bash
current_user=$(whoami) # gets the user who is running the script, sets the variable current_user
awk -F: '$3>=1000{print $1}' /etc/passwd >> current.txt # extracts all current users from the system, moves them to current.txt
sed -i "/$current_user/d" current.txt # removes the current user from this file just in case
for i in $(cat current.txt); do 
echo "$i:CyberTaipan123!" | sudo chpasswd # changes password to 'CyberTaipan123!'
done 
# short script, doesn't use users.txt
