set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb' " github extension for vim-fugitive
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'sickill/vim-pasta'
" Plugin 'Quramy/tsuquyomi' " typescript integration
Plugin 'w0rp/ale' " linting

" Lightline
Plugin 'itchyny/lightline.vim'
set laststatus=2

call vundle#end()            " required
syntax enable
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

" not using ctrlp anymore.
" if executable('ag')
"   " set grepprg=ag\ --nogroup\ --nocolor
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_use_caching = 0
" endif

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
let g:rspec_command = "!bundle exec rspec {spec}"
map <Leader>t :wa\|:call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" FZF
map <C-p> :FZF<CR>

" Ack meets Silver Search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" colorscheme github
" colorscheme railscasts
" colorscheme monokai
colorscheme distinguished

" making sure vim loads the right rvm ruby (http://rvm.io/integration/vim)
set shell=/bin/sh
