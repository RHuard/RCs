#Slightly modified version of the fletcherm theme that comes with oh-my-zsh themes
# Copied from old version of tonotdo's theme. LSCOLORS modified.

#check to see if in tmux or screen
SCREEN=""                                                                          
if [ $TERM = "screen" ]; then                                                      
    SCREEN="%{$fg_bold[white]%}°"                                               
fi                                                                              
                                                                                
PROMPT_SYMBOL="↳"                                                               
PROMPT='%{$fg_no_bold[yellow]%}${VIMMODE}%{$fg_bold[cyan]%}%n%{$fg_no_bold[magenta]%}[$HOST]%{$fg_bold[green]%}%3~$(git_prompt_info)$(git_prompt_status)
$SCREEN%{$fg_no_bold[yellow]%}$PROMPT_SYMBOL%{$reset_color%} '                                                                                                 
RPROMPT='%{%(?.%{$fg[green]%}.%{$fg[red]%})%}%?%{$fg_no_bold[yellow]%}[%*]%{$reset_color%}'
ZLE_RPROMPT_INDENT=0   


# git theming
CLEAN="✓"
CLEANCOLOR="$fg_bold[green]"
DIRTY="!"
DIRTYCOLOR="$bg[magenta]$fg_bold[yellow]"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$CLEANCOLOR%}%{$CLEAN%}%{$reset_color%}%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$DIRTYCOLOR%}%{$DIRTY%}%{$reset_color%}%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_no_bold[yellow]%}*"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}x"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[cyan]%}~"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[white]%}^"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[magenta]%}?"


export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'
