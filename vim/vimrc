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

syntax on                               "faz com que o vim os arquivos de configuração de  cores
set nocompatible                        " Não deixa próximo do VI
set encoding=utf-8                      " O estilo de codificação Binária
colorscheme tema                        " O Tema do seu vimrc
set showmode                            " Mostra o modo que você esta (Inserção, Visual ou Comandos)
set number                              " Numerando as linhas do arquivo
set confirm                             " Confima se você realmente deseja sair e/ou salvar
set wildmenulist:longest,full           " Autocomplete dos comandos usando o TAB
set ruler                               " Mostra a posição do cursor 
set showcmd                             " Mostra os comandos sendo executados
set visualbell                          " Em caso de se cometer um comando inválido aciona-se um alarme visual
set hlsearch                            " Ativa o contraste de cores dando realce a pesquisa de palavras
set mouse=a                             " Ativa o uso do mouse

"=============================================================================
"Atalhos:                              
"=============================================================================


set <S-Insert>+backspace=eol,start,indent       " Usando <Shift + BkSpc> para deletar linha 

map  <S-Insert> <MiddleMouse>                   " Seleciona um bloco de texto com o mouse  
map! <S-Insert> <MiddleMouse>                   " Cola com o botão do meio do mouse  

nnoremap <f1> :NERDTreeToggle<CR>               " Abre o Diretório de arquivos
let NERDTreeIgnore=['\.pyc$', '\~$']            " "Ignora arquivos no diretório

nnoremap <f2> :TlistToggle<CR>                  "Lista os elementos e classes do algoritmo:
let Tlist_Compact_Format = 1                    " Não sei o que é
let Tlist_GainFocus_On_ToggleOpen = 1           " Não sei o que é
let Tlist_Close_On_Select = 1                   " Não sei o que é

"=============================================================================
"Plugins:                           
"=============================================================================
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                                     " Falta Explicar
Plugin 'virtualenv.vim'                                           " Falta Explicar
Plugin 'EditPlus'                                                 " Falta Explicar
Plugin 'Tabular'                                                  " Falta Explicar
Plugin 'vim-scripts/indentpython.vim'                             " Falta Explicar
Plugin 'SuperTab'                                                 " Falta Explicar
Plugin 'csv.vim'                                                  " Falta Explicar
Plugin 'Syntastic'                                                " Falta Explicar
Plugin 'nvie/vim-flake8'                                          " Falta Explicar
Plugin 'python_fold_compact'                                      " Falta Explicar
Plugin 'tmhedberg/SimpylFold'                                     " Falta Explicar
Bundle 'Valloric/YouCompleteMe'                                   " Falta Explicar
Plugin 'jnurmine/Zenburn'                                         " Falta Explicar
Plugin 'altercation/vim-colors-solarized'                         " Falta Explicar
Plugin 'OnSyntaxChange'                                           " Falta Explicar
Plugin 'SearchComplete'                                           " Falta Explicar
Plugin 'EasyMotion'                                               " Falta Explicar
Plugin 'The-NERD-tree'                                            " Falta Explicar
Plugin 'surround.vim'                                             " Falta Explicar
Plugin 'Buffergator'                                              " Falta Explicar
Plugin 'The-NERD-Commenter'                                       " Falta Explicar
Plugin 'taglist.vim'                                              " Falta Explicar
Plugin 'mathematic.vim'                                           " Falta Explicar
Plugin 'Chiel92/vim-autoformat'                                   " Falta Explicar
Plugin 'kshenoy/vim-signature'                                    "
Plugin 'tpope/vim-fugitive'                                       " Falta Explicar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}   " Falta Explicar
Plugin 'jistr/vim-nerdtree-tabs'                                  " Falta Explicar
Plugin 'honza/vim-snippets'                                       " Falta Explicar
Plugin 'kien/ctrlp.vim'                                           " Falta Explicar
Plugin 'brennier/quicktex'                                        " Falta Explicar
Plugin 'lervag/vimtex'                                            " Falta Explicar
Plugin 'SirVer/ultisnips'                                         " Falta Explicar

call vundle#end()                                                 " Falta Explicar
filetype plugin indent on                                         " Falta Explicar


"=============================================================================
"Configurando as linguagens:                               
"=============================================================================

" HTML: Funcoes particulares para editar arquivos HTML
au BufNewFile,BufRead *.html,*.shtml so ~/.vimrc-html
" Cria um esqueleto de arquivo HTML
au BufNewFile *.html read ~/www/doc/vim/skel.html
