#!/bin/bash

#set up rcs
#delete old ones
rm -f $HOME/.vimrc
rm -f $HOME/.bashrc
rm -f $HOME/.zshrc
rm -f $HOME/.pdbrc
rm -f $HOME/.vim/colors/ryslate.vim
rm -f $HOME/.vim/syntax/
rm -f $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme
rm -f $HOME/.tmux.conf
rm -f $HOME/.gitignore_global
rm -f $HOME/.inputrc
rm -f $HOME/.ipython/profile_default/ipython_config.py

#link in new ones
ln -s $HOME/RCs/Bash/bashrc $HOME/.bashrc
ln -s $HOME/RCs/Vim/vimrc $HOME/.vimrc
ln -s $HOME/RCs/Zsh/zshrc $HOME/.zshrc
ln -s $HOME/RCs/Pdb/pdbrc $HOME/.pdbrc
ln -s $HOME/RCs/Zsh/ryfletcherm.zsh-theme $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme
ln -s $HOME/RCs/Tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/RCs/Git/gitignore_global $HOME/gitignore-global
ln -s $HOME/RCs/Input/inputrc $HOME/.inputrc
ln -s $HOME/RCs/Ipython/ipython_config.py ~/.ipython/profile_default/ipython_config.py

mkdir -p $HOME/.config
mkdir -p $HOME/.config/terminator
mkdir -p $HOME/.vim/colors
mkdir -p $HOME/.vim/syntax

ln -s $HOME/RCs/config/terminator/config $HOME/.config/terminator/config
ln -s $HOME/RCs/Vim/ryslate.vim $HOME/.vim/colors/ryslate.vim
ln -s $HOME/RCs/Vim/syntax/c.vim $HOME/.vim/syntax/c.vim

#install vim plugins
# vim +PluginInstall +qall

echo "STILL NEED TODO: compile youcompleteme"
