#!/usr/bin/env bash
############################
# This script installs various
# programms using homebrew
############################

# Install MacOS Applications
# essentials
brew cask install dropbox
brew cask install rectangle # window management app, see: https://github.com/rxhanson/Rectangle

# browsers
brew cask install google-chrome
brew cask install firefox

# office
brew cask install microsoft-office

# editor
brew cask install virtualbox
#brew cask install atom

# communication
brew cask install skype
brew cask install zoomus
brew cask install slack
#brew cask install teamviewer

# media
brew cask install gimp
brew cask install vlc

# OverSight protective apps, see https://www.objective-see.com
brew cask install oversight  # alert, when microphone or camera are activated
#brew cask install LuLu  # 'little snitch' substitute
#brew cask install RansomWhere?  # defence against massive file encryption

# Install Source Code Pro Font
#brew tap homebrew/cask-fonts
#brew cask install font-source-code-pro