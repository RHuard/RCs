#! /bin/bash

#function to check it directory exists and if it
#does not make it
#TODO update to makdir -p
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
ln -s ~/RCs/Zsh/ryfletcherm.zsh-theme ~/.oh-my-zsh/themes/ryfletcherm.zsh-theme

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

~/RCs/rcsetup.sh
