
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on

                        "Enable filetype plugins
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

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

set autoread            "Set to auto read when a file is changed from the outside
set autowrite           " Save automatically all the buffers in vim
set autochdir           " Set the working directory

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
set noexpandtab
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
set listchars=tab:▸\ ,eol:¬

set backspace=indent,eol,start
set nowrap

"set t_Co=256

"set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')



"Plug 'w0rp/ale'

Plug 'simeji/winresizer'
let g:winresizer_start_key = '<C-T>'

Plug 'machakann/vim-sandwich'

Plug 'Lokaltog/vim-monotone'

"Plug 'joshdick/onedark.vim'

Plug 'jiangmiao/auto-pairs'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
let g:mkdp_auto_start = 1
let g:mkdp_echo_preview_url = 1

Plug 'vimwiki/vimwiki'
autocmd FileType vimwiki  :nnoremap <Space><Space> <Plug>VimwikiToggleListItem

"Plug 'flazz/vim-colorschemes'
"Plug 'NLKNguyen/papercolor-theme'

Plug 'scrooloose/nerdcommenter'
nnoremap <c-c> :call NERDComment(0,"toggle")<CR>
vnoremap <c-c> :call NERDComment(0,"toggle")<CR>

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': 'yarn install --frozen-lockfile'}
let g:coc_force_debug = 1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

Plug 'scrooloose/nerdtree'
" === NERDTree === "
" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

" Map <C-n> to toogle NERDTree
map <C-n> :NERDTreeToggle<CR>

Plug 'sheerun/vim-polyglot'

"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'othree/yajs.vim'

"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
autocmd BufNewFile,BufRead *.tsx,*.jsx setlocal ts=4 sts=4 sw=4 expandtab
"let g:typescript_indent_disable = 1
"Plug 'ianks/vim-tsx'

"Plug 'HerringtonDarkholme/yats.vim'
"autocmd BufNewFile,BufRead *.tsx setlocal ts=2 sts=2 sw=2 expandtab

"Plug 'pangloss/vim-javascript'
"Plug 'maxmellon/vim-jsx-pretty'

Plug 'vim-airline/vim-airline'
" === Vim airline ==== "
" Enable extensions
let g:airline_extensions = ['branch', 'coc']

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'

let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''

" Disable vim-airline in preview mode
let g:airline_exclude_preview = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

" Define custom airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '❮'
let g:airline_right_sep = '❯'

" Don't show git changes to current file in airline
let g:airline#extensions#hunks#enabled=0

Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='minimalist'

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','

"Plug 'morhetz/gruvbox'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Apperance:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"colorscheme gruvbox
"colorscheme PaperColor
"colorscheme onedark
"colorscheme off
colorscheme monotone
"set background=light
"set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" delete to 'blackhole' register 
" Note: some register location
" 0 - the last yank
" " - the last delete
" / - the last search
" * - the system clipboard (most of the time)

"nnoremap d "_d

nnoremap <c-p> :GFiles<cr>
                                                    " quick hide highlight search
nnoremap <silent> <leader>n :noh<CR>
                                                    " quick edit vimrc
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
                                                    " quick source vimrc (after edit normally)
nnoremap <Leader>sv :source $MYVIMRC<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" This mapping for switching tab with 1 2 3 .. 0
"nnoremap H gT
"nnoremap L gt

nnoremap gV `[v`]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behavior && extend:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmd: 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Only do this part when compiled with support for autocommands
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab smarttab
  autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab smarttab
  autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab smarttab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml

  if has("autocmd")
    augroup templates
      autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
    augroup END
  endif
endif

