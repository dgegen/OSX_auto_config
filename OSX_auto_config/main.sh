#!/usr/bin/env bash
############################
# This script installs homebrew,
# changes various finder settings,
# changes the items in the dock,
# and installs various programms using homebrew
############################

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Brew Packages
brew install python
brew install dockutil # For the dock

# Run the dock installation Script
./dock.sh

# Run the settings installation Script
./settings.sh

# Run the programm installation Script
./programm.sh