#!/bin/bash

sudo yum -y groupinstall Desktop
sudo yum -y install tigervnc-server
sudo yum -y install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd

echo 'VNCSERVERS="1:root"' >> /etc/sysconfig/vncservers
echo 'VNCSERVERARGS[1]="-geometry 1024×600"' >> /etc/sysconfig/vncservers

service vncserver restart
vncserver -kill :1

service vncserver start
service vncserver restart
