#!/bin/bash

# declaring and assigning variables
DIRNAME=/usr/bin
FILETYPE="shell script"
LOGFILE=logfile

# file is given the the argument "$DIRNAME"/*. /* is a wild card pattern that matches files and directories inside /usr/bin.
# the result of this operation is piped to the fgrep command (fgrep is deprecated, its equivalent to grep -F). fgrep does a literal string search for "shell script"(which is faster than grep).
# the result is piped to the tee command. The tee command writes the result to logfile and standard output.
# the result is then piped to wc which is given the -l flag which means it will count the lines and write the results to standard output
file "$DIRNAME"/* | fgrep "$FILETYPE" | tee $LOGFILE | wc -l

exit 0
