# AVR WORKSPACE

## OSX
- avr-gcc
- [bootloadHID](https://github.com/robertgzr/bootloadHID)
- [custom Makefile](todo)

*optional*

- Sublime Text + SublimeAVR
- C Improved Syntax Highlighting
- custom project template

### Get avr-gcc and friends

#### Using brew

    # tap the repository
    $ brew tap osx-cross/avr

    # to install latest avr-gcc
    $ brew install avr-libc

This will pull the prerequisites `avr-binutils` and `avr-gcc`.

For previous versions of `avr-libc` refer to the instructions [here](https://github.com/osx-cross/homebrew-avr).

This can take a while as you have to build compiler for yourself.

#### Via Arduino IDE
*todo*

#### CrossPack for AVR®
"CrossPack is a development environment for Atmel’s AVR® microcontrollers running on Apple’s Mac OS X, similar to AVR Studio on Windows."

[Homepage](https://www.obdev.at/products/crosspack/index.html)
*todo*

### Get bootloadHID

#### Build from source
1. `git clone https://github.com/robertgzr/bootloadHID`
2. Go into `commandline` folder.
3. `./configure`
4. `make`
5. `make install`


#### Using brew
*todo*

### Optional

#### Get Sublime Text 3 with SublimeAVR
[Download ST3](http://www.sublimetext.com/3)

**Install Package Control**

[Go here.](https://packagecontrol.io/installation)

**Install SublimeAVR**

1. Open Package Control: `Preferences -> Package Control`
2. Select `Package Control: Install Package`
3. Type `AVR` into the search box and select the package to install it

*todo*

Download and execute the custom project template installer: [here](todo)

#### SublimeAVR Tutorial
*todo*
[Go here](todo)

## LINUX

## WINDOWS