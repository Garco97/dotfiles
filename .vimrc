set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'yuezk/vim-js'
call plug#end()
"PLUG ENDS

"EASYMOTION CONF
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
"END EASYMOTION CONF

syntax on
set nu
set shiftwidth=4
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set mouse=a
set cindent
set smartindent
set autoindent
set tabstop=4
set hlsearch
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
colorscheme morning

map <F2> :NERDTreeToggle<cr> 
map <F3> :TlistToggle<cr>
map <F4> :term<cr>

packadd! dracula
syntax enable 
colorscheme gruvbox
set bg=dark
set guifont=Monospace\ Bold\ 15
set nu rnu
set laststatus=2

let g:python_highlight_all = 1
