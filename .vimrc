set nocompatible

if len(system("uname -a | grep Ubuntu"))
    source /usr/share/doc/fzf/examples/fzf.vim
elseif len(system("uname | grep Darwin"))
    set rtp+=/opt/homebrew/opt/fzf
endif

filetype plugin on
set omnifunc=syntaxComplete#Complete
set number
set laststatus=2

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()
