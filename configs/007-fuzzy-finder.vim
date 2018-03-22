"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctrl-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P {
" Mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
" Start search by file name only. <c-d> to switch to full path
let g:ctrlp_by_filename = 1

" More like ctrl-p in vscode
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:20'

" Try to reuse existing buffers
let g:ctrlp_switch_buffer = 'ET'

" Keep cache when leaving VIM
let g:ctrlp_clear_cache_on_exit = 0



" Ignore
let g:ctrlp_custom_ignore = '*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe'
let g:ctrlp_lazy_update = 1

" No file count limit
let g:ctrlp_max_files = 0
"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
"                        \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

" does not list untracked files:
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

  " Multiple VCS's:
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ },
  \ 'fallback': 'dir %s /-n /b /s /a-d'
  \ }


map <leader>l :CtrlPLine<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRUFiles<cr>
" set acd	" Auto change directory for the current file
set browsedir=current


