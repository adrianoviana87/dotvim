"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction 

function! Adr_FormatCode()
  " Saves the last search and cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business
  %s/\s\+$//e
  execute 'normal gg=G'
  " Restore previous search history and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
function! Adr_TrailingWhitespaces()
  " Saves the last search and cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business
  %s/\s\+$//e
  " Restore previous search history and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

