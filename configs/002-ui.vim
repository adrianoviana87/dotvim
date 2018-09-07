scriptencoding utf-8
set encoding=utf8
" Enable syntax highlighting
syntax enable

set relativenumber
set number

set background=dark

" Height of the command bar
set cmdheight=1
set nocursorline
set termencoding=utf8
set t_Co=256

set fillchars=vert:┃,fold:⋯
set foldmethod=indent
set foldlevelstart=99 " Start unfolded

augroup locallistchars_group
    autocmd!
    autocmd FileType cs,vim,typescript,sql,js,c,cpp,h,bat setlocal list listchars=tab:\ \ ,trail:∷,extends:❯,precedes:❮
augroup END
set guioptions-=TrLm
set guitablabel=\[%N\]\ %t\ %M

set guifont=DejaVuSansMonoForPowerline\ NF:h10

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions+=!  "execute external comands in the terminal
:set guioptions-=e  "no tab pages
set nolist
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:asyncrun_encs = 'cp850'

set guicursor=

