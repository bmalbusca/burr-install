#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y git
sudo apt-get update
sudo mkdir /usr/bin/burr; sudo chmod 777 /usr/bin/burr ; sudo cd  /usr/bin/burr ; sudo git -C /usr/bin/burr clone https://github.com/bmalbusca/burr-install.git
