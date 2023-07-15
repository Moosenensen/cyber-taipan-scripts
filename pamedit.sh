#!/bin/bash 
# SECTION 0
# CREATING BACKUPS
mkdir backups
cp /etc/login.defs backups/loginBACKUPS.defs
cp /etc/pam.d/common-password backups/common-passwordBACKUPS 
# SECTION 0.1 
# CHECKING THE DIRECTORY 
current_directory=$(basename "$(pwd)")
if ["$current_directory" != "Desktop"]; then 
  echo "Run this script in the desktop directory."
  exit 0 
fi 
# SECTION 1
# CHANGES PASS_MAX_DAYS TO 30
w="30";file="/etc/login.defs";f="7"
l=$(grep -n "PASS_MAX_DAYS" "$file" | cut -d':' -f1 | tail -n 1)
sed -i "${l}s/[0-9]\+/$w/" "$file"
echo "PASS_MAX_DAYS changed to 30."
# SECTION 2
# CHANGES PASS_MIN_DAYS TO 7
h=$(grep -n "PASS_MIN_DAYS" "$file" | cut -d':' -f1 | tail -n 1)
sed -i "${h}s/[0-9]\+/$f/" "$file"
echo "PASS_MIN_DAYS changed to 7."
# SECTION 3
# EDITING THE COMMON-PASSWORD FILE
sed -i "s/minlen//g ; s/minclass//g ; s/maxrepeat//g ; s/maxclassrepeat//g ; s/lcredit//g ; s/ucredit//g ; s/dcredit//g ; s/ocredit//g ; s/difok//g ; s/remember//g" /etc/pam.d/common-password #deleting all the current stuff
sed -i 's/[[:space:]]*$//' /etc/pam.d/common-password
