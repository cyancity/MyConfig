#! /usr/bin/env bash

###########################################################
#             Some Variables You Need To Set              #
###########################################################

export DEBIAN_FRONTED=nointeractive

##### Add Common things
sudo apt install -y software-properties-common curl build-essential guake emacs xclip dos2unix gcc git unzip make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim-gtk libnotify-bin pv cifs-utils bash-completion net-tools tmux ctags ack-grep

##### Install Docker
curl -sSL https://get.daocloud.io/docker | sh

# Git Config
git config --global core.editor "vim"

# Text Editor
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Tmux Config


