
#echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/conf.d/omf.fish # if you have nerd font, uncomment this line

# install shadowsocks-qt5
# add-apt-repository ppa:hzwhuang/ss-qt5
# apt-get update
# apt-get -y install shadowsocks-qt5

chown -R $USER:$(id -gn $USER) ~/.local
chown -R $USER:$(id -gn $USER) ~/.cache # oh my fish git repo dest

omf install bobthefish # theme
omf install proxy # proxy plugin

#
# touch ~/.config/omf/before.init.fish
#echo "set proxy_host 127.0.0.1:1080
#set proxy_auth false" >> ~/.config/omf/before.init.fish
#
