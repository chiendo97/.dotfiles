
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{{{
" delete to 'blackhole' register 
" Note: some register location
" 0 - the last yank
" " - the last delete
" / - the last search
" * - the system clipboard (most of the time)
"nnoremap d "_d
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


  "\ }}}

"{{{ 

nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)

"}}}

"{{{

nnoremap <c-p> :GFiles<cr>

"}}}

"{{{

                                                    " quick hide highlight search
nnoremap <silent> <leader>n :noh<CR>
                                                    " quick edit vimrc
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
                                                    " quick source vimrc (after edit normally)
nnoremap <Leader>sv :source $MYVIMRC<CR>

"}}}

"{{{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"}}}

"{{{
nnoremap gV `[v`]
"}}}
