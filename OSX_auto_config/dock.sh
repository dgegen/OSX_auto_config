#!/usr/bin/env bash
############################
# This script adds and removes 
# applications from the user's
# dock using dockutil
############################

# In case you want to assure dockutil is installed and up to date
#if [ -x "$(command -v dockutil)" ]; then
#    echo "Update dockutil"
#    brew update dockutil
#else
#    echo "Install dockutil"
#    brew install dockutil
#fi

# Format dock
dockutil --remove all
dockutil --add /Applications/TextEdit.app
dockutil --remove 'Microsoft Excel'
dockutil --add '~/Downloads' --view grid --display folder --allhomes
dockutil --add /Applications/Pages.app
