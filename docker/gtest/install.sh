#!/usr/bin/env zsh
echo "RUNNING $0"
set -e
if [[ ! IS_INSTALLED_GTEST ]]; then
    exit
fi

NAME=googletest
URL=https://github.com/google/googletest.git

# download
cd /tmp
if [[ ! -d ${NAME} ]]; then
    git clone ${URL} ${NAME}
    cd ${NAME}
    git checkout release-1.11.0
    cd -
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

# test
make mytest
make test
cd ..
rm -rf build

export IS_INSTALLED_GTEST=1
