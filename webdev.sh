#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Tap cask version
brew tap homebrew/cask-versions

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Services
brew tap homebrew/services

# WebDev tools
brew cask install java8
brew install node@8
brew install python3
brew install imagemagick --with-webp
brew install pngcheck
brew install webkit2png
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew cask install chromedriver --appdir=/Applications
brew cask install postman --appdir=/Applications
brew cask install imageoptim --appdir=/Applications
npm install -g coffee-script
npm install -g grunt-cli
npm install -g jshint
npm install -g less
pip3 install --upgrade pip setuptools wheel
pip3 install selenium

# Remove outdated versions from the cellar.
brew cleanup
