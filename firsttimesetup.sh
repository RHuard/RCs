git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle 
./install.sh --clang-completer --omnisharp-completer --gocode-completer
./rcsetup.sh
vim +PluginInstall +qall
