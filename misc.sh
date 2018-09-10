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

# Misc tools
brew cask install java8
export HOMEBREW_CASK_OPTS=""
brew cask install amazon-drive --appdir="/Applications"
brew cask install dropbox --appdir=/Applications
brew cask install google-drive-file-stream --appdir="/Applications"
export HOMEBREW_CASK_OPTS=--require-sha
brew cask install etcher --appdir="/Applications"
# brew cask install gimp --appdir="/Applications"
# brew cask install zterm --appdir="/Applications"
# brew cask install vlc --appdir="/Applications"
# brew cask install amazon-music --appdir="/Applications"
# brew cask install cyberduck --appdir="/Applications"
# brew cask install inkscape --appdir="/Applications"
# brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/filebot.rb
# brew install grafana
# brew install prometheus
# Remove outdated versions from the cellar.
brew cleanup
