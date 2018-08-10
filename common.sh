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

# Common apps
brew install git
brew install hub
brew install git-extras
brew install git-flow
brew install git-lfs
git lfs install
sudo git lfs install --system
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install bash
brew install bash-completion2
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;
brew install wget --with-iri
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install ssh-copy-id
brew install screen
brew install mas
brew install netpbm
brew install p7zip
brew install pigz
brew install python@2
pip install --upgrade pip setuptools wheel
brew install python3
pip3 install --upgrade pip setuptools wheel
brew install ruby-build
brew install rbenv
LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra
brew install tree
brew install vbindiff
brew install zopfli
brew install speedtest
brew install xpdf
brew install xz
brew install pandoc
brew install screenresolution
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew cask install alfred --appdir="/Applications"
brew cask install atom --appdir="/Applications"
apm install --packages-file package-list.txt
brew cask install google-chrome --appdir="/Applications"
brew cask install keka --appdir="/Applications"
brew cask install macdown --appdir="/Applications"
brew cask install slack --appdir="/Applications"
brew cask install xquartz --appdir="/Applications"
brew cask install java8 --appdir="/Applications"
brew cask install prefs-editor --appdir="/Applications"
brew install bfg

# Remove outdated versions from the cellar.
brew cleanup
