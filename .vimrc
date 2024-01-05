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
set autoindent
set tabstop=4 shiftwidth=4 expandtab
set foldmethod=marker

" bash-completion-like behavior
set wildmenu
set wildmode=list:longest

" make status line more useful
set statusline=
set statusline+=\ %F     " full file path
set statusline+=\ %M     " modified flag, i.e. are file changes unsaved?
set statusline+=\ %Y     " file type
set statusline+=\ %R     " read-only flag, i.e. is file read-only?
set statusline+=%=       " divider to separate left side from right
set statusline+=\ char\ %05b\ (0x%04B)
set statusline+=\ \ %05l:%03c  " line and column number
set statusline+=\ \ (%L\ lines)    " total number of lines

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()
