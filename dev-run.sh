#/bin/bash
source ./common.sh

link "$PWD/distribution" "$BUILD_DIR/distribution"
link "$PWD/defaults/pref/local-settings.js" "$BUILD_DIR/defaults/pref/local-settings.js"
link "$PWD/mink.cfg" "$BUILD_DIR/mink.cfg"

cd $GECKO_SOURCE
./mach run -P development
