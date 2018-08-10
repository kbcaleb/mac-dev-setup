#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".osx" \
    --exclude "*.sh" \
    --exclude "*.txt" \
    --exclude "README.md" \
    -avh --no-perms . ~;
chmod 700 ~/.ssh;
chmod 700 ~/.gnupg;
source ~/.bash_profile;
