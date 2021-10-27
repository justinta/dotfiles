set nocompatible	" For Vundle
filetype off		" For Vundle

" --- General settings ---
set number	        " Show line numbers
set relativenumber      " Relative line numbers
set wrap	        " wraps lines
set showmatch	        " Highlight matching brace
set visualbell	        " Use visual bell (no beeping)

set hlsearch	        " Highlight all search results
set smartcase	        " Enable smart-case search
set ignorecase	        " Always case-insensitive
set incsearch	        " Searches for strings incrementally

set autoindent	        " Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	        " Enable smart-indent
set smarttab	        " Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set expandtab	        " changes tab to spaces

set cursorline
set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set complete+=kspell    " Spell checking
set completeopt=menuone,longest  " Menu options
set shortmess+=c        " Turn off the spam when autocompleting

set foldmethod=indent   " Fold on indents
set foldlevel=99        " All folds open
noremap <space> za

" --- Vundle settings ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/base16-vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-python/python-syntax'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'itkq/fluentd-vim'

call vundle#end()

" --- Python-Syntax settings ---
let g:python_highlight_all=1

" --- Nord settings ---
"colorscheme nord

" --- Base16 settings ---
set background=dark
colorscheme base16-tomorrow-night
let base16colorspace=256
let airline_theme='base16'

" --- CtrlP settings ---
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" --- NERDTree Settings ---
" Start Nerdtree with vim
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if Nerdtree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NERDTree Tabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_synchronize_view=1

filetype plugin indent on
syntax on
