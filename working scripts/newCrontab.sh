#!/bin/bash
for user in $(getent passwd | cut -f1 -d: )
do

# Run as root!
echo $user
cronresults=sudo crontab -u $user -l
echo $cronresults
echo ' '

done
