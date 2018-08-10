#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# MAS apps
echo ""
echo "------------------------------"
echo "Signing into Apple App Store."
echo "------------------------------"
echo ""
read -rp "Please enter your Apple ID to login. "
mas signin "$REPLY"
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
