#!/bin/bash

read -p "Enter [1] for node 14 or [2] for node 16 -> [Choose 1 or 2] " choice

# system default
sudo apt update -y
sudo apt upgrade -y

if [ $choice == 1 ]
then
    curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
else
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi