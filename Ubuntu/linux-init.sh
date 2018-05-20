#! /usr/bin/env bash

export DEBIAN_FRONTED=nointeractive

##### Install Sublime (Stable Version)

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

apt install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt update
apt install sublime-text

apt -y upgrade

##### Add PPAs

apt install -y software-properties-commopn curl

##### Node.js

curl --slient --location https://deb.nodesource.com/setup_8.x | bash -

##### Updates

apt update

##### Basic Packages

apt install -y build-essential dos2unix gcc git unzip make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim libnotify-bin pv cifs-utils bash-completion fish

apt install -y nodejs
/usr/bin/npm install -g npm
/usr/bin/npm install -g gulp-cli
/usr/bin/npm install -g bower
/usr/bin/npm install -g yarn
/usr/bin/npm install -g grunt-cli

npm config set registry https://registry.npm.taobao.org

yarn config set registry https://registry.npm.taobao.org
