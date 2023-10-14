
#!/bin/bash

# Exclude user "perry" from password change
exclude_user="perry"

# Set a specific temporary password
temp_password="CyberT@1p@n123!"

# Get a list of all users (excluding system users)
users=$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd)

# Loop through each user and set temporary password
for user in $users; do
    if [ "$user" != "$exclude_user" ]; then
        echo "Setting temporary password for user: $user"

        # Set specific temporary password
        echo "$user:$temp_password" | sudo chpasswd

        # Force password change on next login
        sudo chage -d 0 $user

        echo "Password set for $user. They will be prompted to change it on the next login."
        echo "----------------------------------------------"
    else
        echo "Skipping user $exclude_user as per the exclusion rule."
        echo "----------------------------------------------"
    fi
done
