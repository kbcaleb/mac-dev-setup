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

# Python data tools
# Virtualenv it all
# pip3 install numpy
# pip3 install scipy
# pip3 install matplotlib
# pip3 install pandas
# pip3 install sympy
# pip3 install nose
# pip3 install unittest2
# pip3 install seaborn
# pip3 install scikit-learn
# pip3 install "ipython[all]"
# pip3 install bokeh
# pip3 install Flask
# pip3 install sqlalchemy
# pip3 install mysqlclient

# Install IPython Profile
# echo ""
# echo "------------------------------"
# echo "Installing IPython Notebook Default Profile"
# echo "------------------------------"
# echo ""
# if [ ! -d ~/.ipython ]; then
#     mkdir -p ~/.ipython
# fi
# cp -r init/profile_default/ ~/.ipython/profile_default

# Remove outdated versions from the cellar.
brew cleanup
