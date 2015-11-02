#!/bin/bash

# Packs htw.zip
# Moves htw.zip into the right place
# nothing dangerous

OSXPATH=$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/AVR/templates/
LINUXPATH=$HOME/.config/sublime-text-2/Packages/AVR/templates/

DIR="htw"
ZIP="htw.zip"

SYS=$(uname)

if [ -d "$DIR" ]; then
    echo "Zipping $DIR..."
    zip -r $ZIP $DIR
fi

# Mac
if [ $SYS = "Darwin" ]
then
    echo "Detected OS X"
    if [ -d "$OSXPATH" ]; then
        cp -iv $ZIP $OSXPATH
    else
        echo "SublimeAVR not found"
    fi
    echo "Success!"
# Linux
elif [ $SYS = "Linux" ]
then
    echo "Detected Linux"
    if [ -d "$LINUXPATH" ]; then
        cp -iv $ZIP $LINUXPATH
    else
        echo "SublimeAVR not found"
    fi
    echo "Success!"
else
    echo "Sorry $(uname) not supported"
fi