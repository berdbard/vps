#!/bin/bash


yum -y remove sendmail;
yum -y remove httpd;
yum -y remove cyrus-sasl 


service exim stop
chkconfig exim off

sudo yum -y groupinstall Desktop
sudo yum -y install tigervnc-server
sudo yum -y install xorg-x11-fonts-Type1
sudo chkconfig vncserver on
vncpasswd

wget -O  /etc/sysconfig/vncservers --no-check-certificate "https://raw.githubusercontent.com/berdbard/vps/master/vncservers"
chmod +x /etc/sysconfig/vncservers

service vncserver restart
vncserver -kill :1

service vncserver start
service vncserver restart

sudo yum list firefox --showdupli
sudo yum -y install firefox-52.8.0-1.el6.centos 
