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

# DevOps tools
brew cask install java8
brew install node@8
pip3 install ansible
pip3 install awscli
pip3 install aws-shell
pip3 install troposphere
pip3 install awslogs
gem install travis
brew install gradle
brew install ant
brew install maven
brew install packer
brew install vault
brew install terraform
brew install dnsmasq
brew install dnscrypt-proxy
brew install logstash
brew install kibana
brew install heroku
brew install
brew cask install homebrew/cask-versions/docker-edge --appdir="/Applications"
brew cask install virtualbox --appdir="/Applications"
brew cask install vagrant --appdir="/Applications"
brew cask install pycharm-ce --appdir="/Applications"
brew cask install github --appdir="/Applications"

# Remove outdated versions from the cellar.
brew cleanup
