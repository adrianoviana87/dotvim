scriptencoding utf-8
set encoding=utf8
" Enable syntax highlighting
syntax enable

set relativenumber
set number

set background=dark

" Height of the command bar
set cmdheight=1
set cursorline
set termencoding=utf8
set t_Co=256
set t_ut=

set fillchars=vert:┃,fold:⋯
set foldmethod=indent
set foldlevelstart=99 " Start unfolded

augroup locallistchars_group
    autocmd!
    autocmd FileType cs,vim,typescript,sql,js,c,cpp,h,bat setlocal list listchars=eol:↵,tab:↦.,trail:∷,extends:❯,precedes:❮
augroup END

