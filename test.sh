#!/bin/bash

sudo apt-get update -y 
sudo apt-get install -y xubuntu-desktop
sudo apt-get install -y firefox
sudo apt-get install -y xrdp
sudo systemctl restart xrdp
sudo service xrdp start
sudo ufw allow 3389
