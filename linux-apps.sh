#!/bin/bash

sudo apt dist-upgrade
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386

wget -O ~/adobe.deb ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb

dpkg -i AdbeRdr9.5.5-1_i386linux_enu.deb

sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update

sudo apt install snapd

sudo apt install vlc
sudo apt install vscode
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


sudo add-apt-repository ppa:slgobinath/gcalendar
sudo apt update
sudo apt install gcalendar

sudo nano /etc/default/grub
echo'keep replace quiet splash with profile'
