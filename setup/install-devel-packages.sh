#!/bin/bash

# clang packages
sudo dnf install clang clang-analyzer clang-devel clang-libs gcc-c++ libstdc++-devel

# cppcheck
sudo dnf install cppcheck cppcheck-gui

# protobuf
sudo dnf install protobuf-devel-2.6.1

# cmake
sudo dnf install cmake cmake-gui

# java
sudo dnf install java-1.8.0-openjdk-devel

# go cd
echo "
[gocd]
name     = GoCD YUM Repository
baseurl  = https://download.go.cd
enabled  = 1
gpgcheck = 1
gpgkey   = https://download.go.cd/GOCD-GPG-KEY.asc
" | sudo tee /etc/yum.repos.d/gocd.repo

sudo dnf install go-server go-agent
