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

# Mobile tools
brew cask install java8
brew cask install intellij-idea-ce --appdir="~/Applications"
brew cask install android-sdk --appdir="~/Applications"
brew cask install android-studio --appdir="~/Applications"
brew cask install android-file-transfer --appdir="~/Applications"
brew install dex2jar

# Remove outdated versions from the cellar.
brew cleanup
