#!/bin/bash
# Basic system setup
sudo sh ~/postinstall.sh
sudo apt-get update
sudo apt-get install -y vim git
sudo apt-get install -y software-properties-common python python-software-properties g++ make
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Add custom repositories
sudo add-apt-repository ppa:chris-lea/node.js	# Chris Lea's repo for Ubuntu Precise 12.04
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list	#mongodb's repo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo apt-get update

# Install nodejs
sudo apt-get install -y nodejs

# Install mongodb
sudo apt-get install -y mongodb-org
sudo service mongod restart