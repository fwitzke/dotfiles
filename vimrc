set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

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

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

map <Leader>i mmgg=G`m<CR>
map <Leader>c "+y<cr>
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <Leader>h :noh<cr>
