#!/usr/bin/env zsh
echo "RUNNING $0"
set -e
if [[ ! IS_INSTALLED_VERILATOR ]]; then
    exit
fi

NAME=verilator
URL=https://github.com/verilator/verilator.git

# download
cd /tmp
if [[ ! -d ${NAME} ]]; then
    git clone ${URL} ${NAME}
    cd ${NAME}
    git checkout v4.220
    cd -
else
    echo "WARNING: ${NAME} already exists"
fi

# prerequisition
apt-get install -y \
    git perl python3 make autoconf g++ flex bison ccache \
    libgoogle-perftools-dev numactl perl-doc \
    libfl2 \
    libfl-dev \
    zlibc zlib1g zlib1g-dev \
    gdb \
  && apt-get clean
unset VERILATOR_ROOT

# build and install
cd ${NAME}
autoconf
./configure
make -j4
make install

# test
make test -j4

export IS_INSTALLED_VERILATOR=1
