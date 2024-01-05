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

" add colors to Vim
hi NormalColor guifg=Black guibg=Cyan ctermbg=Cyan ctermfg=0
hi InsertColor guifg=Black guibg=Green ctermbg=Green ctermfg=0
hi ReplaceColor guifg=Black guibg=DarkMagenta ctermbg=DarkMagenta ctermfg=0
hi VisualColor guifg=Black guibg=Red ctermbg=Red ctermfg=0
hi VisualLineColor guifg=Black guibg=Blue ctermbg=32 ctermfg=255

" make status line more useful
set statusline=
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualLineColor#%{(mode()=='V')?'\ \ VISUAL\ LINE\ ':''}
set statusline+=\ %F     " full file path
set statusline+=\ %M     " modified flag, i.e. are file changes unsaved?
set statusline+=\ %Y     " file type
set statusline+=\ %R     " read-only flag, i.e. is file read-only?
set statusline+=%=       " divider to separate left side from right
set statusline+=\ CHAR\ %4b\ (0x%04B)
set statusline+=\ \ %5l:%-3c  " line and column number
set statusline+=\ \ (%L\ lines)    " total number of lines

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
call plug#end()
