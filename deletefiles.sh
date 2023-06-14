#regex. posix- extend -regextype find command

#!/bin/bash

cd /home
# Search for audio files and store them in an array
audio_files=($(find /home -type f \(-name "*.3gp" -o -name "*.aa" -o -name "*.aac" -o -name "*.aax" -o -name "*.act" -o -name "*.aiff" -o -name "*.alac" -o -name "*.amr" -o -name "*.ape" -o -name "*.au" -o -name "*.awb" -o -name "*.dss" -o -name "*.dvf" -o -name "*.flac" -o -name "*.gsm" -o -name "*.iklax" -o -name "*.ivs" -o -name "*.m4a" -o -name "*.m4b" -o -name "*.m4p" -o -name "*.mmf" -o -name "*.movpkg" -o -name "*.mp3" -o -name "*.mpc" -o -name "*.msv" -o -name "*.nmf" -o -name "*.ogg" -o -name "*.opus" -o -name "*.ra" -o -name "*.raw" -o -name "*.rf64" -o -name "*.sln" -o -name "*.tta" -o -name "*.voc" -o -name "*.vox" -o -name "*.wav" -o -name "*.wma" -o -name "*.wv" -o -name "*.webm" -o -name "*.8svx" -o -name "*.cda" -o -name "*.oga" -o -name "*.mogg" -o -name "*.rm" \)))

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
