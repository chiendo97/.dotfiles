"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" === General Config === {{{
"
syntax on

" Enable filetype plugins
filetype indent plugin on 

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set autoread            "Set to auto read when a file is changed from the outside
set autowrite           " Save automatically all the buffers in vim
set noautochdir           " Set the working directory

set ruler               "Always show current position

set showmatch           " highlight matching [{()}]

set timeoutlen=1000 ttimeoutlen=0

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set sw=2
set expandtab
set smarttab            " Handle tabs more intelligently

set autoindent

set number              " show line numbers
set relativenumber
set showcmd             " show command in bottom bar

set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to

set incsearch           " search as characters are entered
set hlsearch            " highlight matcheso
set ignorecase 
set smartcase
let @/ = ""             " no highlight after source vimrc

set hidden
set list
"set listchars=tab:▸\ ,eol:¬,space:.
set listchars=tab:▸\ ,eol:¬

set backspace=indent,eol,start
set nowrap

set foldmethod=marker
"set foldmethod=indent

" Disable newline with comment
set formatoptions-=cro
" }}}

" === Apperance === {{{
"colorscheme monotone
colorscheme onedark

" }}}
"
" === Autocmd === {{{
"
" Only do this part when compiled with support for autocommands
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

  " Syntax of these languages is fussy over tabs Vs spaces
  augroup filetype
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab smarttab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab smarttab
    autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab smarttab
  augroup END

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml

  augroup templates
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
  augroup END
endif
" }}}
