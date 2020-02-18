# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/filipe/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino"

plugins=(
	git
	zsh-syntax-highlighting
	history-substring-search
	zsh-autosuggestions
	fzf

)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
#}

