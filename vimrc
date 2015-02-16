set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start
set cindent
set expandtab
set hlsearch
set incsearch
set ignorecase
set nowrap
set noswapfile
set nu
set ruler
set shiftwidth=2
set smartcase
set softtabstop=2
set synmaxcol=250
set tabstop=2

" set winwidth=84
" set winheight=10
" set winminheight=10
" set winheight=999

syntax on

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" key mappings
map <Leader>i mmgg=G`m<CR>
map <Leader>c "+y<cr>
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <Leader>h :noh<cr>

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
