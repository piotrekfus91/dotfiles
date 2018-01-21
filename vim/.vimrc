set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

set mouse=a

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
