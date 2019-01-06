#!/bin/bash

sudo yum groupinstall Desktop
sudo yum install tigervnc-server
sudo yum install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd
echo "VNCSERVERS="1:root"" > /etc/sysconfig/vncservers
echo "VNCSERVERARGS[1]="-geometry 1024×600"" > /etc/sysconfig/vncservers
service vncserver restart
vncserver -kill :1
echo "exec gnome-session &" > .vnc/xstartup
service vncserver start
service vncserver restart
