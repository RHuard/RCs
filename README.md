# RCs
Various RC's (vim, bash etc...) and other configuration files to make installing new linux installs easier, and make it easier to build up over time.

to install git clone https://github.com/rhuard/RCs.git $HOME/RCs

## Dependencies:
Not a dependency for using these configs: but my newtartup repo (https://github.com/rhuard/NewStartup) Takes care most of the external dependencies this repo does not take care of

### zshrc:
* cowsay (becuase I like to have tux greet me when I log in ;) ) - not handled for you. This is handled in my newstartup repo
* the zsh syntax highlight plugin (https://github.com/zsh-users/zsh-syntax-highlighting.git) - this is handled for you
* source-highlighting package so less will open with colors - not handled for you. This is handled in my newstartup repo

### bash:
* honestly I don't use bash now that I have zsh, so I am not sure the state of my bashrc. I mostly keep it here so I have something for if I am stuck in a situtation where I need to use bash and I am unable to get zsh. So I make no promises about this

### pdbrc:
* none

### vim:
* uses Vundle (https://github.com/VundleVim/Vundle.vim) to manage plugins, it uses the plugins:
  * Nerd tree: https://github.com/scrooloose/nerdtree
  * YouCompleteMe: https://github.com/Valloric/YouCompleteMe
  * vim-multiple-cursors: https://github.com/terryma/vim-multiple-cursors
  * rainbow: https://github.com/luochen1990/rainbow

* Plugins are installed automatically by the rcsetup.sh script. However, YouCompleteMe still needs to be compiled inorder to run

### Terminator:
* uses Annonymous Pro (http://www.marksimonson.com/fonts/view/anonymous-pro) this is nat installed for you

### i3
* None, however for the screen saver I use `i3lock -i $HOME/Pictures/Wallpapers/CurrentWallPaper.png -t` so you will want your desired screensaver to be a .png saved in that location

## Install:
````
git clone https://github.com/rhuard/RCs.git $HOME/RCs
$HOME/RCs/firsttimesetup.sh
```
## Reset RCs to What is in This Repo:
```
$HOME/RCs/rcsetup.sh
```
Note this will destroy any local changes you have made

## Update RCs:
### Personal Changes:
just open up the given file in your favorite editor. eg: `vim ~/.vimrc`
### Updates Made to This Repo:
just `git pull` and all your rcs will be updated since they are all just symlinks to the repo
