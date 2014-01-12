#!/bin/bash

mirror_path=$(cat /etc/apt/mirror.list | grep mirror_path | gawk -F" " '{print $3}' | head -n 1)

##############################################################
#Descargar archivos conctens de amd64 para stable/testing/sid#
##############################################################
########
#Stable#
########
wget -N  http://ftp.us.debian.org/debian/dists/stable/main/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/stable/main/

wget -N  http://ftp.us.debian.org/debian/dists/stable/contrib/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/stable/contrib/

wget -N  http://ftp.us.debian.org/debian/dists/stable/non-free/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/stable/non-free/

#########
#Testing#
#########
wget -N  http://ftp.us.debian.org/debian/dists/testing/main/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/testing/main/

wget -N  http://ftp.us.debian.org/debian/dists/testing/contrib/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/testing/contrib/

wget -N  http://ftp.us.debian.org/debian/dists/testing/non-free/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/testing/non-free/

#####
#Sid#
#####
wget -N  http://ftp.us.debian.org/debian/dists/sid/main/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/sid/main/

wget -N  http://ftp.us.debian.org/debian/dists/sid/contrib/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/sid/contrib/

wget -N  http://ftp.us.debian.org/debian/dists/sid/non-free/Contents-amd64.gz -P $mirror_path/ftp.us.debian.org/debian/dists/sid/non-free/
