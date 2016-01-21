AVR WORKSPACE
=============

Includes:
* AVR-GCC toolchain
* [bootloadHID](https://github.com/ajd4096/bootloadHID)
* [Custom Makefile](SublimeAVR/htw/Makefile)

*optional*
* [Sublime Text 3](http://www.sublimetext.com/3) + [SublimeAVR](https://packagecontrol.io/packages/AVR)
* [C Improved](https://packagecontrol.io/packages/C%20Improved) syntax highlighting
* custom project template

OSX
---
### Get avr-gcc and friends

#### Via homebrew

    ## tap the repository
    $ brew tap osx-cross/avr

    ## to install latest avr-gcc
    $ brew install avr-libc

This will pull the prerequisites `avr-binutils` and `avr-gcc`.

For previous versions of `avr-libc` refer to [these instructions](https://github.com/osx-cross/homebrew-avr).

**This can take a while as you'll have to build the compiler.**

#### Via Arduino IDE

The `Arduino.app` includes all avr-* binaries needed to compile our projects.

`/path/to/Arduino.app/Contents/Java/hardware/tools/avr/`

*if you have the official Arduino IDE from arduino.cc installed on your system you could also use the avr-compiler that is included there*

#### CrossPack for AVR®
"CrossPack is a development environment for Atmel’s AVR® microcontrollers running on Apple’s Mac OS X, similar to AVR Studio on Windows."

[Homepage](https://www.obdev.at/products/crosspack/index.html)

### Get bootloadHID

#### Build from source

0. `brew install libusb libusb-compat`
1. `git clone https://github.com/robertgzr/bootloadHID`
2. `cd commandline`
3. `make VENDORID=0x16c0 PRODUCTID=0x05DF`

#### Via homebrew

Homebrew takes care of installing the dependencies, only do:

`brew install --HEAD https://raw.githubusercontent.com/robertgzr/avr-workspace/master/bootloadhid.rb`

## Optional

#### Get Sublime Text 3 with SublimeAVR

If you don't have PackageControl. [Get it here.](https://packagecontrol.io/installation)

**Install SublimeAVR**

1. Open Package Control: `Preferences -> Package Control`
2. Select `Package Control: Install Package`
3. Type `AVR` into the search box and select the package to install it

**Custom SublimeAVR-Template**

[This script](https://github.com/robertgzr/avr-workspace/blob/master/SublimeAVR/install_template.sh) puts the contents of the **htw** directory into the right place so you can use it as a template in SublimeAVR.

As it is this provides:
* `main.c`
* `settings.h` - use this to set `F_CPU`
* `Makefile` - if you installed `bootloadHID` with brew, you can simply do `make flash` to flash your program onto the board

LINUX
-----
*The process shouldn't be that much different than it is for OS X.*

*You have to build or install the AVR compiler tools, that will depend on your system. You can propably find `avr-gcc` in the repositories of your distribution*

*For `bootloadHID` you can follow the build instructions from the OSX section.*

WINDOWS
-------
*todo*