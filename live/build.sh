#!/bin/bash

# cd live-boot   && dpkg-buildpackage -d -b -us -uc&&cd .. 
# cd live-build  && dpkg-buildpackage -d -b -us -uc&&cd ..
# cd live-config && dpkg-buildpackage -d -b -us -uc&&cd ..
# cd live-tasks  && dpkg-buildpackage -d -b -us -uc&&cd ..
# cd live-images && dpkg-buildpackage -d -b -us -uc&&cd ..
# cd live-manual && dpkg-buildpackage -d -b -us -uc&&cd ..
# cd live-tools  && dpkg-buildpackage -d -b -us -uc&&cd ..

cd debian-live  && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-manual && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-support && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-tasks && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-tools && dpkg-buildpackage -d -b -us -uc&&cd ..
#cd live-wrapper && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-images && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-build && dpkg-buildpackage -d -b -us -uc&&cd ..
cd live-boot && dpkg-buildpackage -d -b -us -uc&&cd ..
