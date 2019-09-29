
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>n :noh<CR>

"{{{ === NERDCommenter
nnoremap <c-c> :call NERDComment(0,"toggle")<CR>
vnoremap <c-c> :call NERDComment(0,"toggle")<CR>
"}}}

"{{{ === NERDTree
"map <C-n> :NERDTreeToggle<CR>
"}}}

"{{{ === fuzzy find
nnoremap <leader>g :GFiles<cr>|    " fuzzy find files under version control in the working directory (where you launched Vim from)"
nnoremap <leader>f :Files<cr>|     " fuzzy find files in the working directory (where you launched Vim from)
nnoremap <leader>/ :BLines<cr>|    " fuzzy find lines in the current file
nnoremap <leader>b :Buffers<cr>|   " fuzzy find an open buffer
nnoremap <leader>r :Rg |           " fuzzy find text in the working directory
nnoremap <leader>c :Commands<cr>|  " fuzzy find Vim commands (like Ctrl-Shift-P in Sublime/Atom/VSC)
nnoremap <leader>h :History<cr>|   " fuzzy find files from most recent files
nnoremap <leader>l :Lines<cr>|     " fuzzy find line in loaded buffers
nnoremap <leader>m :Maps<cr>|      " fuzzy find key mappings
nnoremap <leader>H :Helptags!<cr>| " fuzzy find documentation
"}}}

"{{{ === Tab navigation
nnoremap <leader>t :tabedit<CR>
"nnoremap L gt  " Move tab
"nnoremap H gT  " Move tab
nnoremap g1 1gt
nnoremap g2 2gt
nnoremap g3 3gt
nnoremap g4 4gt
nnoremap g5 5gt
nnoremap g6 6gt
nnoremap g7 7gt
nnoremap g8 8gt
nnoremap g9 9gt
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
vnoremap Y "*y | "Copy to clipboard
"}}}

"{{{ === Coc

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
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>ia  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ie  :<C-u>CocList extensions<cr>
" Open coc list
nnoremap <silent> <leader>il  :<C-u>CocList<CR>
" Open coc commands
nnoremap <silent> <leader>ic  :<C-u>CocList commands<CR>

"}}}

"{{{ === Autocomplete

inoremap <silent><expr> <cr> 
      \ pumvisible() ? coc#_select_confirm() : 
      \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

"}}}

"{{{ === vimrc files
nnoremap <Leader>ev :<C-u>tabedit $MYVIMRC<CR>           " quick edit vimrc 
nnoremap <Leader>sv :<C-u>source $MYVIMRC<CR>            " quick source vimrc (after edit normally)
nnoremap <Leader>ec :<C-u>CocConfig<CR>                  " quick edit coc config
"}}}

""{{{ === visual recent pasted code
nnoremap gV `[v`]
"}}}

"{{{ === Folding
nnoremap <space> za   " Open and close folds
"}}}
