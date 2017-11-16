#!/bin/bash

# ~/.bash_profile
# On Macintosh sourced first by interactive shells
# On Debian not sourced

########
### Script Debugger

SCRIPT_DEBUG=true
#SCRIPT_DEBUG=false

# Test for a terminal (aka interactive)!

if [[ $- =~ "i" ]]
then # shell is NOT interactive thus echos and other output will not break SCP
  if $SCRIPT_DEBUG; then echo "~/.bash_profile sourced."; fi
fi

########
### Source common environment & paths from ~/.profile, to be executed by both
### interactive and non-interative shells

if [ -f ~/.profile ]; then source ~/.profile; fi

# In Debian Linux, this script is sourced first in interactive mode, so
# we if we are interactive we source .bash_login scripts next.

if [[ $- =~ "i" ]]
then # shell is NOT interactive thus echos and other output will not break SCP
  if [ -f ~/.bash_login ]; then source ~/.bash_login; fi
fi

#######
### ~/.bashrc Complete

if [[ $- =~ "i" ]]
then # shell is NOT interactive thus echos and other output will not break SCP
  if $SCRIPT_DEBUG; then echo "~/.bash_profile completed."; fi
fi

########
