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
rm -f $HOME/.vim/colors/ryslate.vim
rm -f $HOME/.vim/syntax/
rm -f $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme
rm -f $HOME/.tmux.conf
rm -f $HOME/.xinitrc
rm -f $HOME/.xmodmap
rm -f $HOME/.gitignore_global
rm -f $HOME/.inputrc

#link in new ones
ln -s $HOME/RCs/Bash/bashrc $HOME/.bashrc
ln -s $HOME/RCs/Vim/vimrc $HOME/.vimrc
ln -s $HOME/RCs/Zsh/zshrc $HOME/.zshrc
ln -s $HOME/RCs/Pdb/pdbrc $HOME/.pdbrc
ln -s $HOME/RCs/Zsh/ryfletcherm.zsh-theme $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme
ln -s $HOME/RCs/Tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/RCs/X/xinitrc $HOME/.xinitrc
ln -s $HOME/RCs/X/xmodmap $HOME/.xmodmap
ln -s $HOME/RCs/Git/gitignore_global $HOME/gitignore-global
ln -s $HOME/RCs/Input/inputrc $HOME/.inputrc

mkdir -p $HOME/.config
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.cinfig/i3
mkdir -p $HOME/.vim/colors
mkdir -p $HOME/.vim/syntax

ln -s $HOME/RCs/config/terminator/config $HOME/.config/terminator/config
ln -s $HOME/RCs/config/i3/config $HOME/.config/i3/config
ln -s $HOME/RCs/Vim/ryslate.vim $HOME/.vim/colors/ryslate.vim
ln -s $HOME/RCs/Vim/syntax/c.vim $HOME/.vim/syntax/c.vim

#install vim plugins
vim +PluginInstall +qall

echo "STILL NEED TODO: compile youcompleteme"
