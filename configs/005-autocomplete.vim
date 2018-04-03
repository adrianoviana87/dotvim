"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Plugin Config                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autocomplete (not plugin)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("nvim")
  let g:deoplete#enable_at_startup=1
endif

let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

:set completeopt=longest,menuone
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType cs setlocal completeopt=longest,menuone,preview

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
      \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
