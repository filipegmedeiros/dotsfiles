#=============================================================================
# D I R S
#=============================================================================


DIRSTACKSIZE=20
DIRSTACKFILE=~/.config/zsh/dirstack/dirs

# The load dirs into stack from given file {{{
if [[ -f $DIRSTACKFILE && $#dirstack -eq 0 ]]; then
    dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
    [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi
#}

# At last we add a function to store dirs stack on dir change. {{{
function chpwd () {
    print -l $PWD ${(u)dirstack} > $DIRSTACKFILE
}



ZSH_CACHE_DIR=$HOME/.config/zsh/oh-my-zsh-cache

if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
fi

#}
