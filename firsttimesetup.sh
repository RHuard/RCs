#! /bin/bash

#ZSH plugins
#syntax highlighting
mkdir -p $HOME/.oh-my-zsh/plugins/syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/syntax
#use custom theme
ln -s $HOME/RCs/Zsh/ryfletcherm.zsh-theme $HOME/.oh-my-zsh/themes/ryfletcherm.zsh-theme

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

$HOME/RCs/rcsetup.sh
