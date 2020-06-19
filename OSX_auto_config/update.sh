#!/usr/bin/env bash
############################
# This script makes homebrew update
# the installed programms
############################

# Update
brew update
brew upgrade

brew outdated

# Delete outdated versions
brew cleanup