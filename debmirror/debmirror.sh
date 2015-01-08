#!/bin/sh
#http://lgallardo.com/en/2012/12/06/como-crear-un-mirror-de-debian-y-ubuntu-con-debmirror/

# Don't touch the user's keyring, have our own instead
#export GNUPGHOME=/home/repo/keyrings/debian

# Architecture (i386, powerpc, amd64, etc.)
arch=amd64

# Section (main,contrib,non-free)
section=main,contrib,non-free

# Release of the system (squeeze,lenny,stable,testing,etc)
release=stable,testing,sid

# Server name, minus the protocol and the path at the end
server=ftp.us.debian.org

# Path from the main server, so http://my.web.server/$dir, Server dependant
inPath=/debian

# Protocol to use for transfer (http, ftp, hftp, rsync)
proto=rsync

# Directory to store the mirror in
outPath=/mnt/mirror/debian

# Start script

debmirror       -a $arch \
                --no-source \
		--md5sums \
		--progress \
		--passive \
		--verbose \
                -s $section \
                -h $server \
                -d $release \
                -r $inPath \
                -e $proto \
                --di-dist=$release \
                --di-arch=$arch \
                --rsync-extra=doc,tools \
                --i18n \
                --getcontents \
                --rsync-options="-aIL --partial --no-motd" \
                $outPath
