# The following lines were added by compinstall
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'
zstyle ':completion:*' rehash true
zstyle ':completion:*' prompt 'achados %e erros'
zstyle :compinstall filename '/home/guest/.zshrc'
calc () { awk "BEGIN{ print $* }" ;}
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
alias wget='wget -c' 
alias att=' pac -Syyuu' 
alias clean='sudo pacman -Scc ; sudo pacman -Rsn $(pacman -Qtqd)sudo' 
alias pacman='sudo pacman' 
alias reboot='sudo reboot -h now' 
alias shutdown='sudo shutdown -h now' 
alias home='cd ~/'
alias remove='yaourt -Rnsc' 
alias brilho='xrandr --output LVDS-1 --brightness 0.5'
alias particoes='df -h --exclude-type=tmpfs'
alias neofetch='screeninfo.sh'
alias fdisk='sudo fdisk -l'
alias scrot="scrot ~/Imagens/Capturas/'%B %d, %H:%M:%S.png'"

export LANG=C

# Ignore lines prefixed with '#'.
setopt interactivecomments
#
# # Ignore duplicate in history.
setopt hist_ignore_dups
#
# # Prevent record in history entry if preceding them with at least one space
setopt hist_ignore_space
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
autoload -Uz promptinit
promptinit
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
[[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}
DIRSTACKSIZE=20
setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS
## This reverts the +/- operators.
setopt PUSHD_MINUS
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 escape() {
	# Uber useful when you need to translate weird as fuck path into single
argument string.
	local escape_string_input
	echo -n "String to escape: "
	read escape_string_input
	printf '%q\n' "$escape_string_input"
}
 has() {
	local string="${1}"
	shift	local element=''
	for element in "$@"; do
		if [ "${string}" = "${element}" ]; then
			return 0
		fi
	done
	return 1
}
 begin_with() {
	local string="${1}"
	shift
	local element=''
	for element in "$@"; do
		if [[ "${string}" =~ "^${element}" ]]; then
			return 0
		fi
	done
	return 1
 }
setopt extendedGlob
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="agnoster"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
#DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git,history-search)
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nano'
else
export EDITOR='nano'
fi
export SSH_KEY_PATH="~/.ssh/rsa_id"
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
function zle-line-init zle-keymap-select {
VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
zipedit(){
echo "Usage: zipedit archive.zip file.txt"
unzip "$1" "$2" -d /tmp 
nvim /tmp/$2 && zip -j --update "$1" "/tmp/$2" 
}
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

