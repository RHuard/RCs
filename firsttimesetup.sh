#ZSH plugins
mkdir ~/.oh-my-zsh/plugins/syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/syntax

#Vim Plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle 
./install.sh --clang-completer --omnisharp-completer --gocode-completer
./rcsetup.sh
vim +PluginInstall +qall
