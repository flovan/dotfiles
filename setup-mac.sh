#!/usr/bin/env bash

###############################################################################
# Set up a clean install of macOS                                             #
###############################################################################

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew and formulas
./.brew.sh

# Tweak macOS settings and defaults
./.macos.sh

# Run the bootstrap script
source bootstrap.sh

echo "All done. Please reboot your machine."
