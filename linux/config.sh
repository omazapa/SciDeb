lb config \
--architectures amd64 \
--parent-distribution sid \
--distribution sid \
--updates false \
--security false \
--archive-areas "main contrib non-free" \
--mirror-bootstrap http://gfif.udea.edu.co/debian \
--mirror-binary http://gfif.udea.edu.co/debian \
--mirror-chroot http://gfif.udea.edu.co/debian \
--mirror-binary-security http://gfif.udea.edu.co/debian-security \
--mirror-chroot-security http://gfif.udea.edu.co/debian-security \
--parent-mirror-debian-installer http://ftp.us.debian.org/debian \
--mirror-debian-installer http://ftp.us.debian.org/debian \
--parent-debian-installer-distribution sid \
--debian-installer-distribution sid \
--parent-mirror-bootstrap http://gfif.udea.edu.co/debian \
--parent-mirror-binary http://gfif.udea.edu.co/debian \
--parent-mirror-chroot http://gfif.udea.edu.co/debian \
--parent-mirror-binary-security http://gfif.udea.edu.co/debian-security \
--parent-mirror-chroot-security http://gfif.udea.edu.co/debian-security \
--apt-source-archives false \
--hdd-label "Gnu/Linux_SciDeb" \
--iso-application "Gnu/Linux SciDeb" \
--iso-publisher "Gnu/Linux SciDeb Team; http://scideb.org/scideb; scideb@scideb.org" \
--apt-indices false \
--debian-installer live \
--bootappend-live "boot=live components hostname=scideb username=scideb"

##desktop
mkdir -p config/packages-lists/
echo task-kde-desktop > config/package-lists/desktop.list.chroot

##--apt-indices false reduce espacio en la imagen(sugerido)

##Password for default user scideb
mkdir -p config/includes.chroot/lib/live/config/
cp ../etc/passwd config/includes.chroot/lib/live/config/

#Bootloaders
cp -r ../etc/bootloaders config/.
