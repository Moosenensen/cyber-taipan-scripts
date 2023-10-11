#!/bin/bash
for user in $(getent passwd | cut -f1 -d: )
do

echo $user
echo sudo crontab -u $user -l
echo ' '

done
