set nocompatible
set rtp+=/opt/homebrew/opt/fzf
filetype plugin on
set omnifunc=syntaxComplete#Complete
set number
set laststatus=2

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
call plug#end()
