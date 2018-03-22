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

    "set guifont=NotoMono\ NF:h10
    "set guifont=CodeNewRoman\ NF:h11
    "set guifont=Monoid\ NF:h10

    " set guifont=FantasqueSansMono\ NF:h12
    " set guifont=DejaVuSansMonoForPowerline\ NF:h9
    set guifont=Consolas\ NF:h10
    "color monokai-phoenix
    "color StaleDark
    "color reloaded "Matrix like
    "color sexy-railscasts
    "color refactor "Very cool
    "color nerv-ous "Liked it
    "color flatcolor
    "color distinguished "Liked it
    "color gardener " see if it is good
    " color landscape "good last used
    "color molokai_dark
    " Height of the command bar
    set cmdheight=5
    set cursorline
endif
if !has("gui_running")
  set termencoding=utf8
  set t_Co=256
  set t_ut=
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" toggle fullscreen mode by pressing F11
noremap <f11> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleFullscreen', 0)<cr>
" toggle window transparency to 247 or 180 by pressing F12
noremap <f12> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleTransparency', "247,180")<cr>


