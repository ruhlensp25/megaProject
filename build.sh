#!/usr/bin/env bash

#Zach edits:
mkdir -p ~/libs
cd ~/libs
wget http://ftp.debian.org/debian/pool/main/libx/libxinerama/libxinerama-dev_1.1.4-2_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libx/libxinerama/libxinerama1_1.1.4-2_amd64.deb
dpkg-deb -x libxinerama-dev_1.1.4-2_amd64.deb libxinerama-dev
dpkg-deb -x libxinerama1_1.1.4-2_amd64.deb libxinerama1
export CMAKE_PREFIX_PATH=$HOME/libs/libxinerama-dev/usr:$CMAKE_PREFIX_PATH
export PKG_CONFIG_PATH=$HOME/libs/libxinerama-dev/usr/lib/pkgconfig:$PKG_CONFIG_PATH
mkdir -p ~/libs
cd ~/libs
wget http://ftp.debian.org/debian/pool/main/libx/libxcursor/libxcursor1_1.2.0-2_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libx/libxcursor/libxcursor-dev_1.2.0-2_amd64.deb
dpkg-deb -x libxcursor1_1.2.0-2_amd64.deb libxcursor1
dpkg-deb -x libxcursor-dev_1.2.0-2_amd64.deb libxcursor-dev
export CMAKE_PREFIX_PATH=$HOME/libs/libxcursor-dev/usr:$CMAKE_PREFIX_PATH
export PKG_CONFIG_PATH=$HOME/libs/libxcursor-dev/usr/lib/pkgconfig:$PKG_CONFIG_PATH
mkdir -p ~/libs
cd ~/libs
wget http://ftp.debian.org/debian/pool/main/libx/libxi/libxi6_1.7.10-1_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libx/libxi/libxi-dev_1.7.10-1_amd64.deb
dpkg-deb -x libxi6_1.7.10-1_amd64.deb libxi6
dpkg-deb -x libxi-dev_1.7.10-1_amd64.deb libxi-dev
export CMAKE_PREFIX_PATH=$HOME/libs/libxi-dev/usr:$CMAKE_PREFIX_PATH
export PKG_CONFIG_PATH=$HOME/libs/libxi-dev/usr/lib/pkgconfig:$PKG_CONFIG_PATH
cd ~/libs
wget http://ftp.debian.org/debian/pool/main/libx/libxfixes/libxfixes3_5.0.3-2_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libx/libxfixes/libxfixes-dev_5.0.3-2_amd64.deb
dpkg-deb -x libxfixes3_5.0.3-2_amd64.deb libxfixes3
dpkg-deb -x libxfixes-dev_5.0.3-2_amd64.deb libxfixes-dev
export CMAKE_PREFIX_PATH=$HOME/libs/libxfixes-dev/usr:$CMAKE_PREFIX_PATH
export PKG_CONFIG_PATH=$HOME/libs/libxfixes-dev/usr/lib/pkgconfig:$PKG_CONFIG_PATH
find ~/libs/libxfixes-dev -name "Xfixes.h"
echo '^ that should be a file '
export C_INCLUDE_PATH=$HOME/libs/libxfixes-dev/usr/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$HOME/libs/libxfixes-dev/usr/include:$CPLUS_INCLUDE_PATH
cd ~/libs
wget http://ftp.debian.org/debian/pool/main/libg/libglvnd/libgl-dev_1.3.2-1_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libg/libglvnd/libgl1_1.3.2-1_amd64.deb
dpkg-deb -x libgl-dev_1.3.2-1_amd64.deb libgl-dev
dpkg-deb -x libgl1_1.3.2-1_amd64.deb libgl1
export C_INCLUDE_PATH=$HOME/libs/libgl-dev/usr/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$HOME/libs/libgl-dev/usr/include:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$HOME/libs/libgl-dev/usr/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/libs/libgl-dev/usr/lib:$LD_LIBRARY_PATH
find ~/libs/libgl-dev -name "gl.h"
echo '^ that should also be a file'
#End Zach edits

# Use this to build box2d on any system with a bash shell
rm -rf build
mkdir build
cd build

# I haven't been able to get Wayland working on WSL but X11 works.
# https://www.glfw.org/docs/latest/compile.html






cmake -DBOX2D_BUILD_DOCS=OFF -DGLFW_BUILD_WAYLAND=OFF ..
cmake --build .
