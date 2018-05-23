#! /usr/bin/env bash

###########################################################
#             Some Variables You Need To Set              #
###########################################################

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

apt-get install -y nodejs

##### Updates
apt update

##### Basic Packages
apt install -y build-essential dos2unix gcc git unzip make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim libnotify-bin pv cifs-utils bash-completion net-tools tmux

##### Install Node.js
apt install -y nodejs
apt install -y npm
/usr/bin/npm install -g npm

npm config set registry https://registry.npm.taobao.org

npm i npm -g
npm install -g gulp-cli
npm install -g bower
npm install -g yarn
npm install -g grunt-cli

yarn config set registry https://registry.npm.taobao.org

##### Install Docker
user$ curl -sSL https://get.daocloud.io/docker | sh

# Git Config
git config --global core.editor "vim"

# Text Editor
apt install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Tmux Config
wget https://raw.githubusercontent.com/cyancity/MyConfig/master/Ubuntu/.tmux.conf -O ~/

# older version of ubuntu should update fish shell
apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get install fish

# chown dir priv
chown -R $USER ~/.config/fish
chown -R $USER ~/.local/share/fish
chown -R $USER ~/.emacs.d

# change dir priv
chmod 777 -R /usr/local/lib/node_modules

##### Installing Oh-my-fish
curl -L https://get.oh-my.fish | fish
