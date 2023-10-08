#!/bin/bash
apt list --installed >> installedpackages.txt
# lists all the installed packages
release=$(lsb_release -sc)
curl -s "https://old-releases.ubuntu.com/releases/$release/ubuntu-$release-desktop-amd64.manifest" | cut -f1 | cut -d: -f1 | sort -u >> manualpackages.txt 
# lists all the packages that are manually installed (not originally part of the system)
