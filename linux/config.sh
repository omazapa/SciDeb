lb config \
--architectures amd64 \
--parent-distribution jessie \
--distribution jessie \
--updates false \
--security false \
--archive-areas "main contrib non-free" \
--mirror-bootstrap http://ftp.us.debian.org/debian \
--mirror-binary http://ftp.us.debian.org/debian \
--mirror-chroot http://ftp.us.debian.org/debian \
--mirror-binary-security http://ftp.us.debian.org/debian-security \
--mirror-chroot-security http://ftp.us.debian.org/debian-security \
--parent-mirror-debian-installer http://ftp.us.debian.org/debian \
--mirror-debian-installer http://ftp.us.debian.org/debian \
--parent-debian-installer-distribution jessie \
--debian-installer-distribution jessie \
--parent-mirror-bootstrap http://ftp.us.debian.org/debian \
--parent-mirror-binary http://ftp.us.debian.org/debian \
--parent-mirror-chroot http://ftp.us.debian.org/debian \
--parent-mirror-binary-security http://ftp.us.debian.org/debian-security \
--parent-mirror-chroot-security http://ftp.us.debian.org/debian-security \
--apt-source-archives false \
--hdd-label "Gnu/Linux_SciDeb" \
--iso-application "Gnu/Linux SciDeb" \
--iso-publisher "Gnu/Linux SciDeb Team; http://scideb.org/scideb; scideb@scideb.org" \
--apt-indices false \
--debian-installer true \
--system live \
--mode debian \
--bootappend-live "boot=live components hostname=scideb username=scideb"


##desktop
mkdir -p config/packages-lists/
echo task-kde-desktop > config/package-lists/desktop.list.chroot

echo "task-kde-desktop task-laptop" >> config/package-lists/kde.list.chroot
##--apt-indices false reduce espacio en la imagen(sugerido)

##Password for default user scideb
mkdir -p config/includes.chroot/lib/live/config/
cp ../etc/passwd config/includes.chroot/lib/live/config/

#Bootloaders
cp -r ../etc/bootloaders config/.
