
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Config:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" === latex_preview === {{{

"autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

"}}}

" === coc_vim === {{{

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Set default python path
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" }}}

" === winresizer === {{{
let g:winresizer_start_key = '<C-T>'
" }}}

" === markdown === {{{
let g:mkdp_auto_start = 1
let g:mkdp_echo_preview_url = 1
" }}}

" === nerdcommenter === {{{
nnoremap <c-c> :call NERDComment(0,"toggle")<CR>
vnoremap <c-c> :call NERDComment(0,"toggle")<CR>
" }}}
"
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

" Map <C-n> to toogle NERDTree
map <C-n> :NERDTreeToggle<CR>
" }}}
"
" === Vim airline ==== {{{

" Enable extensions
let g:airline_extensions = ['branch', 'tabline', 'coc']

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)

let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0

"let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#buf_label_first = 0
let g:airline#extensions#tabline#buffer_idx_mode = 0

let g:airline#extensions#tabline#alt_sep = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

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

" }}}

" === airline_theme === {{{
"let g:airline_theme='minimalist'
" }}}
"
" === emmet-vim === {{{
let g:user_emmet_leader_key='<C-Z>'
"" }}}