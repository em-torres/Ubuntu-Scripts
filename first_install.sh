#!/bin/bash

echo "***** Installing Main Dependencies *****"
sudo apt-get -y update
sudo ap-get -y upgrade
sudo apt-get -y install git
sudo apt-get -y install terminator

echo "***** Configuring Git Username and Email *****"
git config --global user.name "Edwin Marte"
git config --global user.email "kdgpro15@gmail.com"

