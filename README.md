# NextorBuilder
Build [Nextor](https://github.com/Konamiman/Nextor) (MSX disk operating system) from Linux using Vagrant and VirtualBox

## Requirements

* [Vagrant](https://www.vagrantup.com): a tool for building and managing virtual machine environments
* [VirtualBox](https://www.virtualbox.org): a free and open-source hosted hypervisor for x86 computers

## How to compile Nextor

```console
$ compile-all.sh
```

First execution will take quite a long time as the Windows image will be downloaded

## Why do I need this?

I do not have a Windows machine to compile Nextor and I don't want to install and manage a full GUI
virtual machine. I'd like to use a Linux terminal to edit the code and try my changes as I normally do.

## How does it work?

I have created a ready made Windows Vagrant image with all the tools needed to compile Nextor.
There's a script called **compile-all.sh** that does the following: (check the code, it's very simple)

* Checks for requirements
* Clones Nextor project from github (if not present)
* Starts the Windows VM using Vagrant
* Executes **compile.bat** inside the VM for all of Nextor's modules and tools
* Stops the VM

## Issues & Comments

* There's an error compiling FDISK which I am trying to solve with Nextor's original developer. Meanwhile I am applying
my own patch to solve the problem. That's why there's a **sdcc.patch** file.
* I have added a sample output for a successfull compilation as a reference in **output.log**.
* To completely delete the Windows image try with: *vagrant destroy*

## That's it

I know this tool won't be used at all. It's a very small niche of knowledge. But if you happen to encounter this project
and find it useful, please let me know! Thanks :)
