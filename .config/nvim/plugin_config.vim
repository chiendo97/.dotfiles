
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" {{{ === gitgutter
let g:gitgutter_map_keys = 0
" }}}

" {{{ === lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ 
      \            [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'fileformat', 'fileencoding', 'filetype' ],
      \            [ 'absolutepath' ],
      \            ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'absolutepath': 'LightlineFilename',
      \ },
      \ }
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
" }}}

" {{{ === vim-go
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
" }}}

" {{{ === pear-tree
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_map_special_keys = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
imap <BS> <Plug>(PearTreeBackspace)
" imap <CR> <Plug>(PearTreeExpand)
" imap <Esc> <Plug>(PearTreeFinishExpansion)
" }}}

" === latex_preview === {{{
"autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
"}}}

" === coc_vim === {{{
augroup mygroup
  autocmd!
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Set default python path
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" === winresizer === {{{
let g:winresizer_start_key = '<C-T>'
" }}}

" === markdown === {{{
let g:mkdp_auto_start = 0
let g:mkdp_echo_preview_url = 1
" }}}

" === nerdtree === {{{
" Show hidden files/directories
let g:NERDTreeShowHidden = 1

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

" Custom icons for expandable/expanded directories
let g:NERDTreeDirArrowExpandable = '⬏'
let g:NERDTreeDirArrowCollapsible = '⬎'

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" }}}

" === emmet-vim === {{{
let g:user_emmet_leader_key='<C-Z>'
"" }}}
