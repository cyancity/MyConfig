# The time this file commited, the bonic version of shadowsocks-qt5 has not released yet
# So this script for temp use

add-apt-repository "deb http://ppa.launchpad.net/hzwhuang/ss-qt5/ubuntu artful main " 
apt-key adv --keyserver  hkp://keyserver.ubuntu.com:80 --recv-keys 5F00FA99 
apt update
apt install shadowsocks-qt5