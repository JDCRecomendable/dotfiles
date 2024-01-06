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
set noshowmode

" bash-completion-like behavior
set wildmenu
set wildmode=list:longest

" add colors to Vim
hi CyanHi guifg=Black guibg=Cyan ctermbg=Cyan ctermfg=Black
hi YellowHi guifg=Black guibg=Yellow ctermbg=Yellow ctermfg=Black
hi GreenHi guifg=Black guibg=Green ctermbg=Green ctermfg=Black
hi RedHi guifg=Black guibg=Red ctermbg=124 ctermfg=White
hi LightGrayHi guifg=Black guibg=LightGray ctermbg=LightGray ctermfg=Black
hi BackgroundHi guifg=Black guibg=DarkBlue ctermbg=DarkBlue ctermfg=White
hi BackgroundRightHi guifg=Black guibg=Blue ctermbg=Blue ctermfg=White

" make status line more useful
set statusline=
set statusline+=%#CyanHi#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#YellowHi#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#GreenHi#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#RedHi#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#LightGrayHi#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#LightGrayHi#%{(mode()=='V')?'\ \ VISUAL\ LINE\ ':''}
set statusline+=%#BackgroundHi#%{''}
set statusline+=\ %f                   " relative file path
set statusline+=\ %Y                   " file type
set statusline+=%=                     " divider to separate left side from right
set statusline+=%#YellowHi#%(%m%)      " modified flag, i.e. are file changes unsaved?
set statusline+=%#BackgroundRightHi#%{''}
set statusline+=\ CHAR\ %4b            " character set (ASCII/Unicode)
set statusline+=\ \ %4l:%-3c           " line and column number
set statusline+=\ \ %Ll                " total number of lines
set statusline+=\ %#RedHi#%(%r%)       " read-only flag, i.e. is file read-only?

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()
