"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set relativenumber
set number

set background=dark
color codedark
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=TrLm
    set guitablabel=\[%N\]\ %t\ %M

    set guifont=DejaVuSansMonoForPowerline\ NF:h10
    
    " Height of the command bar
    set cmdheight=5
    set cursorline
endif
if !has("gui_running")
  set termencoding=utf8
  set t_Co=256
  set t_ut=
endif

"   GUI OPTIONS   "
"""""""""""""""""""
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions+=!  "execute external comands in the terminal
:set guioptions-=e  "no tab pages

if has("win32") || has("win64")
  set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
endif
