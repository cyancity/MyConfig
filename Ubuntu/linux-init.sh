#! /usr/bin/env bash

export DEBIAN_FRONTED=nointeractive

##### Install Sublime (Stable Version)

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

apt install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

apt update
apt install sublime-text

apt -y upgrade

##### Add Common things

apt install -y software-properties-common curl

##### Add Node.js

curl --slient --location https://deb.nodesource.com/setup_8.x | bash -

##### Updates

apt update

##### Basic Packages

apt install -y build-essential dos2unix gcc git unzip make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim libnotify-bin pv cifs-utils bash-completion fish

##### Install Node.js
apt install -y nodejs
apt install -y npm
/usr/bin/npm install -g npm

npm config set registry https://registry.npm.taobao.org

npm i npm -g

/usr/bin/npm install -g gulp-cli
/usr/bin/npm install -g bower
/usr/bin/npm install -g yarn
/usr/bin/npm install -g grunt-cli


yarn config set registry https://registry.npm.taobao.org

##### install oh my fish

curl -L https://get.oh-my.fish | fish

##### Docker

user$ curl -sSL https://get.daocloud.io/docker | sh

##### Install Oh-my-fish and A Theme

omf install bobthefish

wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf

mv Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf /usr/share/fonts/truetype/

fc-cache -f -v

echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/conf.d/omf.fish

echo "##### Please Change Your Terminal Font to Sauce Code Pro Nerd Font #### \n"
echo "##### Then the Theme will work #####"
