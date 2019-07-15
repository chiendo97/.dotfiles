"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'kamykn/spelunker.vim'

"Plug 'xuhdev/vim-latex-live-preview'

"Plug 'lervag/vimtex'

Plug 'joshdick/onedark.vim'

Plug 'simeji/winresizer'

Plug 'machakann/vim-sandwich'

"Plug 'Lokaltog/vim-monotone'

"Plug 'jiangmiao/auto-pairs'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'scrooloose/nerdcommenter'

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': 'yarn install --frozen-lockfile'}

Plug 'scrooloose/nerdtree'

Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'mattn/emmet-vim'

call plug#end()
