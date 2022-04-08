#!/usr/bin/env zsh

set -e

cd ~/env/docker

./env/install.sh
./cmake/install.sh
./systemc/install.sh
./gtest/install.sh
./glog/install.sh
./verilator/install.sh

