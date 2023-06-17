#regex. posix- extend -regextype find command
#!/bin/bash

echo "Delete Music? [y/n] "
read response
if [["$response" == "y"]]; then
music=True
fi
echo "Delete Photos? "

echo "Delete Videos? "



cd /home
# Search for audio files and store them in an array
audio_files=($(find . -type f \( -name "*.mp3" -o -name "*.flac" -o -name "*.wav" -o -name "*.ogg" \)))

# Check if any audio files were found
if [[ ${#audio_files[@]} -eq 0 ]]; then
  echo "No audio files found."
  exit 0
fi

# Display the list of audio files
echo "Found audio files:"
for file in "${audio_files[@]}"; do
  echo "$file"
done

# Ask for confirmation to delete files
echo
read -p "Do you want to delete these files" response

if [[ "$response" == [y] ]]; then
    for file in "${audio_files[@]}"; do
  rm $file
done
fi