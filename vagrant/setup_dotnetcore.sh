#!/usr/bin/env bash

# 1. Install the .NET Version Manager (DNVM
    # 1. Install unzip and curl if you don’t already have them:
    sudo apt-get install -y unzip curl
    # 2. Download and install DNVM:
    curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh

# 2. To install DNX for .NET Core:
    # 1. Install the DNX prerequisites:
    # sudo apt-get install -y libunwind8 gettext libssl-dev libcurl4-openssl-dev zlib1g libicu-dev uuid-dev

    # install dnx via dnvm
    # dnvm upgrade -r coreclr

# 3. To install DNX for Mono:
    # 1. Install Mono via the mono-complete package.
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
    sudo apt-get update
    sudo apt-get install -y mono-complete
    
    # 2. Ensure that the ca-certificates-mono package is also installed as noted in the Mono installation instructions.
    # nothing to be done here
    
    # 3. Use DNVM to install DNX for Mono:
    dnvm upgrade -r mono

# 4. Install libuv
    # 1. To build libuv you should do the following:
    sudo apt-get install -y make automake libtool curl
    curl -sSL https://github.com/libuv/libuv/archive/v1.4.2.tar.gz | sudo tar zxfv - -C /usr/local/src
    cd /usr/local/src/libuv-1.4.2
    sudo sh autogen.sh
    sudo ./configure
    sudo make
    sudo make install
    sudo rm -rf /usr/local/src/libuv-1.4.2 && cd ~/
    sudo ldconfig


# source the variable values 
source $HOME/.bashrc