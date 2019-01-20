# NextorBuilder
Build [Nextor](https://github.com/Konamiman/Nextor) (MSX disk operating system) from Linux/OSX using Vagrant and VirtualBox

## Requirements

* [Vagrant](https://www.vagrantup.com): a tool for building and managing virtual machine environments
* [VirtualBox](https://www.virtualbox.org): a free and open-source hosted hypervisor for x86 computers

## How to compile Nextor

From the main directory of this repo run `compile-all.sh`.

For available options:
```console
$ compile-all.sh --help
Use: ./compile-all.sh [-h/--help] | [-f/--fdisk ] | [-n/--nostop]
    -h/--help: show this help
    -f/--fdisk: compile FDISK only
    -n/--nostop: keep VM running
Examples:
    ./compile-all.sh                    # Compile all and stop VM
    ./compile-all.sh -n                 # Do not stop de VM
    ./compile-all.sh -n -f              # Do not stop de VM and compile FDISK only
    ./compile-all.sh --nostop --fdisk   # Same as previous with long options
    ./compile-all.sh --help             # Show help
```

Note that first execution might take a long time because the Windows image will be downloaded

## Why do I need this?

I do not have a Windows machine to compile Nextor and I don't want to install and manage a full GUI
virtual machine. I want to use a Linux terminal to edit the code and try my changes as I normally do.

## How does it work?

I have created a ready made Windows Vagrant image with all the tools needed to compile Nextor.
There's a script called `compile-all.sh` that does the following: (check the [code](https://github.com/xesco/NextorBuilder/blob/master/compile-all.sh) is very simple)

* Check for requirements
* Clone Nextor project from github (if not present)
* Start the Windows VM using Vagrant
* Execute `compile.bat` inside the VM for all of Nextor's modules and tools
* Stop the VM

## Issues & Comments

* I have added a sample output for a successfull compilation as a reference in `output.log`
* To completely delete the Windows image try with: `vagrant destroy`
* Please support Nextor's original developer for his amazing work [here](https://www.patreon.com/konamiman)
* At this moment there is no support for VMWare

## That's it

I know this tool won't be used at all. It's a very small niche of knowledge. But if you happen to encounter ]
this project and find it useful, please let me know! Thanks :)
