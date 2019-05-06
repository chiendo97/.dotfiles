
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

nnoremap gV `[v`]
