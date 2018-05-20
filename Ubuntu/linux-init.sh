#! /usr/bin/env bash

###########################################################
#             Some Variables You Need To Set              #
###########################################################

# Example: 127.0.0.1:1024
# Then you should add you server config to shadowsocks-qt5
SS-Server=""

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

apt install -y build-essential dos2unix gcc git unzip make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim libnotify-bin pv cifs-utils bash-completion fish net-tools

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

##### Docker-compose

# Offical Version
#curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# DaoCloud Version, Especially for Chinese User
curl -L https://get.daocloud.io/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version

##### Install Oh-my-fish and A Theme

omf install bobthefish

wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf

mv Sauce Code Pro Nerd Font Complete Mono.ttf /usr/share/fonts/truetype/

fc-cache -f -v

echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/conf.d/omf.fish

echo "##### Please Change Your Terminal Font to Sauce Code Pro Nerd Font #### \n"
echo "##### Then the Theme will work #####"

# Add Shadowsocks-qt5
# There is no Binoic version, so add Artful version for temp use

add-apt-repository "deb http://ppa.launchpad.net/hzwhuang/ss-qt5/ubuntu artful main "
apt-key adv --keyserver  hkp://keyserver.ubuntu.com:80 --recv-keys 5F00FA99

apt update
apt install shadowsocks-qt5

###########################################################
#       If you have SS Server, fill it on the top         #
###########################################################

omf install proxy

touch ~/.config/omf/before.init.fish

if [ -n $SSServer ]

then echo "
set proxy_host $SSServer
set proxy_auth false
" >> ~/.config/omf/before.init.fish

fi

######################## End ##############################

##### Install Phpstorm, Webstorm

snap install phpstorm --classic
snap install webstorm --classic

# Git Config

git config --global core.editor "vim"

# Text Editor

apt install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Tmux Config

wget https://raw.githubusercontent.com/cyancity/MyConfig/master/Ubuntu/.tmux.conf -O ~/
