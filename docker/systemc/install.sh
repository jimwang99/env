#!/usr/bin/env zsh
echo "RUNNING $0"
set -e
if [[ ! IS_INSTALLED_SYSTEMC ]]; then
    exit
fi

NAME=systemc
URL=https://github.com/accellera-official/systemc.git

# download
cd /tmp
if [[ ! -d ${NAME} ]]; then
    git clone ${URL} ${NAME}
    # cd ${NAME}
    # git checkout release # as of 2022-04-02, release version doesn't work for CMAKE
    # cd -
else
    echo "WARNING: ${NAME} already exists"
fi

# prerequisition
apt-get install -y \
    cmake \
  && apt-get clean

# build and install
cd ${NAME}
mkdir -p build
cd build
cmake .. -DCMAKE_CXX_STANDARD=17
make -j4
make install

export IS_INSTALLED_SYSTEMC=1
