#!/bin/bash

# Author: Nathan Coulter
# This code is released to the public domain.
# The author gave permission to use this code snippet in the ABS Guide.


# find regular files in current directory
# directory tree, print the file name and a null character
find -maxdepth 1 -type f -printf '%f\000' | {
        # loop through the file names using null byte as the delimeter
        while read -d $'\000'; do
                # for each file name, rename it using the specied format
                mv "$REPLY" "$(date -d "$(stat -c '%y' "$REPLY") " '+%Y%m%d%H%M%S'
                )-$REPLY"
        done
}

# Warning: Test-drive this script in a "scratch" directory.
# It will somehow affect all the files there.
