#ZSH plugins
#syntax highlighting
mkdir ~/.oh-my-zsh/plugins/syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/syntax
#use custom theme
ln -s ~/RCs/Zsh/ryfletcharm.zsh-theme ~/.oh-my-zsh/themes/ryfletcherm.zsh-theme

#Vim Plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle 
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer --omnisharp-completer --gocode-completer
~/RCs/rcsetup.sh
vim +PluginInstall +qall
