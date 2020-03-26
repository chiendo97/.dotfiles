"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" align text
Plug 'junegunn/vim-easy-align'

" Autoformat tool from Google
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" Macro editing: <leader>q + register
Plug 'zdcthomas/medit'

Plug 'vimwiki/vimwiki'

" Preview markdown live: :Mark
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Vim plugin that provides additional text objects
Plug 'kana/vim-textobj-user'
" Plug 'wellle/targets.vim'

" Auto close pair
Plug 'tmsvg/pear-tree'

" Some Git stuff
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ctags bar
Plug 'majutsushi/tagbar'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

"{{{ === colorscheme
Plug 'arzg/vim-colors-xcode'
Plug 'kjssad/quantum.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'nightsense/snow'
"}}}

" resize vim windows "
Plug 'simeji/winresizer'

" helpful with surround"
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" find file with name"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"{{{ === Syntax and languages
Plug 'derekwyatt/vim-scala'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"}}}

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree
Plug 'scrooloose/nerdtree'

" status bar
Plug 'itchyny/lightline.vim'

call plug#end()
