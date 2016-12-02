for i in $(ls | grep -v update.sh | grep -v build.sh); do cd $i;git pull;cd ..; done
