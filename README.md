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

## Why do you need this?

I do not have a Windows machine to compile Nextor and I don't want to install and manage a full GUI
virtual machine. I'd like to use a Linux terminal to edit the code and try my changes as I normally do.

## How does it work?

I have created a ready made Windows Server 2012 Vagrant image with all the tools needed to compile Nextor.
There's a script called **compile-all.sh** that does the following: (check the code, it's very simple)

* Checks for requirements
* Clones Nextor project from github (if not present)
* Starts the Windows VM using Vagrant
* Executes **compile.bat** inside the VM to compile all the pieces that form Nextor
* Stops the VM

## Issues

This project is WIP. There's an error compiling FDISK which I am trying to solve with the original Nextor developer.
Meanwhile I am applying a patch that I have created to solve the problem. That's the reason for the file **sdcc.patch**

## That's it

I know this tool won't be used at all. It's a very small niche of knowledge. But if you happen to encounter this
and it's usefull for you, please let me know! Thanks :)

## Sample Output

```console
Cloning Nextor...
Cloning into 'Nextor'...
Applying patch...
done!
Starting machine...
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'xesco/Win2012_Nextor' is up to date...
==> default: Resuming suspended VM...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: WinRM address: 127.0.0.1:55985
    default: WinRM username: vagrant
    default: WinRM execution_time_limit: PT2H
    default: WinRM transport: negotiate
==> default: Machine booted and ready!
==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> default: flag to force provisioning. Provisioners marked to run always will still run.
done!
Building the kernel...
.
****************
***  COMMON  ***
****************
.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.
condasm.inc
macros.inc
const.inc
bank.inc
        4 file(s) copied.

No Fatal error(s)
% Minimum variable offset from IY is -31
% Bottom of fixed data area is address 0B21Eh  
% Size of module "KVAR" is 0 bytes

No Fatal error(s)
% Size of module "DATA" is 0 bytes

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)
% Size of module "DRV" is 740 bytes

No Fatal error(s)
.
****************
***  BANK 0  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
% Size of module "DOSHEAD" is 253 bytes

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)
% Size of hole at 41EFh = 33 bytes %
% Size of hole at 436Ch = 376 bytes %
% Size of hole at 4392h = 4 bytes %
% Size of hole at 4462h = 203 bytes %
% Size of hole at 456Fh = 264 bytes %
% Size of hole at 461Dh = 169 bytes %
% Size of hole at 46BAh = 152 bytes %
% Size of hole at 4720h = 97 bytes %
% Size of hole at 4775h = 3 bytes %
% Size of hole at 477Dh = 3 bytes %
% Size of hole at 4788h = 6 bytes %
% Size of hole at 4793h = 6 bytes %
% Size of hole at 47B2h = 6 bytes %
% Size of hole at 47BEh = 7 bytes %
% Size of hole at 47D1h = 3 bytes %
% Size of INIT = 1968 bytes %
% Size of hole at 4FB8h = 50 bytes %
% Size of hole at 5006h = 20 bytes %
% Size of hole at 501Eh = 19 bytes %
% Size of hole at 504Eh = 29 bytes %
% Size of hole at 5058h = 5 bytes %
% Size of hole at 505Dh = 0 bytes %
% Size of hole at 509Fh = 23 bytes %
% Size of hole at 50A9h = 5 bytes %
% Size of hole at 50C4h = 19 bytes %
% Size of hole at 50C8h = 0 bytes %
% Size of hole at 50D5h = 8 bytes %
% Size of hole at 50E0h = 6 bytes %
% Size of hole at 5183h = 158 bytes %
% Size of hole at 535Dh = 126 bytes %
% Size of hole at 53A7h = 34 bytes %
% Size of hole at 543Ch = 26 bytes %
% Size of hole at 5445h = 4 bytes %
% Size of hole at 544Eh = 4 bytes %
% Size of hole at 5454h = 1 bytes %
% Size of hole at 5462h = 9 bytes %
% Size of hole at 5465h = 0 bytes %
% Size of hole at 546Eh = 4 bytes %
% Size of hole at 5474h = 1 bytes %
% Size of hole at 553Ch = 195 bytes %
% Size of hole at 5552h = 17 bytes %
% Size of hole at 55DBh = 132 bytes %
% Size of hole at 55E6h = 6 bytes %
% Size of hole at 55FFh = 6 bytes %

No Fatal error(s)

No Fatal error(s)
% DSKBASIC = 1455 %

No Fatal error(s)
% Size of module "DOSBOOT" is 435 bytes

No Fatal error(s)
% Size of module "BDOS" is 986 bytes

No Fatal error(s)
% Size of module "RAMDRV" is 458 bytes

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	4000	8000	<16384>

26838 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004000
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 13
SymToEqus 1.0 - (c) 2008 by Nestor Soriano
SymToEqus 1.0 - (c) 2008 by Nestor Soriano
.
****************
***  BANK 1  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
The system cannot find the file specified.

No Fatal error(s)
% Size of page-3 RAM code is 1169 bytes
% Size of module "DOSINIT" is 2264 bytes

No Fatal error(s)
% Size of module "MAPINIT" is 755 bytes

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global CHGBNK

Data	40FF	8000	<16129>

28181 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 000040FF
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = AD
.
****************
***  BANK 2  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
% Size of module "KINIT" is 989 bytes

No Fatal error(s)
% Size of module "CHAR" is 1517 bytes

No Fatal error(s)
% Size of module "DEV" is 238 bytes

No Fatal error(s)
% Size of module "KBIOS" is 304 bytes

No Fatal error(s)
% Size of module "MISC" is 1191 bytes

No Fatal error(s)
% Size of module "TIME" is 386 bytes

No Fatal error(s)
% Size of module "SEG" is 285 bytes

No Fatal error(s)
% Size of module "PATH" is 1398 bytes

No Fatal error(s)
% Size of module "FIND" is 1031 bytes

No Fatal error(s)
% Size of module "DIR" is 264 bytes

No Fatal error(s)
% Size of module "HANDLES" is 1579 bytes

No Fatal error(s)
% Size of module "DEL" is 551 bytes

No Fatal error(s)
% Size of module "RW" is 635 bytes

No Fatal error(s)
% Size of module "FILES" is 1059 bytes

No Fatal error(s)
% Size of module "BUF" is 588 bytes

No Fatal error(s)
% Size of module "FAT" is 719 bytes

No Fatal error(s)
% Size of module "VAL" is 3079 bytes

No Fatal error(s)
% Size of module "ERR" is 222 bytes

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global CHGBNK

Data	40FF	8000	<16129>

12418 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 000040FF
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = D5
SymToEqus 1.0 - (c) 2008 by Nestor Soriano
.
****************
***  BANK 3  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
% Size of hole at 04115h-6 = 5 bytes %
% Size of hole at 41EFh = 13 bytes %
% Size of hole at 0456Fh = 2 bytes %
% Size of hole at 5897h = 55 bytes %

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global GWORK
%Mult. Def. Global CHGBNK

Data	4000	8000	<16384>

29141 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004000
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = CB
.
****************
***  BANK 4  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)
% Size of module "JUMP" is 141 bytes
%No END statement
%No END statement

No Fatal error(s)
% Size of module "ENV" is 425 bytes

No Fatal error(s)
% Size of module "CPM" is 1715 bytes

No Fatal error(s)
% Size of module "BKALLOC" is 196 bytes

No Fatal error(s)
% Size of module "PARTIT" is 8439 bytes

No Fatal error(s)
%No END statement
%No END statement

No Fatal error(s)
% Size of module "MISC" is 774 bytes

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global ?C4PBK
%Mult. Def. Global ?CALL4
%Mult. Def. Global CHGBNK

Data	40FF	8000	<16129>

20561 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 000040FF
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 15
SymToEqus 1.0 - (c) 2008 by Nestor Soriano
% Size of module "RAMDRVH" is 15 bytes

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	4080	408F	<   15>

53762 Bytes Free
[0000	408F	   64]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004080
Highest address = 0000408E
Pad Byte        = FF
8-bit Checksum = 88
.
****************
***  BANK 5  ***
****************
.
!!! FDISK is not compiled!
Compiling, please be patient...
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004100
Highest address = 000091A8
Pad Byte        = FF
8-bit Checksum = 51
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004100
Highest address = 0000A428
Pad Byte        = FF
8-bit Checksum = FA
!!! FDISK compiled. Resuming kernel compilation now...
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global CHGBNK

Data	40FF	8000	<16129>

30144 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 000040FF
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 34
.
****************
***  BANK 6  ***
****************
.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft
%Mult. Def. Global CHGBNK

Data	40FF	8000	<16129>

30144 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 000040FF
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 35
.
*******************
***  BASE FILE  ***
*******************
.
bank0\b0.bin
bank1\b1.bin
bank2\b2.bin
bank3\b3.bin
bank4\b4.bin
bank5\b5.bin
bank6\b6.bin
        1 file(s) copied.
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

255+0 records in
255+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

16000+0 records in
16000+0 records out
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

8000+0 records in
8000+0 records out
        1 file(s) copied.
rawwrite dd for windows version 0.6beta3.
Written by John Newbigin <jn@it.swin.edu.au>
This program is covered by terms of the GPL Version 2.

        1 file(s) copied.
15+0 records in
15+0 records out
        1 file(s) copied.
.
*****************
***  DRIVERS  ***
*****************
.
.
***
***  Driver: StandaloneASCII16
***
.
..\..\condasm.inc
..\..\macros.inc
..\..\const.inc
..\..\bank.inc
        4 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	4100	4189	<  137>

53675 Bytes Free
[0000	4189	   65]

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	7FD0	8000	<   48>

53755 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004100
Highest address = 00004188
Pad Byte        = FF
8-bit Checksum = BD
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00007FD0
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 2F

ROM file Nextor-2.0.5-beta1.StandaloneASCII16.ROM created successfully.
        1 file(s) copied.
.
***
***  Driver: StandaloneASCII8
***
.
..\..\condasm.inc
..\..\macros.inc
..\..\const.inc
..\..\bank.inc
        4 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	4100	4189	<  137>

53675 Bytes Free
[0000	4189	   65]

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	7FD0	8000	<   48>

53755 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004100
Highest address = 00004188
Pad Byte        = FF
8-bit Checksum = BD
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00007FD0
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 73

ROM file Nextor-2.0.5-beta1.StandaloneASCII8.ROM created successfully.
        1 file(s) copied.
.
***
***  Driver: SunriseIDE
***
.
..\..\condasm.inc
..\..\macros.inc
..\..\const.inc
..\..\bank.inc
        4 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	4100	7FD0	<16080>

37732 Bytes Free
[0000	7FD0	  127]

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	7FD0	8000	<   48>

53755 Bytes Free
[0000	8000	  127]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00004100
Highest address = 00007FCF
Pad Byte        = FF
8-bit Checksum = 03
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00007FD0
Highest address = 00007FFF
Pad Byte        = FF
8-bit Checksum = 9A

ROM file Nextor-2.0.5-beta1.SunriseIDE.ROM created successfully.
        1 file(s) copied.
.
***
***  Driver: MegaFlashROM SD SCC+
***
.

ROM file nextor2.rom created successfully.
        1 file(s) copied.
SjASM Z80 Assembler v0.39g - www.xl2s.tk
Pass 1 complete (0 errors)
Pass 2 complete
Errors: 0
        1 file(s) copied.
.
***************
***  FINAL  ***
***************
.
done!
Building CLI tools...
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)
% Size of module "DATA" is 0 bytes

No Fatal error(s)

No Fatal error(s)
.
***
*** DEVINFO
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	08B8	< 1976>

47113 Bytes Free
[0000	08B8	    8]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000008B7
Pad Byte        = FF
8-bit Checksum = 5B
        1 file(s) copied.
.
***
*** NSYSVER
***
.

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	07A4	< 1700>

47539 Bytes Free
[0000	07A4	    7]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000007A3
Pad Byte        = FF
8-bit Checksum = D8
        1 file(s) copied.
.
***
*** DRIVERS
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	068B	< 1419>

47750 Bytes Free
[0000	068B	    6]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 0000068A
Pad Byte        = FF
8-bit Checksum = 06
        1 file(s) copied.
.
***
*** MAPDRV
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	0D55	< 3157>

45903 Bytes Free
[0000	0D55	   13]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00000D54
Pad Byte        = FF
8-bit Checksum = DC
        1 file(s) copied.
.
***
*** RALLOC
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	07AB	< 1707>

47482 Bytes Free
[0000	07AB	    7]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000007AA
Pad Byte        = FF
8-bit Checksum = D4
        1 file(s) copied.
.
***
*** DELALL
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	0697	< 1431>

47808 Bytes Free
[0000	0697	    6]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00000696
Pad Byte        = FF
8-bit Checksum = FE
        1 file(s) copied.
.
***
*** FASTOUT
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	0607	< 1287>

47962 Bytes Free
[0000	0607	    6]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00000606
Pad Byte        = FF
8-bit Checksum = 43
        1 file(s) copied.
.
***
*** DRVINFO
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	06B2	< 1458>

47701 Bytes Free
[0000	06B2	    6]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000006B1
Pad Byte        = FF
8-bit Checksum = 6E
        1 file(s) copied.
.
***
*** LOCK
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	07CA	< 1738>

47461 Bytes Free
[0000	07CA	    7]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000007C9
Pad Byte        = FF
8-bit Checksum = 35
        1 file(s) copied.
.
***
*** Z80MODE
***
.
%No END statement
%No END statement

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	08D8	< 2008>

47201 Bytes Free
[0000	08D8	    8]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 000008D7
Pad Byte        = FF
8-bit Checksum = F0
        1 file(s) copied.
Could Not Find c:\vagrant\Nextor\source\tools\*.bin
done!
Building nextor.sys...
..\..\kernel\condasm.inc
..\..\kernel\macros.inc
..\..\kernel\const.inc
..\..\kernel\bank.inc
        4 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)
% Size of module "DATA" is 0 bytes

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)
        1 file(s) copied.
% 2 pages of RAM used by variables
% 30 bytes of RAM wasted
% 1942 bytes of code

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	1273	< 4467>

43396 Bytes Free
[0000	1273	   18]
        1 file(s) copied.
% 2 pages of RAM used by variables
% 30 bytes of RAM wasted
% 1968 bytes of code

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	1386	< 4742>

43121 Bytes Free
[0000	1386	   19]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00001272
Pad Byte        = FF
8-bit Checksum = 04
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00001385
Pad Byte        = FF
8-bit Checksum = 7D
Could Not Find c:\vagrant\Nextor\source\command\msxdos\nextor.sys
Could Not Find c:\vagrant\Nextor\source\command\msxdos\nextork.sys
Could Not Find c:\vagrant\Nextor\source\command\msxdos\*.bin
        1 file(s) copied.
        1 file(s) copied.
done!
Building command2.com...
..\..\kernel\condasm.inc
..\..\kernel\macros.inc
..\..\kernel\const.inc
..\..\kernel\bank.inc
        4 file(s) copied.
        1 file(s) copied.
        1 file(s) copied.

No Fatal error(s)
% Size of module "DATA" is 0 bytes

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

No Fatal error(s)

MSX.L-80  1.00  01-Apr-85  (c) 1981,1985 Microsoft

Data	0100	3E5C	<15708>

25571 Bytes Free
[0000	3E5C	   62]
hex2bin v1.0.6, Copyright (C) 1998 Jacques Pelletier
checksum extensions Copyright (C) 2004 Rockwell Automation
improved P.G. 2007

Lowest address  = 00000100
Highest address = 00003E5B
Pad Byte        = FF
8-bit Checksum = 89
Could Not Find c:\vagrant\Nextor\source\command\command\command2.com
Could Not Find c:\vagrant\Nextor\source\command\command\*.bin
        1 file(s) copied.
done!
Stopping Windows machine...
==> default: Saving VM state and suspending execution...
done!
ALL DONE!
```
