"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" === General Config === {{{

syntax on

" Enable filetype plugins
filetype indent plugin on 

" if hidden is not set, TextEdit might fail.
set hidden

"" Better display for messages
set cmdheight=2

"" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=1000

"" don't give |ins-completion-menu| messages.
set shortmess+=c

"" always show signcolumns
set signcolumn=yes

set autoread            "Set to auto read when a file is changed from the outside
set autowrite           " Save automatically all the buffers in vim
set noautochdir         " Set the working directory

set ruler               "Always show current position

set showmatch           " highlight matching [{()}]

set timeoutlen=1000 ttimeoutlen=0

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab            " Handle tabs more intelligently

set autoindent
set cindent
set ts=4 sts=4 sw=4 expandtab smarttab
set cino+=j1,(0,ws,Ws
set cinoptions+=g0

set number              " show line numbers
set relativenumber
set showcmd             " show command in bottom bar

set cursorline          " highlight current line
" set colorcolumn=80

set wildmenu            " visual autocomplete for command menu
set wildmode=longest:full

set lazyredraw          " redraw only when we need to

set incsearch           " search as characters are entered
set hlsearch            " highlight matcheso
set ignorecase 
set smartcase
let @/ = ""             " no highlight after source vimrc

set list
set listchars=tab:▸\ ,eol:¬

set backspace=indent,eol,start
set wrap

set foldmethod=marker

set formatoptions-=r formatoptions-=c formatoptions-=o " Disable newline with comment

set noeb vb t_vb=       " Tell vim to shut up
" }}}

" === Apperance === {{{
set termguicolors

" colorscheme ayu

" set background=light
" colorscheme PaperColor

" set cursorline
" colorscheme onehalflight

" set background=light
" colorscheme quantum

" set background=light
" colorscheme snow

" set background=light
" colorscheme one

" colorscheme xcodewwdc
" colorscheme xcodelighthc
colorscheme xcodelight
" }}}

" === Autocmd === {{{
"
" Only do this part when compiled with support for autocommands
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

  " Syntax of these languages is fussy over tabs Vs spaces
  augroup filetype
    autocmd!
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType cpp setlocal ts=4 sts=4 sw=4 noexpandtab smarttab
    autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab smarttab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab smarttab
    autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd FileType zsh setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd FileType lua setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd FileType sql setlocal ts=4 sts=4 sw=4 expandtab smarttab
    autocmd FileType xml setlocal ts=2 sts=2 sw=2 expandtab smarttab
    autocmd BufEnter * set fo-=c fo-=r fo-=o
  augroup END

  augroup templates
    autocmd!
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
  augroup END
  
  augroup autoread
    autocmd!
    autocmd CursorHold * checktime 
  augroup END
endif
" }}}
