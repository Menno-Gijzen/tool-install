#!/bin/sh


# Updating the system
sudo apt update &&
sudo apt full-upgrade -y &&

# Instalation for regular dipendencies
sudo apt install python3-pip -y &&

# ------------------------------------------------------------------ making tools dir and cding there------------------------------------------------------------------ 
cd ~ &&
mkdir tools &&
cd tools &&

# ------------------------------------------------------------------ making OSINT folder in tools------------------------------------------------------------------ 
mkdir osint &&
cd osint &&

# ------------------------------------------------------------------ Start of osint-tool installation------------------------------------------------------------------ 

#Fast google dorks
git clone https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan &&
cd Fast-Google-Dorks-Scan &&
sudo chmod +x FGDS.sh &&
cd ~/tools/osint &&

# Reveailin
git clone https://github.com/mxrch/revealin &&

#harveter
git clone https://github.com/laramies/theHarvester &&

# spiderfoot
git clone https://github.com/smicallef/spiderfoot.git &&
cd spiderfoot &&
pip install -r requirements.txt &&
cd .. &&

# twint
git clone --depth=1 https://github.com/twintproject/twint.git &&
cd twint &&
pip3 install . -r requirements.txt &&
cd .. &&

# gasmask
git clone https://github.com/twelvesec/gasmask &&
cd gasmask &&
sudo pip3 install -r requirements.txt &&
cd .. &&

# email harvester
git clone https://github.com/maldevel/EmailHarvester &&
cd EmailHarvester &&
pip install -r requirements.txt &&
cd .. &&

# Sublist3r
git clone https://github.com/aboul3la/Sublist3r.git &&
cd Sublist3r &&
sudo pip install -r requirements.txt &&
cd .. &&

# Eye Witness
git clone https://github.com/FortyNorthSecurity/EyeWitness &&

# sherlock
git clone https://github.com/sherlock-project/sherlock.git &&
cd sherlock &&
python3 -m pip install -r requirements.txt &&
cd .. &&

# InstagramOSINT
git clone https://github.com/sc1341/InstagramOSINT &&
cd InstagramOSINT &&
pip3 install -r requirements.txt &&
cd .. && 

# shotlooter
sudo apt install libsm6 libxext6 libxrender-dev tesseract-ocr -y &&
git clone https://github.com/utkusen/shotlooter.git &&
cd shotlooter &&
pip3 install -r requirements.txt  &&
cd .. &&

# Dirsearch
git clone https://github.com/maurosoria/dirsearch.git --depth 1 &&

# 007- the bond
git clone https://github.com/Deadshot0x7/007-TheBond &&
cd 007-TheBond &&
sudo pip install -r requirements.txt &&

# ------------------------------------------------------------------ create passwords folder ------------------------------------------------------------------ 
cd ~/tools &&
mkdir passwords &&
cd passwords &&

# mentalist
git clone https://github.com/sc0tfree/mentalist &&

# ------------------------------------------------------------------  creating ddos folder ------------------------------------------------------------------ 
cd ~/tools &&
mkdir ddos &&
cd ddos &&

# ddos ripper
git clone https://github.com/palahsu/DDoS-Ripper.git &&

# ------------------------------------------------------------------  End of tool instalation ------------------------------------------------------------------ 

# Downloading bookmarks
cd ~/Desktop &&
git clone https://github.com/mymono1999/sec-bookmarks &&
cd ~ &&

# installing brave browser
sudo apt install curl &&
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser &&


# End message
echo " =======Completed=======
     everything has been installed"
