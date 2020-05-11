
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" {{{ === NERDCommenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
" }}}

" " {{{ === gitgutter
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_added = '▌'
let g:gitgutter_sign_modified = '▌'
let g:gitgutter_sign_removed = '▁'
let g:gitgutter_sign_removed_first_line = '▌'
let g:gitgutter_sign_modified_removed = '▌'
let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 1
highlight GitGutterDelete guifg=#F97CA9
highlight GitGutterAdd    guifg=#BEE275
highlight GitGutterChange guifg=#96E1EF
" }}}

" {{{ === lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'absolutepath', 'readonly', 'modified' ] ],
      \   'right': [ 
      \            [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'fileformat', 'fileencoding', 'filetype' ]
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
let g:go_doc_popup_window = 1
" }}}

" === latex_preview === {{{
let g:livepreview_previewer = 'open -a Preview'
"}}}

" === coc_vim === {{{
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
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeAutoDeleteBuffer = 1
let loaded_netrwPlugin = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" }}}
