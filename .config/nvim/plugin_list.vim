"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tmsvg/pear-tree'

" Starter for vim
Plug 'mhinz/vim-startify'

" Some Git stuff
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ctags bar
"Plug 'majutsushi/tagbar'

" vim-tmux-navigation
Plug 'christoomey/vim-tmux-navigator'

"{{{ === colorscheme
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'rakr/vim-two-firewatch'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
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
" python syntax highlight
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" sql syntax
"Plug 'shmup/vim-sql-syntax'
" support many syntax "
Plug 'sheerun/vim-polyglot'
" other
"Plug 'blockloop/vim-swigjs'
"Plug 'jparise/vim-graphql'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'elzr/vim-json'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"}}}

" comment 
"Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

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
