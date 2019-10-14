"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Some Git stuff
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'majutsushi/tagbar'

Plug 'Raimondi/delimitMate'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

"{{{ === colorscheme
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'tyrannicaltoucan/vim-quantum'
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
" other
Plug 'blockloop/vim-swigjs'
Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty'
"}}}

" comment 
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" directory tree "
Plug 'scrooloose/nerdtree'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'

" super snippet html
Plug 'mattn/emmet-vim'

call plug#end()
