# If you just want to use it instead of develop it, just use docker is fine


# Install Openstf Dependencies

mkdir -p ~/init-openstf && cd ~/init-openstf

# Rethinkdb
# Docs: https://www.rethinkdb.com/docs/install/ubuntu/
source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | tee /etc/apt/sources.list.d/rethinkdb.list

wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | apt-key add -

apt-get update
apt-get install rethinkdb

# Common Dependencies
# node.js

################## install nodejs npm

# common and build tools

apt-get install -y android-tools-adb python autoconf automake libtool build-essential ninja-build libzmq3-dev libprotobuf-dev graphicsmagick yasm stow

# Js Tools

npm install -g bower karma gulp

# Zeromq
# Docs: http://zeromq.org/intro:get-the-software

echo "deb http://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/Debian_9.0/ ./" >> /etc/apt/sources.list

wget https://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/Debian_9.0/Release.key -O- | apt-key add

apt-get install libzmq3-dev

# Protocalbuf

git clone https://github.com/google/protobuf.git && cd protobuf && ./autogen.sh && ./configure --prefix=/usr/local/stow/protobuf-`git rev-parse --short HEAD`

make && make install && cd /usr/local/stow && stow -vv protobuf-*

# update lib path

ldconfig

# install stf globally for use
 
npm install -g stf

# if you want to develop it, clone it and modify

git clone https://github.com/openstf/stf.git

# stf local --public-ip <ip address>

# Reference
# https://gist.github.com/yasuyk/bbaa28568c497d95ff92566efc4ecc3c

