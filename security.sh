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

# Security apps
brew cask install java8
brew install aircrack-ng
brew install wpscan
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp
brew install xpdf
brew install xz
brew cask install gpg-suite --appdir="/Applications"
brew cask install cryptomator --appdir="/Applications"
brew cask install torbrowser --appdir="/Applications"

# Remove outdated versions from the cellar.
brew cleanup
