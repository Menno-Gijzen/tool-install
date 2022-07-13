#!/bin/sh
# Updating the system
sudo apt update &&
sudo apt full-upgrade -y &&
# Instalation for regular dipendencies
sudo apt install python3-pip -y &&
# making tools dir and cding there
cd ~ &&
mkdir tools &&
cd tools &&
# Start of tool installation
git clone https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan &&
cd Fast-Google-Dorks-Scan &&
sudo chmod +x FGDS.sh &&
cd .. &&
git clone https://github.com/mxrch/revealin &&
git clone https://github.com/maurosoria/dirsearch.git --depth 1 &&
git clone https://github.com/sc0tfree/mentalist &&
git clone https://github.com/laramies/theHarvester &&
# End of tool instalation
# Downloading bookmarks
cd ~/Desktop &&
git clone https://github.com/mymono1999/sec-bookmarks &&
cd ~ &&

# End message
echo " =======Completed=======
     everything has been installed"