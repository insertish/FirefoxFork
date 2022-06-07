#/bin/bash
export MOZBUILD_STATE_PATH=$PWD/.mozbuild
export GECKO_SOURCE=$PWD/gecko-dev

export PLATFORM=x86_64-pc-linux-gnu
export BUILD_DIR=$GECKO_SOURCE/obj-$PLATFORM/dist/bin

link() {
    echo Linking $1 to $2.

    if [ -L $2 ] ; then
        if [ -e $2 ] ; then
            echo Symlink exists.
        else
            ln -sf $1 $2
            echo Updating existing link.
        fi
    elif [ -e $2 ] ; then
        echo "Error: a file or folder already exists at $2! Remove this and run again."
        exit
    else
        ln -s $1 $2
        echo Creating new symbolic link.
    fi
}
