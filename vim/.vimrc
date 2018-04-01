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
set showmode                            " Mostra o modo que você esta (Inserção, Visual ou Comandos)
set number                              " Numerando as linhas do arquivo
set confirm                             " Confima se você realmente deseja sair e/ou salvar
set wildmenu                            " Autocomplete dos comandos usando o TAB
set ruler                               " Mostra a posição do cursor 
set showcmd                             " Mostra os comandos sendo executados
set visualbell                          " Em caso de se cometer um comando inválido aciona-se um alarme visual
set hlsearch                            " Ativa o contraste de cores dando realce a pesquisa de palavras
set mouse=a                             " Ativa o uso do mouse
set cursorline                          " Deixa a linha do Cursor em destaque

"============================================================================
" Configuração de Identação
"============================================================================

set smartindent                        " Identação para C 
set tabstop=4                          " Tab com 4 espaços
set shiftwidth=4                       " Identação com Espaços
set expandtab                          " Troca o Tab por Espaços

"============================================================================
"Configuração do Tema do Vim
"============================================================================

set background=light                    " Pode ser Dark
colorscheme breezy                      " Chama o tema que está baixado
let g:airline_theme='breezy'            " Ativa o tema do Airline
set termguicolors                       " Nao sei o que faz, mas é tema

"=============================================================================
"Configuração do LaTeX 
"=============================================================================


let g:vimtex_view_general_viewer = 'zathura'                     " Abre o arquivo com o Zathura
let g:vimtex_view_general_options = ' file:@pdf\#src:@line@tex'  " Não faço ideia
nnoremap <f2> :VimtexCompile<CR>                                 " Compila o LaTeX
au BufNewFile,BufRead *.tex set ft=tex                             " Põe o arquivo com o Tex

syntax enable

"=============================================================================
"Atalhos:                              
"=============================================================================


map  <S-Insert> <MiddleMouse>                   " Seleciona um bloco de texto com o mouse
map! <S-Insert> <MiddleMouse>                   " Cola com o botão do meio do mouse

nnoremap <f1> :NERDTreeToggle<CR>               " Abre o Diretório de arquivos
let NERDTreeIgnore=['\.pyc$', '\~$']            " Ignora arquivos no diretório

nmap <c-w> :w<CR>                               " Normal Mode: Salva com Ctrl + S
imap <c-w> <c-o><c-s>                           " Insert Mode: Vai pro Normal Mode e Salva com Ctrl + S
nmap <F4> :w<CR>                                " Normal Mode: Salva com F4
imap <F4> <c-o><F2>                             " Insert Mode: Vai pro Normal Mode e Salva com F4





"=============================================================================
"Plugins:                           
"=============================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 	Plugin 'vim-airline/vim-airline'       " Faz parte do tema do seu vim
	Plugin 'The-NERD-tree'                 " Plugin diretório de arquivo  
	
	Plugin 'lervag/vimtex'                 " Plugin para LaTeX
	Plugin 'brennier/quicktex'             " Plugin que faz um autocomplete para LaTeX

call vundle#end()                                                 
filetype plugin indent on 
