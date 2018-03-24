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
if has("gui_running") || has("nvim")
  set guioptions-=TrLm
  set guitablabel=\[%N\]\ %t\ %M

  set guifont=DejaVuSansMonoForPowerline\ NF:h11

  " Height of the command bar
  set cmdheight=5
  set cursorline
  if has("nvim")
    echom 'has nvim'
    "Sets the font for nvim-qt
    Guifont! DejaVuSansMonoForPowerline NF:h11
    " Sets the font for some gtk clients
    if exists('g:GtkGuiLoaded')
      call rpcnotify(1, 'Gui', 'Font', 'DejaVuSansMonoForPowerline NF 10')
    endif
  else
    echom 'does not has nvim'
  endif
else
  set termencoding=utf8
  set t_Co=256
  set t_ut=
endif

set fillchars=vert:┃,fold:—
set foldmethod=indent
set foldlevelstart=99 " Start unfolded

"   GUI OPTIONS   "
"""""""""""""""""""
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions+=!  "execute external comands in the terminal
:set guioptions-=e  "no tab pages

if !has("nvim") && (has("win32") || has("win64"))
  set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
endif

colorscheme codedark
let g:airline_theme='codedark'

if exists('g:GtkGuiLoaded')
  call rpcnotify(1, 'Gui', 'Font', 'Consolas NF 10')
endif

set guioptions-=TrLm
set guitablabel=\[%N\]\ %t\ %M
set cmdheight=5
set cursorline

