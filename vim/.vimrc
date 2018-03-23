"
"                         .vimrc do @usuariolinux
"                       ------------------------- 
"                      Copie, altere, arrume e use
"                 -------------------------------------
"                  https://github.com/filipegmedeiros
"             ---------------------------------------------

"=============================================================================
"Configuração Inicial:                                
"=============================================================================

syntax on                               " Faz com que o vim os arquivos de configuração de  cores
set nocompatible                        " Não deixa próximo do VI
set encoding=utf-8                      " O estilo de codificação Binária

set background=light                    " Faz parte do tema do seu vim
colorscheme breezy                      " Faz parte do tema do seu vim
let g:airline_theme='breezy'            " Faz parte do tema do seu vim
set termguicolors                       " Faz parte do tema do seu vim

set showmode                            " Mostra o modo que você esta (Inserção, Visual ou Comandos)
set number                              " Numerando as linhas do arquivo
set confirm                             " Confima se você realmente deseja sair e/ou salvar
set wildmenu                            " Autocomplete dos comandos usando o TAB
set ruler                               " Mostra a posição do cursor 
set showcmd                             " Mostra os comandos sendo executados
set visualbell                          " Em caso de se cometer um comando inválido aciona-se um alarme visual
set hlsearch                            " Ativa o contraste de cores dando realce a pesquisa de palavras
set mouse=a                             " Ativa o uso do mouse


"=============================================================================
"Atalhos:                              
"=============================================================================

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' 
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock' 


map  <S-Insert> <MiddleMouse>                   " Seleciona um bloco de texto com o mouse
map! <S-Insert> <MiddleMouse>                   " Cola com o botão do meio do mouse

nnoremap <f1> :NERDTreeToggle<CR>               " Abre o Diretório de arquivos
let NERDTreeIgnore=['\.pyc$', '\~$']            " Ignora arquivos no diretório

"=============================================================================
"Plugins:                           
"=============================================================================
call vundle#begin()

 	Plugin 'vim-airline/vim-airline'       " Faz parte do tema do seu vim
	Plugin 'The-NERD-tree'                 " Plugin diretório de arquivo  
	Plugin 'Valloric/YouCompleteMe'        " Um autocomplete


call vundle#end()                                                 

filetype plugin indent on                                         " Falta Explicar
