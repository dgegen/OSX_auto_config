#!/usr/bin/env bash
############################
# This script changes various 
# finder settings using defaults
############################


# Configure finder
# Show different medias
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Display columnsstyle Flwv=flow view, Nlsv=List View, clmv=column view, incv=icon view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Finder: show hidden files by default
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Add trash "com.apple.finder.TRSH", and new folder, "com.apple.finder.NFLD"
# TO achieve this, we first compare the code 
# default to which we added the two lines
var_replace='{
    "TB Default Item Identifiers" =     (
        "com.apple.finder.BACK",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.ACTN",
        "com.apple.finder.SHAR",
        "com.apple.finder.LABL",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SRCH"
    );
    "TB Display Mode" = 1;
    "TB Icon Size Mode" = 1;
    "TB Is Shown" = 1;
    "TB Item Identifiers" =     (
        "com.apple.finder.BACK",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.SHAR",
        "com.apple.finder.LABL",
        NSToolbarSpaceItem,
        "com.apple.finder.QUIK",
        "com.apple.finder.ACTN",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.getdropbox.dropbox.garcon",
        "com.apple.finder.SRCH"
    );
    "TB Size Mode" = 1;
}'

# current default settings
var_default=$(defaults read com.apple.finder 'NSToolbar Configuration Browser')

# check if the default settings have changed
# If not, precede as planned, otherwise, modify the string overwriting
# 'NSToolbar Configuration Browser'
if [ "$var_default" = "$var_replace" ]; then
echo "########### Success! ############"
defaults write com.apple.finder 'NSToolbar Configuration Browser' '{
    "TB Default Item Identifiers" =     (
        "com.apple.finder.BACK",
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SWCH",
        "com.apple.finder.ARNG",
        "com.apple.finder.ACTN",
        "com.apple.finder.SHAR",
        "com.apple.finder.LABL",
        "com.apple.finder.TRSH",
        "com.apple.finder.NFLD",
        NSToolbarFlexibleSpaceItem,
        NSToolbarFlexibleSpaceItem,
        "com.apple.finder.SRCH"
    );
    "TB Display Mode" = 1;
    "TB Icon Size Mode" = 1;
    "TB Is Shown" = 1;
"TB Item Identifiers" =         (
            "com.apple.finder.BACK",
            NSToolbarFlexibleSpaceItem,
            "com.apple.finder.SWCH",
            "com.apple.finder.ARNG",
            "com.apple.finder.SHAR",
            "com.apple.finder.LABL",
            "com.apple.finder.TRSH",
            "com.apple.finder.NFLD",
            NSToolbarSpaceItem,
            "com.apple.finder.QUIK",
            "com.apple.finder.ACTN",
            NSToolbarFlexibleSpaceItem,
            NSToolbarFlexibleSpaceItem,
            "com.getdropbox.dropbox.garcon",
            "com.apple.finder.SRCH"
        );
    "TB Size Mode" = 1;
}'

else
  echo '########### Attention! ############'
  echo "Default settings are different:"
  echo "The current default is:"
  echo $var_default
  echo '###################################'
  echo "While the replacement is:" 
  echo $var_replace
fi


# Show changes
killall Finder	

# Prevent terminal window from closing in order to see if the installation was successful 
$SHELL