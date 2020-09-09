#!/bin/bash

#ZSH plugins
#syntax highlighting
mkdir -p $HOME/.oh-my-zsh/plugins/syntax
mkdir -p $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
mkdir -p $HOME/.oh-my-zsh/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/syntax
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/djui/alias-tips $HOME/.oh-my-zsh/plugins/alias-tips
#use custom theme
ln -s $HOME/RCs/Zsh/ryfletcherm.zsh-theme $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme

#Plug in Managers for vim and vnim
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$HOME/RCs/bin/rcsetup.sh
