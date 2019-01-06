#!/bin/bash

sudo yum groupinstall Desktop
sudo yum install tigervnc-server
sudo yum install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd
service vncserver restart
vncserver -kill :1
service vncserver start
service vncserver restart
