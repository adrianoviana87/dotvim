if has("nvim")
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-j>',
	      \ '<denite:move_to_next_line>',
	      \ 'noremap'
	      \)
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-k>',
	      \ '<denite:move_to_previous_line>',
	      \ 'noremap'
	      \)

  let ignore=&wildignore .
        \ ',*.dll,*.pdb,.git,.hg,.svn,node_modules,*.lock,*.js.map,*.obj'
  call denite#custom#var('file_rec', 'command',
        \ ['scantree.py', '--ignore', ignore])

  nnoremap <c-p> :Denite file_rec<cr>
  nnoremap <leader>b :Denite buffer<cr>
  nnoremap <leader>m :Denite file_mru<cr>
  nnoremap <leader>gs:Denite gitstatus<cr>
  nnoremap <leader>gl:Denite gitlog<cr>
  nnoremap <leader>gc:Denite gitchanged<cr>

else
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'a'
  " Start search by file name only. <c-d> to switch to full path
  let g:ctrlp_by_filename = 1

  " More like ctrl-p in vscode
  let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:20'

  " Try to reuse existing buffers
  let g:ctrlp_switch_buffer = 'ET'

  " Ignore
  let g:ctrlp_custom_ignore = '*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe'
  let g:ctrlp_lazy_update = 1

  " No file count limit
  let g:ctrlp_max_files = 0
  "let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
  "                        \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']


  if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
  endif

  map <leader>l :CtrlPLine<cr>
  map <leader>b :CtrlPBuffer<cr>
  map <leader>m :CtrlPMRUFiles<cr>

  " set acd	" Auto change directory for the current file
  set browsedir=current
endif

