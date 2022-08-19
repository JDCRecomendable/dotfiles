set nocompatible
set rtp+=/usr/bin/fzf
set t_u7=
filetype plugin on
set omnifunc=syntaxComplete#Complete
set number
set laststatus=2

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
call plug#end()
