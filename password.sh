#!/bin/bash
awk -F: '$3>=1000{print $1}' /etc/passwd >> current.txt
for i in ($cat current.txt); do
echo "$i:CyberTaipan123!" | sudo chpasswd
done 
# short script, doesn't user users.txt
