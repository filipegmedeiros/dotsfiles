#=============================================================================
# C O M P L E T I O N
#=============================================================================


    # Configurações do Zshell 
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
    zstyle ':completion:*' completer _expand _complete _ignored _approximate
    zstyle ':completion:*' menu select=2
    zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
    zstyle ':completion::complete:*' use-cache 1
    zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

    zstyle ':completion:*' rehash true
    zstyle ':completion:*' prompt 'achados %e erros'
    zstyle :compinstall filename '/home/filipe/.zshrc'
#}
