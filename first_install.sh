#!/bin/bash
echo "***** Installing Main Dependencies *****"
sudo apt-get -y update
sudo ap-get -y upgrade
sudo apt-get -y install git
sudo apt-get -y install terminator

echo "***** Configuring Git Username and Email *****"
git config --global user.name "Edwin Marte"
git config --global user.email "kdgpro15@gmail.com"

echo "***** Docker *****"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys F76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get -y update
sudo apt-get install -y docker-engine
sudo systemctl status docker
sudo usermod -aG docker $(whoami)

