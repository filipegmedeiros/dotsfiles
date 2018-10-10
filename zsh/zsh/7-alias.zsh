#=============================================================================
# A L I A S E S
#=============================================================================

    # Atalhos 
    alias home='cd ~/'
    alias grep='grep --colour=auto'
    alias egrep='egrep --colour=auto'
    alias ls='ls --color=auto --human-readable --group-directories-first --classify'
    alias cp='cp -iv'
    alias rcp='rsync -v --progress'
    alias rmv='rsync -v --progress --remove-source-files'
    alias mv='mv -iv'
    alias rm='rm -iv'
    alias rmdir='rmdir -v'
    alias ln='ln -v'
    alias chmod="chmod -c"
    alias chown="chown -c"
    alias mkdir="mkdir -v"
    alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

    alias reboot='sudo reboot -h now' 
    alias shutdown='sudo shutdown -h now' 
  
    alias wget='wget -c' 
    
    alias clean='sudo pacman -Scc ; sudo pacman -Rsn $(pacman -Qtqd)sudo' 
    alias pacman='sudo pacman' 

    alias scrt="scrot ~/Imagens/Capturas/'%B %d, %H:%M:%S.png'"

    alias cat="pygmentize -g"
#}
