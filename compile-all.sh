#!/bin/bash

SOURCE="c:\vagrant\Nextor\source"

# check requirements
command -v vagrant    >/dev/null 2>&1 || { echo "Please install Vagrant"; exit 1; }
command -v virtualbox >/dev/null 2>&1 || { echo "Please install VirtualBox"; exit 1; }
command -v git        >/dev/null 2>&1 || { echo "Please install git"; exit 1; }

if [ ! -d ./Nextor ]; then
    echo "Cloning Nextor..."
    git clone git@github.com:Konamiman/Nextor.git
    echo "Applying patch..."
    cd ./Nextor && git apply ../sdcc.patch && cd ..
    echo "done!"
fi

# start image
echo "Starting machine..."
vagrant up
echo "done!"

# build nextor kernel
echo "Building the kernel..."
vagrant winrm --shell cmd --command "cd ${SOURCE}\kernel && compile.bat"
echo "done!"

# build FDISK <= this is done automatically
#echo "Building FDISK..."
#vagrant winrm --shell cmd --command "cd ${SOURCE}\kernel\bank5 && compile.bat"
#echo "done!"

# build command line tools
echo "Building CLI tools..."
vagrant winrm --shell cmd --command "cd ${SOURCE}\tools && compile.bat"
echo "done!"

# build nextor.sys
echo "Building nextor.sys..."
vagrant winrm --shell cmd --command "cd ${SOURCE}\command\msxdos && compile.bat"
echo "done!"

# build command2.com
echo "Building command2.com..."
vagrant winrm --shell cmd --command "cd ${SOURCE}\command\command && compile.bat"
echo "done!"

# stop machine
echo "Stopping Windows machine..."
vagrant suspend
echo "done!"

echo "ALL DONE!"
