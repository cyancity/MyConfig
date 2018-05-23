
#echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/conf.d/omf.fish # if you have nerd font, uncomment this line

chown -R $USER ~/.config/omf
chown -R $USER ~/.local/share/omf
chown -R $USER ~/.cache/omf # oh my fish git repo dest

omf install bobthefish # theme
omf install proxy # proxy plugin