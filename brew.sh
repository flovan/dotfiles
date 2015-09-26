#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools; see https://github.com/bramstein/homebrew-webfonttools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install git
brew install node
brew install imagemagick --with-webp

# Install Cask and apps
brew install caskroom/cask/brew-cask
caskapps=(
	dropbox
	google-chrome
	firefox
	opera
	slack
	iterm2
	sublime-text3
	virtualbox
	vlc
	skype
	transmission
	ember
	flux
	github-desktop
	imageoptim
	licecap
	mamp
	adobe-creative-cloud
	transmit
	teamviewer
	the-unarchiver
	tvshows
	macdown
)
brew cask install --appdir="/Applications" ${apps[@]}

# Remove outdated versions from the cellar.
brew cleanup
