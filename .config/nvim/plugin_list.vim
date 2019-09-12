"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

Plug 'dominikduda/vim_timebox'
Plug 'kkoomen/vim-doge'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

"{{{ === colorscheme
" colorscheme
Plug 'ayu-theme/ayu-vim'
Plug 'arzg/vim-corvine'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'whatyouhide/vim-gotham'
Plug 'w0ng/vim-hybrid'
Plug 'joshdick/onedark.vim'
Plug 'netsgnut/arctheme.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-monotone'
"}}}

" resize vim windows "
Plug 'simeji/winresizer'

" helpful with surround"
Plug 'tpope/vim-surround'
"Plug 'tpope/vim-repeat'

" find file with name"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

"{{{ === Syntax
" python syntax highlight
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" sql syntax
Plug 'shmup/vim-sql-syntax'
" support many syntax "
Plug 'sheerun/vim-polyglot'
"}}}

" preview markdown live "
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree "
Plug 'scrooloose/nerdtree'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" super snippet html
Plug 'mattn/emmet-vim'

call plug#end()
