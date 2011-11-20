" Author: Robert Newbould <robert.newbould+github@gmail.com>
" Source: https://github.com/c0nspiracy/dotfiles
" Load pathogen {{{
        filetype off
        call pathogen#runtime_append_all_bundles()
" }}}
" Basic configuration {{{
        syntax on
        filetype plugin indent on

        set nocompatible

        " Allow backgrounding buffers without writing them,
        " and remember marks/undo for backgrounded buffers
        set hidden

        " Allow backspacing over everything in insert mode
        set backspace=indent,eol,start

        set encoding=utf-8
        set termencoding=utf-8

        " Store temporary files in a central location
        set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
        set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

        set ignorecase
        set smartcase
        set title
        " Define , as map leader {{{
                let mapleader = ','
        " }}}
        " Wild menu {{{
                set wildmenu
                set wildmode=list:longest
        " }}}
        set visualbell
" }}}
" UI Options {{{
        set list listchars=trail:·,extends:>,tab:»·
        set laststatus=2
        set incsearch
        set hlsearch
        set number
        set ruler
        set scrolloff=3
        set showcmd
        set showmode
        set history=1000
" }}}
" Layout / Text formatting {{{
        set autoindent
        set wrap
        set textwidth=78
        set shiftwidth=4
        set tabstop=4
        set softtabstop=4
        set expandtab
" }}}

set showmatch

set t_Co=256
set background=dark
colorscheme distinguished

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>
