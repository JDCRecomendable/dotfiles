set nocompatible
set rtp+=/opt/local/share/fzf/vim
filetype plugin on
set omnifunc=syntaxComplete#Complete
set number
set laststatus=2

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()
