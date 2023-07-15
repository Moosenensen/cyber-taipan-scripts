#regex. posix- extend -regextype find command
#!/bin/bash
#TODO: Fix Find command
echo "Delete Music? [y/n] "
  read response
  if [[ "$response" = "y" ]]; then
    music=1
fi

echo "Delete Photos? "
  read response
  if [[ "$response" = "y" ]]; then
    photos=1
fi

echo "Delete Videos? "
  read response
  if [[ "$response" = "y" ]]; then
    video=1
fi

if [[ "$music" = 1 ]]; then
  cd /home
  # Search for audio files and store them in an array
  audio_files=($(find /home -type f \( -name "*.3gp" -o -name "*.aa" -o -name "*.aac" -o -name "*.aax" -o -name "*.act" -o -name "*.aiff" -o -name "*.alac" -o -name "*.amr" -o -name "*.ape" -o -name "*.au" -o -name "*.awb" -o -name "*.dss" -o -name "*.dvf" -o -name "*.flac" -o -name "*.gsm" -o -name "*.iklax" -o -name "*.ivs" -o -name "*.m4a" -o -name "*.m4b" -o -name "*.m4p" -o -name "*.mmf" -o -name "*.movpkg" -o -name "*.mp3" -o -name "*.mpc" -o -name "*.msv" -o -name "*.nmf" -o -name "*.ogg" -o -name "*.opus" -o -name "*.ra" -o -name "*.raw" -o -name "*.rf64" -o -name "*.sln" -o -name "*.tta" -o -name "*.voc" -o -name "*.vox" -o -name "*.wav" -o -name "*.wma" -o -name "*.wv" -o -name "*.webm" -o -name "*.8svx" -o -name "*.cda" -o -name "*.oga" -o -name "*.mogg" -o -name "*.rm" \))) -not -path "/home/*/snap/*" -not -path "/home/*/.cache/*"


  # Check if any audio files were found
  if [[ ${#audio_files[@]} -eq 0 ]]; then
    echo "No audio files found."
    
  else

    # Display the list of audio files
    echo "Found audio files:"
   for file in "${audio_files[@]}"; do
      echo "$file"
    done

    # Ask for confirmation to delete files
    echo "Do you want to delete these files"
    read response

    if [[ "$response" == [y] ]]; then
      for file in "${audio_files[@]}"; do
        rm $file
      done
    fi
  fi
fi 

if [[ "$photos" = 1 ]]; then
  cd /home
  # Search for audio files and store them in an array
  find /home -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tif" -o -iname "*.tiff" -o -iname "*.ico" -o -iname "*.svg" -o -iname "*.webp" -o -iname "*.raw" -o -iname "*.cr2" -o -iname "*.nef" -o -iname "*.pef" -o -iname "*.arw" -o -iname "*.rw2" -o -iname "*.dng" -o -iname "*.orf" -o -iname "*.srw" -o -iname "*.3fr" -o -iname "*.raf" -o -iname "*.mrw" -o -iname "*.mef" -o -iname "*.psd" -o -iname "*.ai" -o -iname "*.eps" \) ! -path "/home/*/snap/*" ! -path "/home/*/.cache/*"




  # Check if any image files were found
  if [[ ${image_files[@]} -eq 0 ]]; then
    echo "No image files found."
    
  else

    # Display the list of image files
    echo "Found image files:"
   for file in "${image_files[@]}"; do
      echo "$file"
    done

    # Ask for confirmation to delete files
    echo "Do you want to delete these files"
    read response

    if [[ "$response" == [y] ]]; then
      for file in "${image_files[@]}"; do
        rm $file
      done
    fi
  fi
fi

if [[ "$video" = 1 ]]; then
  cd /home
  # Search for video files and store them in an array
  video_files=$(find /home -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.wmv" -o -name "*.flv" -o -name "*.webm" -o -name "*.mpeg" -o -name "*.mpg" -o -name "*.3gp" -o -name "*.ogg" -o -name "*.ogv" -o -name "*.qt" -o -name "*.vob" -o -name "*.m4v" -o -name "*.mp2" -o -name "*.mpv" -o -name "*.mts" -o -name "*.m2ts" -o -name "*.mxf" \)) -not -path "/home/*/snap/*" -not -path "/home/*/.cache/*"



  # Check if any video files were found
  if [[ ${video_files[@]} -eq 0 ]]; then
    echo "No video files found."
    
  else

    # Display the list of video files
    echo "Found imvideoage files:"
   for file in "${video_files[@]}"; do
      echo "$file"
    done

    # Ask for confirmation to delete files
    echo "Do you want to delete these files"
    read response

    if [[ "$response" == [y] ]]; then
      for file in "${video_files[@]}"; do
        rm $file
      done
    fi
  fi
fi
