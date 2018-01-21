set nocompatible

filetype off

"--- Plugins ---"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

filetype plugin indent on

"--- Common settings ---"
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set expandtab
set shiftwidth=4
set softtabstop=4

set mouse=a

"---Look and feel ---"
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set laststatus=2
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

"--- NERD ---"
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

"--- Syntastic ---"
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

"--- Tags ---"
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
nmap <silent> <leader>b :TagbarToggle<CR>
autocmd BufEnter * nested :call tagbar#autoopen(0)

"--- Git ---"
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1
