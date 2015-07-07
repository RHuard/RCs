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
ln -s ~/Documents/RCs/Bash/bashrc ~/.bashrc
ln -s ~/Documents/RCs/Vim/vimrc ~/.vimrc
ln -s ~/Documents/RCs/Zsh/zshrc ~/.zshrc
ln -s ~/Documents/RCs/Pdb/pdbrc ~/.pdbrc
ln -s ~/Documents/RCs/Xinit/xinit ~/.xinitrc

#set up config files
#terminator
mk_dir ~/.config
mk_dir ~/.config/terminator
ln -s ./config/terminator/config ~/.config/terminator/config
#xmodmap for xinitrc
ln -s ./config/xmodmap/xmodmap ~/.xmodmap
