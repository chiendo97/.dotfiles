"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'inkarkat/vim-searchhighlighting'

Plug 'derekwyatt/vim-scala'

" Plug 'camspiers/animate.vim'
" Plug 'camspiers/lens.vim'

" Plug 'junegunn/goyo.vim'

Plug 'vimwiki/vimwiki'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'wellle/targets.vim'

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

"{{{ === Syntax
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
"}}}

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree "
Plug 'scrooloose/nerdtree'

" status bar
Plug 'itchyny/lightline.vim'

" super snippet html
Plug 'mattn/emmet-vim'

call plug#end()
