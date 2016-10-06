#! /bin/bash

#function to check it directory exists and if it
#does not make it
function make_dir(){
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

#set up rcs
#delete old ones
rm -f ~/.vimrc
rm -f ~/.bashrc
rm -f ~/.zshrc
rm -f ~/.pdbrc
rm -f ~/.xinitrc

#link in new ones
ln -s $HOME/RCs/Bash/bashrc ~/.bashrc
ln -s $HOME/RCs/Vim/vimrc ~/.vimrc
ln -s $HOME/RCs/Zsh/zshrc ~/.zshrc
ln -s $HOME/RCs/Pdb/pdbrc ~/.pdbrc
mkdir -p ~/.vim/colors
ln -s $HOME/RCs/Vim/ryslate.vim ~/.vim/colors/ryslate.vim

#set up config files
#terminator
make_dir $HOME/.config
make_dir $HOME/.config/terminator
ln -s ./config/terminator/config $HOME/.config/terminator/config

#install vim plugins
vim +PluginInstall +qall

echo "STILL NEED TODO: compile youcompleteme"
