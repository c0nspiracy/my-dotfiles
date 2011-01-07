" Disable Vi compatibility
" This must be first because it changes the effects of other options
set nocompatible

syntax enable
filetype plugin indent on

" Allow backgrounding buffers without writing them,
" and remember marks/undo for backgrounded buffers
set hidden

" Remember more commands and search history
set history=1000

set showcmd
set showmode

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Store temporary files in a central location
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Made tab completion for files/buffers act like bash
set wildmenu
set wildmode=list:longest

" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch

set textwidth=78

set number
set ruler

set incsearch
set hlsearch

set wrap
set scrolloff=3

set title

set visualbell

colorscheme vividchalk

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

set list listchars=trail:·,extends:>,tab:»·

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>
