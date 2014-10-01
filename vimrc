set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

set backspace=indent,eol,start
set cindent
set cursorline
set expandtab
set hlsearch
set incsearch
set ignorecase
set rnu
set ruler
set shiftwidth=2
set smartcase
set softtabstop=2
set tabstop=2

" set winwidth=84
" set winheight=10
" set winminheight=10
" set winheight=999

execute pathogen#infect()
syntax on
filetype plugin indent on

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

map <Leader>i mmgg=G`m<CR>
map <Leader>c "+y<cr>
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <Leader>h :noh<cr>
