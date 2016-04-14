#!/bin/bash

# Packs htw.zip
# Moves htw.zip into the right place
# nothing dangerous

OSXPATH="$HOME/Library/Application Support/Sublime Text 3/Packages/AVR/templates/"
LINUXPATH="$HOME/.config/sublime-text-2/Packages/AVR/templates/"

DIR="htw"
ZIP="htw.zip"

SYS=$(uname)

echo "SublimeAVR - htw template installer:"

function zipper
{
    if [ -d "$DIR" ]; then
        echo ">>> Creating $ZIP..."
        which zip >/dev/null && zip -r $ZIP "$DIR/*" && return 0 || echo ">>> [!] zip is not installed" && return 1
    else
        echo ">>> [!] Missing template files"
        return 1
    fi
}

function mover
{
    # Mac
    if [ $SYS = "Darwin" ]
    then
        echo ">>> detected OS: OS X"
        if [ -d "$OSXPATH" ]; then
            cp -iv "$ZIP" "$OSXPATH" && echo ">>> Success!"
        else
            echo ">>> [!] SublimeAVR not found"
        fi
    # Linux
    elif [ $SYS = "Linux" ]
    then
        echo ">>> detected OS: Linux"
        if [ -d "$LINUXPATH" ]; then
            cp -iv "$ZIP" "$LINUXPATH" && echo ">>> Success!"
        else
            echo ">>> [!] SublimeAVR not found"
        fi
    else
        echo ">>> [!] Sorry $(uname) not supported"
    fi
}

zipper && mover