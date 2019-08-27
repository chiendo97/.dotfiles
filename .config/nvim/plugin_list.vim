"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Fold
Plug 'Konfekt/FastFold'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

" find all file with text
Plug 'mhinz/vim-grepper'

" colorscheme
Plug 'whatyouhide/vim-gotham'
Plug 'w0ng/vim-hybrid'
Plug 'joshdick/onedark.vim'
Plug 'netsgnut/arctheme.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-monotone'

" resize vim windows "
Plug 'simeji/winresizer'

" helpful with surround"
Plug 'machakann/vim-sandwich'

"Plug 'jiangmiao/auto-pairs'

" find file with name"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" "
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" preview markdown live "
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree "
Plug 'scrooloose/nerdtree'

" support many syntax "
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" super snippet html
Plug 'mattn/emmet-vim'

call plug#end()
