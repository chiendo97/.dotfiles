
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" {{{ === Align
xmap ga <Plug>(EasyAlign)| " Start interactive EasyAlign in visual mode (e.g. vipga)
" }}}

" {{{ === Line navigation
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
" ^ - jump to the first non-blank character of the line
nnoremap H ^
vnoremap H ^
" g_ - jump to the end of the line
nnoremap L g_
vnoremap L g_
" }}}

" {{{ === Highlight
nnoremap <silent> * :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>
nmap <silent> <C-C> :noh<CR><esc>
imap <silent> <C-C> <esc><C-C>
vmap <silent> <C-C> <esc><C-C>
" }}}

" {{{ === Git
nnoremap <leader>b :<C-U>Gblame<cr>|    " Open git blame for current file"
" }}}

"{{{ === NERDCommenter
nmap <C-_> <plug>NERDCommenterToggle| " map <C-/> to use toggle comment
vmap <C-_> <plug>NERDCommenterToggle| " map <C-/> to use toggle comment
"}}}

"{{{ === NERDTree
nnoremap <leader>c :NERDTreeToggle<CR>
"}}}

"{{{ === Fuzzy search
nnoremap <leader>g :GFiles<cr>|          " fuzzy find files under version control in the working directory (where you launched Vim from)"
nnoremap <leader>f :Files<cr>|           " fuzzy find files in the working directory (where you launched Vim from)
nnoremap <leader>r :Rg |                 " fuzzy find text in the working directory
nnoremap <leader>h :History<cr>|         " fuzzy find files from most recent files
nnoremap <leader>m :Maps<cr>|            " fuzzy find key mappings
nnoremap <leader>H :Helptags!<cr>|       " fuzzy find documentation
nnoremap <leader>C :<C-U>Commands!<cr>|  " fuzzy find documentation
nnoremap <leader>l :<C-U>Lines<cr>|      " fuzzy find line
"}}}

"{{{ === Tab navigation
nnoremap <leader>t :tabedit<CR>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>j gt
nnoremap <leader>k gT
"}}}

"{{{ === Motions
nnoremap <silent> j gj| " Move down to wrap line
nnoremap <silent> k gk| " Move up to wrap line
"}}}

"{{{ === Yank

" Note: some register location
" 0 - the last yank
" " - the last delete
" / - the last search
" * - the system clipboard (most of the time)
" :*y

" delete to 'blackhole' register 
"nnoremap d "_d

vnoremap Y "*y| " Copy to clipboard
vnoremap P "0p| " Paste last yank
"}}}

"{{{ === Coc

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>en <Plug>(coc-rename)|                           " Remap for rename current word

" Using CocList
nnoremap <silent> <leader>ia  :<C-u>CocList diagnostics<cr>|  " Show all diagnostics
nnoremap <silent> <leader>ie  :<C-u>CocList extensions<cr>|   " Manage extensions
nnoremap <silent> <leader>il  :<C-u>CocList<CR>|              " Open coc list
nnoremap <silent> <leader>ic  :<C-u>CocList commands<CR>|     " Open coc commands
"}}}

"{{{ === Autocomplete

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
"}}}

"{{{ === Config files
nnoremap <Leader>ev :<C-u>e $MYVIMRC<CR>                  " quick edit vimrc 
nnoremap <Leader>sv :<C-u>source $MYVIMRC<CR>             " quick source vimrc (after edit normally)
nnoremap <Leader>ec :<C-u>CocConfig<CR>                   " quick edit coc config
"}}}

""{{{ === Visual recent pasted code
nnoremap gV `[v`]
"}}}

"{{{ === Folding
nnoremap <leader><space> za   " Open and close folds
"}}}
