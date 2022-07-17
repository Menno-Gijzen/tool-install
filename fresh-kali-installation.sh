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

#Fast google dorks
git clone https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan &&
cd Fast-Google-Dorks-Scan &&
sudo chmod +x FGDS.sh &&
cd ~/tools &&

# Reveailin
git clone https://github.com/mxrch/revealin &&

# Dirsearch
git clone https://github.com/maurosoria/dirsearch.git --depth 1 &&

# mentalist
git clone https://github.com/sc0tfree/mentalist &&

#harveter
git clone https://github.com/laramies/theHarvester &&

# ddos ripper
git clone https://github.com/palahsu/DDoS-Ripper.git &&

# 007- the bond
git clone https://github.com/Deadshot0x7/007-TheBond &&
cd 007-TheBond &&
sudo pip install -r requirements.txt &&
cd ~/tools &&

# onion search
git clone https://github.com/megadose/OnionSearch.git &&
cd OnionSearch/ && 
sudo python3 setup.py install &&
cd ~/tools && 

# mr. sherlock
git clone https://github.com/Lucksi/Mr.Holmes &&
cd Mr.Holmes &&
sudo chmod +x install.sh &&
sudo ./install.sh &&

# da profiler
git clone https://github.com/TheRealDalunacrobate/DaProfiler.git && 
cd DaProfiler && 
pip install -r requirements.txt && 

# End of tool instalation

# Downloading bookmarks
cd ~/Desktop &&
git clone https://github.com/mymono1999/sec-bookmarks &&
cd ~ &&

# End message
echo " =======Completed=======
     everything has been installed"