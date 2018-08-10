#!/usr/bin/env bash
function setUp() {
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Updating OS
    # echo ""
    # echo "------------------------------"
    # echo "Updating OSX. If this requires a restart, re-run setup.sh again."
    # echo "------------------------------"
    # echo ""
    # sudo softwareupdate -irv
    #
    # # Install Homebrew
    # if ! hash brew 2>/dev/null
    # then
    #     echo ""
    #     echo "------------------------------"
    #     echo "Installing Homebrew"
    #     echo "------------------------------"
    #     echo ""
    #     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # fi

    # Pulling repo into ~
    # if [ ! -d "~/mac-dev-setup" ]; then
    #     echo ""
    #     echo "------------------------------"
    #     echo "Pulling mac-dev-setup repo into ~ ."
    #     echo "------------------------------"
    #     echo ""
    #     cd ~ && git clone https://github.com/kbcaleb/mac-dev-setup.git
    # else
    #     cd ~/mac-dev-setup
    #     git pull origin master;
    # fi

    # Loop arguments
    # for ARG in "$@"
    # do
    #     cd ~/mac-dev-setup
    #     if [ $ARG == "dotfiles" ] || [ $ARG == "all" ]; then
    #         echo ""
    #         echo "------------------------------"
    #         echo "Setting up dotfiles."
    #         echo "------------------------------"
    #         echo ""
    #         # ./dotfiles.sh
    #     fi
    #     if [ $ARG == "common" ] || [ $ARG == "all" ]; then
    #         echo ""
    #         echo "------------------------------"
    #         echo "Setting common apps."
    #         echo "------------------------------"
    #         echo ""
    #         # ./common.sh
    #     fi
    # done
}

# read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
# echo "";
# if [[ $REPLY =~ ^[Yy]$ ]]; then
#     setUp $@
# fi;
#
# unset setUp;
setup $@
