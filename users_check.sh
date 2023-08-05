#!/bin/bash

filename="users.txt"

# Check if the file exists in the current directory
if [ ! -f "$filename" ]; then
    echo "File 'users.txt' does not exist. Creating an empty file."
    touch "$filename"
fi

# Check if the file is empty
if [ ! -s "$filename" ]; then
    echo "File 'users.txt' is empty. Please fill in the content and save the file."
    
    # Loop until the file is not empty
    while [ ! -s "$filename" ]; do
        sleep 5  # Wait for 5 seconds before checking again
    done
    
    echo "Thank you for filling in the 'users.txt' file."
fi
