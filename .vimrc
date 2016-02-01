set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kien/ctrlp.vim'
Plugin 'Gundo'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'wavded/vim-stylus'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'othree/html5.vim'
Plugin 'haul2u/vim-css3-syntax'

" End Plugins
call vundle#end()
filetype plugin indent on

" Syntax highlighting
syntax on

" Base16 Theme
let base16colorspace=256
set background=dark

" Splits
" Use ctrl-[hjkl] to select splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Line Numbers
set number

" Spellcheck git commit messages
autocmd Filetype gitcommit setlocal spell

" Set Rule at 80 chars
set colorcolumn=80

" Set soft tabs
set expandtab

" Set tab width
set tabstop=2
set shiftwidth=2
set softtabstop=2
