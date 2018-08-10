#!/usr/bin/env bash
function setUp() {
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Updating OS
    echo ""
    echo "------------------------------"
    echo "Updating OSX. If this requires a restart, re-run setup.sh again."
    echo "------------------------------"
    echo ""
    sudo softwareupdate -irv

    # Install Homebrew
    if ! hash brew 2>/dev/null
    then
        echo ""
        echo "------------------------------"
        echo "Installing Homebrew"
        echo "------------------------------"
        echo ""
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # Pulling repo into ~
   if [ ! -d "~/mac-dev-setup" ]; then
       echo ""
       echo "------------------------------"
       echo "Pulling mac-dev-setup repo into ~ ."
       echo "------------------------------"
       echo ""
       cd ~ && git clone https://github.com/kbcaleb/mac-dev-setup.git
   else
       cd ~/mac-dev-setup
       git pull origin master
   fi

    # Loop arguments
    for ARG in "$@"
    do
        cd ~/mac-dev-setup
        if [ $ARG == "dotfiles" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up dotfiles."
            echo "------------------------------"
            echo ""
            ./dotfiles.sh
        fi
        if [ $ARG == "common" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting common tools."
            echo "------------------------------"
            echo ""
            ./common.sh
        fi
        if [ $ARG == "security" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up security tools."
            echo "------------------------------"
            echo ""
            ./security.sh
        fi
        if [ $ARG == "devops" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up devops tools."
            echo "------------------------------"
            echo ""
            ./devops.sh
        fi
        if [ $ARG == "webdev" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up webdev tools."
            echo "------------------------------"
            echo ""
            ./webdev.sh
        fi
        if [ $ARG == "pydata" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up python data tools."
            echo "------------------------------"
            echo ""
            ./pydata.sh
        fi
        if [ $ARG == "bigdata" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up big data tools."
            echo "------------------------------"
            echo ""
            ./bigdata.sh
        fi
        if [ $ARG == "database" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up database tools."
            echo "------------------------------"
            echo ""
            ./database.sh
        fi
        if [ $ARG == "mobile" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up mobile tools."
            echo "------------------------------"
            echo ""
            ./mobile.sh
        fi
        if [ $ARG == "misc" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up misc tools."
            echo "------------------------------"
            echo ""
            ./misc.sh
        fi
        if [ $ARG == "mas" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Setting up MAS apps."
            echo "------------------------------"
            echo ""
            ./mas.sh
        fi
        if [ $ARG == "osx" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "Configuring OSX."
            echo "------------------------------"
            echo ""
            ./.macos
        fi
    done
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
    setUp $@
fi

unset setUp
