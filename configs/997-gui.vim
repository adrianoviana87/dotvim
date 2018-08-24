if has('nvim')
  color OceanicNext
  let g:airline_theme='oceanicnext'
else
  color codedark
  let g:airline_theme='codedark'
endif
set guioptions-=TrLm
set guitablabel=\[%N\]\ %t\ %M

set guifont=DejaVuSansMonoForPowerline\ NF:h10

if has("nvim")
  "Sets the font for nvim-qt
  Guifont! DejaVuSansMonoForPowerline NF:10
  " Sets the font for some gtk clients
  if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font', 'DejaVuSansMonoForPowerline NF 10')
  endif
endif

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions+=!  "execute external comands in the terminal
:set guioptions-=e  "no tab pages

if !has("nvim") && (has("win32") || has("win64"))
  set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
endif

if exists('g:GtkGuiLoaded')
  call rpcnotify(1, 'Gui', 'Font', 'DejaVuSansMonoForPowerline NF 10')
endif

