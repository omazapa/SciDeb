lb config \
--architectures amd64 \
--parent-distribution sid \
--distribution sid \
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
--parent-debian-installer-distribution sid \
--debian-installer-distribution sid \
--parent-mirror-bootstrap http://ftp.us.debian.org/debian \
--parent-mirror-binary http://ftp.us.debian.org/debian \
--parent-mirror-chroot http://ftp.us.debian.org/debian \
--parent-mirror-binary-security http://ftp.us.debian.org/debian-security \
--parent-mirror-chroot-security http://ftp.us.debian.org/debian-security \
--apt-source-archives false \
--hdd-label "Gnu/SciDeb" \
--iso-application "Gnu/SciDeb" \
--iso-publisher "Gnu/SciDeb Team; http://c3.itm.edu.co/scideb; scideb@c3.itm.edu.co" \
--apt-indices false \
--debian-installer true \
--system live \
--mode debian



##--apt-indices false reduce espacio en la imagen(sugerido)

