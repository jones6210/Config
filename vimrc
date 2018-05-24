""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""					
set nocompatible            
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"call vundle#begin('~/config/plugins')


Plugin 'VundleVim/Vundle.vim'
Plugin 'c.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()           
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Highlight search results
set hlsearch

" Search as characters entered
set incsearch

" Show current position row and column
set ruler

" Colour statusline
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Colours
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"Lightline colour
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Accessibility
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable touchpad support
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"					Text, tab etc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use smart tabs
set smarttab

" Linebreak on 100 characters
set lbr
set tw=100

" Tap space
set tabstop=4
set softtabstop=4

