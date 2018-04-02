"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree {
" Use Ctrl-N to open it
map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize=62
let g:NERDTreeMinimalUI=1
let g:NERDTreeQuitOnOpen=1

" How can I close vim if the only window left open is a NERDTree?
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }
" seguir o buffer selecionado
" autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

