"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

Plug 'ap/vim-css-color'

Plug 'rhysd/git-messenger.vim'

Plug 'danilamihailov/vim-wiki-tips'

" align text ga=
Plug 'junegunn/vim-easy-align'

" Macro editing: <leader>q + register
Plug 'zdcthomas/medit'

" Vim wiki <leader>ww to open
Plug 'vimwiki/vimwiki'

" Preview markdown live: :Mark
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'

" Some Git stuff
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ctags bar
Plug 'majutsushi/tagbar'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

" colorscheme
Plug 'chiendo97/intellij.vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" resize vim windows with ctrl + T
Plug 'simeji/winresizer'

" helpful with surround"
Plug 'machakann/vim-sandwich'

" find file with name"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"{{{ === Syntax and languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'derekwyatt/vim-scala'
Plug 'sheerun/vim-polyglot'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mattn/emmet-vim'
"}}}

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()
