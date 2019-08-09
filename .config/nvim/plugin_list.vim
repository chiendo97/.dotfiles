"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" change tab name "
"Plug 'gcmt/taboo.vim'

" find all file with text
Plug 'mhinz/vim-grepper'

" one color theme "
Plug 'joshdick/onedark.vim'

" resize vim windows "
Plug 'simeji/winresizer'

" helpful with surround"
Plug 'machakann/vim-sandwich'

" one color theme "
"Plug 'Lokaltog/vim-monotone'

"Plug 'jiangmiao/auto-pairs'

" find file with name"
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" "
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" preview markdown live "
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" "
Plug 'scrooloose/nerdcommenter'

" coc for completion"
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': 'yarn install --frozen-lockfile'}

" directory tree "
Plug 'scrooloose/nerdtree'

" support many syntax "
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'mattn/emmet-vim'

call plug#end()
