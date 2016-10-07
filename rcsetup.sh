#!/bin/bash

#set up rcs
#delete old ones
rm -f $HOME/.vimrc
rm -f $HOME/.bashrc
rm -f $HOME/.zshrc
rm -f $HOME/.pdbrc
rm -f $HOME/.xinitrc
rm -f $HOME/.config/terminator/config
rm -f $HOME/.config/i3/config

#link in new ones
ln -s $HOME/RCs/Bash/bashrc $HOME/.bashrc
ln -s $HOME/RCs/Vim/vimrc $HOME/.vimrc
ln -s $HOME/RCs/Zsh/zshrc $HOME/.zshrc
ln -s $HOME/RCs/Pdb/pdbrc $HOME/.pdbrc

mkdir -p $HOME/.config
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.cinfig/i3

ln -s $HOME/RCs/config/terminator/config $HOME/.config/terminator/config
ln -s $HOME/RCs/config/i3/config $HOME/.config/i3/config

mkdir -p ~/.vim/colors
ln -s $HOME/RCs/Vim/ryslate.vim $HOME/.vim/colors/ryslate.vim

#install vim plugins
vim +PluginInstall +qall

echo "STILL NEED TODO: compile youcompleteme"
