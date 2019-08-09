
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{{{ === fuzzy find
nnoremap <leader>g :GFiles<cr>| " fuzzy find files under version control in the working directory (where you launched Vim from)"
nnoremap <leader>f :Files<cr>|     " fuzzy find files in the working directory (where you launched Vim from)
nnoremap <leader>/ :BLines<cr>|    " fuzzy find lines in the current file
nnoremap <leader>b :Buffers<cr>|   " fuzzy find an open buffer
nnoremap <leader>r :Rg |           " fuzzy find text in the working directory
nnoremap <leader>c :Commands<cr>|  " fuzzy find Vim commands (like Ctrl-Shift-P in Sublime/Atom/VSC)
"}}}

"{{{ === Motions
" Move down to wrap line
nnoremap j gj

" Move up to wrap line
nnoremap k gk

" Move tab
nnoremap L gt

" Move tab
nnoremap H gT

" Move windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"}}}

"{{{ === Yank
" delete to 'blackhole' register 
" Note: some register location
" 0 - the last yank
" " - the last delete
" / - the last search
" * - the system clipboard (most of the time)
"nnoremap d "_d
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
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>la  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>le  :<C-u>CocList extensions<cr>
" Find symbol of current document
nnoremap <silent> <leader>lo  :<C-u>CocList outline<cr>
" Resume latest coc list
nnoremap <silent> <leader>lp  :<C-u>CocListResume<CR>

"}}}

"{{{ === tab for completion

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
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

"{{{ === rep

nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)

"}}}

"{{{ === vimrc files

                                                    " quick hide highlight search
nnoremap <silent> <leader>n :noh<CR>
                                                    " quick edit vimrc
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
                                                    " quick source vimrc (after edit normally)
nnoremap <Leader>sv :source $MYVIMRC<CR>

"}}}

"{{{ === visual recent pasted code

nnoremap gV `[v`]

"}}}

"{{{ === Folding

"Open and close folds
nnoremap <space> za   

"}}}
