
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{{{ === Git-messenger
let g:git_messenger_no_default_mappings=v:true
nmap M <Plug>(git-messenger)
"}}}

"{{{ === VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding = 'list:quick'
"}}}

"{{{ === Sneak
" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
"}}}

" {{{ === NERDCommenter
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
" }}}

" " {{{ === Gitgutter
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

" {{{ === Lightline
let g:lightline = {
      \ 'colorscheme': '2intellij',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'absolutepath', 'readonly', 'modified' ] ],
      \   'right': [ 
      \            [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'filetype' ]
      \            ]
      \ },
      \ 'inactive' : {
      \   'left': [ [ 'absolutepath' ] ],
      \   'right': [ [ 'lineinfo' ],
      \            [ 'percent' ] ] 
      \ },
      \ 'component_function': {
      \   'absolutepath': 'LightlineFilename',
      \   'mode': 'LightlineMode',
      \   'filetype': 'LightlineFiletype',
      \ },
      \ }

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ?  'Nerd Tree':
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ lightline#mode()
endfunction

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  let absolutepath = ''
  if path[:len(root)-1] ==# root
    let absolutepath = path[len(root)+1:]
  else
    let absolutepath = expand('%')
  endif
  return winwidth(0) > 70 ? absolutepath : expand('%')

endfunction
" }}}

" {{{ === Vim-go
let g:go_gopls_enabled = 0 " Disable vim-go gopls since we use coc-go gopls instead
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports" " Refactor code when save
let g:go_doc_popup_window = 1 " Use popup windows of neovim
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment', 'comment'] " fold settings

" Highlight settings
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_build_constraints      = 0
let g:go_highlight_chan_whitespace_error  = 0
let g:go_highlight_extra_types            = 0 " io.Reader
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_functions              = 1
let g:go_highlight_function_parameters    = 0
let g:go_highlight_generate_tags          = 0
let g:go_highlight_operators              = 0
let g:go_highlight_space_tab_error        = 0
let g:go_highlight_string_spellcheck      = 0
let g:go_highlight_types                  = 0 " struct and interfaces names
let g:go_highlight_variable_assignments   = 0
let g:go_highlight_variable_declarations  = 0
" }}}

" === Latex_preview === {{{
let g:livepreview_previewer = 'open -a Preview'
"}}}

" === Coc_vim === {{{
" Set default python path
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" }}}

" === Winresizer === {{{
let g:winresizer_start_key = '<C-T>'
" }}}

" === Markdown === {{{
let g:mkdp_auto_start = 0
let g:mkdp_echo_preview_url = 1
" }}}

" === Nerdtree === {{{
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
