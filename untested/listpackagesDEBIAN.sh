#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root."
 	exit 0
fi
if [ "$(pwd)" != "$HOME/Desktop" ]; then
  echo "This script must be run in the desktop directory."
  exit 1
fi

dpkg -l | awk '/ii/ {print $2}' >> installedpackages.txt
# Lists all the installed packages

dpkg --get-selections | grep -E 'install$' | cut -f1 >> manualpackages.txt
# Lists all the packages that are manually installed (not originally part of the system)
