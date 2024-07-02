#!/bin/bash

# script that backs itself up to a file called backup.sh to a file called backup.sh

# append contents of this script to backup.sh
# if backup.sh does not exist, it will be created automatically
cat $0 | cat >> backup.sh
