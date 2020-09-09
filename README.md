# RCs
Various RC's (vim, bash etc...) and other configuration files to make installing new linux installs easier, and make it easier to build up over time.

to install git clone https://github.com/rhuard/RCs.git $HOME/RCs

## Dependencies:
Not a dependency for using these configs: but my newstartup repo (https://github.com/rhuard/NewStartup) Takes care most of the external dependencies this repo does not take care of

### zsh:
* zsh syntax highlight plugin (https://github.com/zsh-users/zsh-syntax-highlighting.git) - this is handled for you
* zsh autosuggestions plugin (https://github.com/zsh-users/zsh-autosuggestions)
* zsh alias tips plugin (https://github.com/djui/alias-tips)
* source-highlighting package so less will open with colors - not handled for you. This is handled in my newstartup repo

### bash:
* none

### pdb:
* none

### vim:
* uses vim-plug (https://github.com/junegunn/vim-plug) to manage plugins, it uses the plugins:
  * YouCompleteMe: https://github.com/Valloric/YouCompleteMe
  * vim-multiple-cursors: https://github.com/terryma/vim-multiple-cursors
  * rainbow: https://github.com/luochen1990/rainbow
  * vim-surround: https://github.com/tpope/vim-surround
  * vim-commentary: https://github.com/tpope/vim-commentary
  * vim-pencil: https://github.com/reedes/vim-pencil
  * tagbar: https://github.com/majutsushi/tagbar
  * vim-table-mode: https://github.com/dhruvasagar/vim-table-mode
  * taglist: http://vim-taglist.sourceforge.net/

* Plugins from github are installed automatically by the rcsetup.sh script. However, YouCompleteMe still needs to be compiled inorder to run

### Terminator:
* none

### i3
* none

### tmux
* none

### X
* none

### Input
* none

## Install:
````
git clone https://github.com/rhuard/RCs.git $HOME/RCs
$HOME/RCs/bin/firsttimesetup.sh
```
## Reset RCs to What is in This Repo:
```
$HOME/RCsi/bin/rcsetup.sh
```
Note this will destroy any local changes you have made

## Update RCs:
### Personal Changes:
just open up the given file in your favorite editor. eg: `vim ~/.vimrc`
### Updates Made to This Repo:
just `git pull` and all your rcs will be updated since they are all just symlinks to the repo
