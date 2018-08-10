#!/usr/bin/env bash

# Tap cask version
brew tap homebrew/cask-versions

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Services
brew tap homebrew/services

# Core Stuff
brew install git
brew install git-lfs
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
#brew install gnupg
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install ssh-copy-id
brew install screen
brew install mas
brew install python3
pip3 install --upgrade pip setuptools


# DevOps
brew cask install homebrew/cask-versions/docker-edge --appdir=/Applications
brew cask install atom --appdir=/Applications
brew cask install java8 --appdir=/Applications
brew install node@8
pip3 install ansible
pip3 install selenium
pip3 install awscli
pip3 install aws-shell
pip3 install troposphere
pip3 install awslogs
brew install ruby
gem install travis
brew install gradle
brew install ant
brew install maven
brew install packer
brew install vault
brew install terraform
brew cask install vagrant --appdir=/Applications
brew install imagemagick --with-webp
brew cask install cyberduck --appdir=/Applications
brew cask install postman --appdir=/Applications
brew cask install pycharm-ce --appdir=/Applications
brew cask install gpg-suite --appdir=/Applications
brew cask install cryptomator --appdir=/Applications
brew cask install imageoptim --appdir=/Applications
brew install dnsmasq
brew install dnscrypt-proxy
brew install prometheus
brew install grafana
brew install elasticsearch
brew install logstash
brew install kibana

# Cask Apps
export HOMEBREW_CASK_OPTS=--require-sha
brew cask install amazon-drive --appdir=/Applications
brew cask install dropbox --appdir=/Applications
brew cask install google-drive-file-stream --appdir=/Applications
brew cask install android-file-transfer --appdir=/Applications
export HOMEBREW_CASK_OPTS=--require-sha
brew cask install mysqlworkbench --appdir=/Applications
brew cask install unetbootin --appdir=/Applications
brew cask install xquartz --appdir=/Applications
brew cask install gimp --appdir=/Applications
brew cask install zterm --appdir=/Applications
brew cask install iterm2 --appdir=/Applications
brew cask install google-chrome --appdir=/Applications
brew cask install chromedriver --appdir=/Applications
brew cask install prefs-editor --appdir=/Applications
brew cask install vlc --appdir=/Applications
brew cask install transmission --appdir=/Applications
brew cask install torbrowser --appdir=/Applications
brew cask install slack --appdir=/Applications
brew cask install amazon-music --appdir=/Applications
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/filebot.rb
brew install screenresolution
# brew install privproxy
brew cask install github --appdir=/Applications
# Chef, puppet, ELK
# pip install --user aws-sam-cli
# secmonkey, scout2,

# Install some CTF tools; see https://github.com/ctfs/write-ups.
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
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# File Tools
brew cask install keka --appdir=/Applications
brew install p7zip
brew install pigz
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup

# MAS
# RESTed
mas install 421879749
# 1Password
mas install 443987910
# MS RDS
mas install 1295203466
# Unarchiver
mas install 425424353
# SubnetCalc
mas install 412946682
