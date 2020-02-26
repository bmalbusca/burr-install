#!/bin/bash


# If we're on OS X, use clang
if [[ `uname` == "Darwin" ]]; then
    
    echo MacOS installation
    # Check to see if Homebrew is installed, and install it if it is not
    command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
    brew install python3
    brew install git
    sudo chmod 777 /usr/local/bin/
    if [[ -d /usr/local/bin/burr ]];
    then
    	sudo rm -r /usr/local/bin/burr/ 
    fi
    git -C /usr/local/bin/ clone https://gitlab.com/awesome-dev/burr.git
    
    sudo chmod 777 /usr/local/bin/burr ;
    sudo chmod 777 /usr/local/bin/burr/src ;
    sudo chmod 777 /usr/local/bin/burr/src/burr ;  
    python3  ./.install m
fi 


if [[ `uname` == 'Linux' ]]; then

echo Linux installation 
sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y git
sudo apt-get update
sudo mkdir /usr/bin/burr; sudo chmod 777 /usr/bin/burr ; sudo cd  /usr/bin/burr ; sudo git -C /usr/bin/ clone https://gitlab.com/awesome-dev/burr.git 
python3  ./.install l
fi


