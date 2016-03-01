#! /bin/bash

#function to check it directory exists and if it
#does not make it
function make_dir(){
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

#ZSH plugins
#syntax highlighting
make_dir ~/.oh-my-zsh/plugins/syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/syntax
#use custom theme
ln -s ~/Documents/RCs/Zsh/ryfletcherm.zsh-theme ~/.oh-my-zsh/themes/ryfletcherm.zsh-theme

#Vim Plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
