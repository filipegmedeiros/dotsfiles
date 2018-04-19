#
#                        .zshrc do @usuariolinux
#                     ---------------------------- 
#                     Copie, altere, arrume e use
#               ---------------------------------------
#                  https://github.com/filipegmedeiros
#           -----------------------------------------------


for conf in ~/.config/zsh/*.zsh; do
    source $conf
done


    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
