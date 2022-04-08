#!/usr/bin/env zsh
echo "RUNNING $0"
set -e
if [[ ! IS_INSTALLED_CMAKE ]]; then
    exit
fi

VERSION=3.23.0
NAME=cmake-${VERSION}
URL=https://github.com/Kitware/CMake/releases/download/v${VERSION}/${NAME}.tar.gz

# download
cd /tmp
if [[ ! -d ${NAME} ]]; then
    wget ${URL}
    tar xf $(basename ${URL})
else
    echo "WARNING: ${NAME} already exists"
fi

# prerequisition
apt-get install -y \
    libssl-dev \
  && apt-get clean

# build and install
cd ${NAME}
mkdir -p build
cd build
cmake ..
make -j4
make install

export IS_INSTALLED_CMAKE=1
