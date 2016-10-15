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
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start
set cindent
set expandtab
set hlsearch
set incsearch
set ignorecase
set mouse=a
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

map <Leader>d orequire 'pry'; binding.pry<esc><CR>

" NERDTree Reveal
map <Leader>r :NERDTreeFind<CR>

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"
map <Leader>t :wa\|:call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" colorscheme github
" colorscheme railscasts
" colorscheme monokai
colorscheme distinguished
if &diff
  colorscheme myscheme
endif

" making sure vim loads the right rvm ruby (http://rvm.io/integration/vim)
set shell=/bin/sh
