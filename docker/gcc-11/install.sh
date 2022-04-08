#!/bin/bash

set -e

apt install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt update
apt install gcc-11
