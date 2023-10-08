#!/bin/bash
if [ "$(pwd)" = "$HOME/Desktop" ] && [ -e "users.txt" ]; then
  for i in users.txt; do
	  chage -M 30 $i
  	chage -m 3 $i
    passwd -x30 -n3 -w7 $i 

else 
  echo "This script must be run in the Desktop directory and/or with users.txt."
  echo "Exiting..."
exit 0 
