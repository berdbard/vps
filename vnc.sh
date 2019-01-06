#!/bin/bash

sudo yum -y groupinstall Desktop
sudo yum -y install tigervnc-server
sudo yum -y install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd

service vncserver restart
vncserver -kill :1

service vncserver start
service vncserver restart
