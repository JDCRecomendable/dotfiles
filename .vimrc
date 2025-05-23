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
set foldmethod=marker
set noshowmode

" bash-completion-like behavior
set wildmenu
set wildmode=list:longest

" add colors to Vim
hi CyanHi guifg=Black guibg=Cyan ctermbg=51 ctermfg=16
hi YellowHi guifg=Black guibg=Yellow ctermbg=220 ctermfg=16
hi GreenHi guifg=Black guibg=Green ctermbg=10 ctermfg=16
hi RedHi guifg=Black guibg=Red ctermbg=124 ctermfg=255
hi LightGrayHi guifg=Black guibg=LightGray ctermbg=248 ctermfg=16
hi BackgroundHi guifg=Black guibg=DarkBlue ctermbg=19 ctermfg=254
hi BackgroundRightHi guifg=Black guibg=Blue ctermbg=26 ctermfg=255

" make status line more useful
set statusline=
set statusline+=%#CyanHi#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#YellowHi#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#GreenHi#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#RedHi#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#LightGrayHi#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#LightGrayHi#%{(mode()=='V')?'\ \ VISUAL\ LINE\ ':''}
set statusline+=%#BackgroundHi#%{''}
set statusline+=\ %f                                          " relative file path
set statusline+=\ %Y                                          " file type
set statusline+=\ %#RedHi#%(%{&endofline?'':'[noeol]'}%)      " noeol flag, i.e. does file not have empty blank line?
set statusline+=%{&ff=='dos'?'[dos]':''}                      " dos flag, i.e. does file use CRLF for line endings?
set statusline+=%{&ff=='mac'?'[mac]':''}                      " mac flag, i.e. does file use CR for line endings?
set statusline+=%#BackgroundHi#%{''}
set statusline+=%=                                            " divider to separate left side from right
set statusline+=%#YellowHi#%(%m%)                             " modified flag, i.e. are file changes unsaved?
set statusline+=%#BackgroundRightHi#%{''}
set statusline+=\ CHAR\ %-4b                                  " character set (ASCII/Unicode)
set statusline+=\ \ %{&fileencoding?&fileencoding:&encoding}  " file-encoding
set statusline+=\ \ %4l:%-3c                                  " line and column number
set statusline+=\ \ %Ll                                       " total number of lines
set statusline+=\ %#RedHi#%(%r%)                              " read-only flag, i.e. is file read-only?

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'vimsence/vimsence'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()
