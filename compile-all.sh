#!/bin/bash

FDISK_ONLY=0
NO_STOP=0
SOURCE="c:\vagrant\Nextor\source"

# check requirements
command -v vagrant    >/dev/null 2>&1 || { echo "Please install Vagrant"; exit 1; }
command -v virtualbox >/dev/null 2>&1 || { echo "Please install VirtualBox"; exit 1; }
command -v git        >/dev/null 2>&1 || { echo "Please install git"; exit 1; }

function display_help() {
    echo "Use: $0 [-h/--help] | [-f/--fdisk ] | [-n/--nostop]"
    echo "	-h/--help: show this help"
    echo "	-f/--fdisk: compile FDISK only"
    echo "	-n/--nostop: keep VM running"
    echo "Examples:"
    echo "	$0                    # Compile all and stop VM"
    echo "	$0 -n                 # Do not stop de VM"
    echo "	$0 -n -f              # Do not stop de VM and compile FDISK only"
    echo "	$0 --nostop --fdisk   # Same as previous with long options"
    echo "	$0 --help             # Show help"
}

while :
do
  case "$1" in
    -h | --help)
    display_help
    exit 0
    ;;
    -f | --fdisk)
    FDISK_ONLY=1
    shift 1
    ;;
    -n | --nostop)
    NO_STOP=1
    shift 1
    ;;
    -*)
    echo "Error: Unknown option: $1" >&2
    exit 1
    ;;
    *)  # No more options
    break
    ;;
  esac
done

if [ ! -d ./Nextor ]; then
    echo "Cloning Nextor..."
    git clone git@github.com:Konamiman/Nextor.git
fi

vagrant status | grep "running" 2>&1 >/dev/null
if [ $? -eq 0 ]; then
    IS_RUNNING=1
else
    IS_RUNNING=0
fi

# start VM (only if it's not running)
if [ $IS_RUNNING -eq 0 ]; then
    echo "Starting machine..."
    vagrant up
    IS_RUNNING=1
    echo "done!"
else
    echo "skip... (Start VM)"
fi

if [ $FDISK_ONLY -eq 1 ]; then
    echo "Compiling FDISK only..."
    vagrant winrm --shell cmd --command "cd ${SOURCE}\kernel\bank5 && compile.bat"
    echo "done!"
else
    # build nextor kernel
    echo "Building the kernel..."
    vagrant winrm --shell cmd --command "cd ${SOURCE}\kernel && compile.bat"
    echo "done!"

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
fi

# stop VM (only if it's running or flag not set)
if [ $IS_RUNNING -eq 1 ] && [ $NO_STOP -eq 0 ]; then
    echo "Stopping VM..."
    vagrant suspend
    IS_RUNNING=0
    echo "done!"
else
    echo "skip...(Stop VM)"
fi

echo "ALL DONE!"
