#!/usr/bin/env zsh

NAME=systemc
URL=https://github.com/accellera-official/systemc.git

# download
cd /tmp
if [[ ! -d ${NAME} ]]; then
    git clone ${URL} ${NAME}
else
    echo "WARNING: ${NAME} already exists"
fi

# prerequisition
apt-get install -y \
    cmake \
  && apt-get clean

# build and install
cd ${NAME}
mkdir build
cd build
cmake .. -DCMAKE_CXX_STANDARD=17 -DCMAKE_BUILD_TYPE=Debug
make -j4
make install

