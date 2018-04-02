""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#alt_sep = 1
