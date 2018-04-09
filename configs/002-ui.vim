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
color codedark
set guioptions-=TrLm
set guitablabel=\[%N\]\ %t\ %M

set guifont=DejaVuSansMonoForPowerline\ NF:h11
let g:airline_theme='codedark'

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions+=!  "execute external comands in the terminal
:set guioptions-=e  "no tab pages
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:asyncrun_encs = 'cp850'

