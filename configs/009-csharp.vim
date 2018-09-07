"""""""""""""""""""""""""""""""""""""""
" => Omnisharp
"""""""""""""""""""""""""""""""""""""""
"This is the default value, setting it isn't actually necessary
let g:OmniSharp_prefer_global_sln = 1
"Set the type lookup function to use the preview window instead of the status line
let g:OmniSharp_typeLookupInPreview = 0
"let g:OmniSharp_server_path = "C:\Users\adria\.vscode\extensions\ms-vscode.csharp-1.13.1\.omnisharp\OmniSharp.exe"

let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_port = 2000
"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 99999

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch
let g:omnicomplete_fetch_full_documentation=1
if has('nvim')
  let g:OmniSharp_selector_ui = 'unite'  " Use ctrlp.vim
else
  let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
endif
" Get Code Issues and syntax errors
" If you are using the omnisharp-roslyn backend, use the following
" let g:syntastic_cs_checkers = ['code_checker']
let g:Omnisharp_start_server = 0
augroup omnisharp_commands
  autocmd!
  "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
  autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

  " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

  " Add syntax highlighting for types and interfaces (too slow when in neovim)
  " autocmd BufEnter *.cs OmniSharpHighlightTypes

  " Automatically add new cs files to the nearest project on save
  " autocmd BufWritePost *.cs call OmniSharp#AddToProject()

  if has("gui_running")
    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
  endif

  "The following commands are contextual, based on the current cursor position.

  autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<cr>
  autocmd FileType cs nnoremap <buffer> <leader>fi :OmniSharpFindImplementations<cr>
  autocmd FileType cs nnoremap <buffer> <leader>ft :OmniSharpFindType<cr>
  autocmd FileType cs nnoremap <buffer> <leader>fs :OmniSharpFindSymbol<cr>
  autocmd FileType cs nnoremap <buffer> <leader>fu :OmniSharpFindUsages<cr>
  "finds members in the current buffer
  autocmd FileType cs nnoremap <buffer> <leader>fm :OmniSharpFindMembers<cr>
  " cursor can be anywhere on the line containing an issue
  autocmd FileType cs nnoremap <buffer> <leader>x  :OmniSharpFixIssue<cr>
  autocmd FileType cs nnoremap <buffer> <leader>fx :OmniSharpFixUsings<cr>
  autocmd FileType cs nnoremap <buffer> <leader>tt :OmniSharpTypeLookup<cr>
  autocmd FileType cs nnoremap <buffer> <leader>dc :OmniSharpDocumentation<cr>
  "navigate up by method/property/field
  autocmd FileType cs nnoremap <buffer> <C-K> :OmniSharpNavigateUp<cr>
  "navigate down by method/property/field
  autocmd FileType cs nnoremap <buffer> <C-J> :OmniSharpNavigateDown<cr>
  autocmd FileType cs setlocal shiftwidth=4
  autocmd FileType cs setlocal tabstop=4

augroup END


" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=2000

" Contextual code actions (requires CtrlP or unite.vim)
autocmd FileType cs nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
autocmd FileType cs vnoremap <leader>ca :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
autocmd FileType cs nnoremap <leader>nm :OmniSharpRename<cr>
autocmd FileType cs nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
autocmd FileType cs command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")
autocmd FileType cs nnoremap <leader>bp :call CsharpBuildProject()<cr>

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>kd :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Enable snippet completion, requires completeopt-=preview
let g:OmniSharp_want_snippet=1
"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

function! FindFile(dir, filter, numberDirUp)
  let l:gpath = globpath(a:dir, a:filter)
  let l:files = split(l:gpath, "\n")
  if len(l:files) > 0
    return get(l:files, 0)
  endif
  if a:numberDirUp > 0
    let l:dir = DirGoUp(a:dir)
    return FindFile(l:dir, a:filter, a:numberDirUp - 1)
  endif

  return ''
endfunction

function! DirGoUp(dir)
  let l:dirList = split(a:dir, '/')[0:-2]
  if len(l:dirList) == 0
    return ''
  endif

  return '/' . join(l:dirList, '/')
endfunction
function! CsharpFindProject(dir)
  let l:dir = len(a:dir) ? a:dir : expand('%:p:h')
  let l:projectFile = FindFile(l:dir, '*.csproj', 5)
  return l:projectFile
endfunction

function! CsharpBuildProject()
  let l:projectFile = CsharpFindProject('')
  if len(l:projectFile) <= 0
    return
  endif

  execute 'AsyncRun dotnet build /m /v:m ' . l:projectFile
endfunction

function! CsharpRunTests()
  let l:testProject = ''
  let l:answer = confirm("Test current project or entire solution?", "Current &Project\n&Entire Solution\n&Cancel", 1, "Question")
  if l:answer == 3
    return
  endif
  if l:answer == 1
    let l:testProject = CsharpFindProject('')
    if len(l:testProject) <= 0
      echom 'Current project not found!'
      return
    endif
  endif
  let l:answer = confirm("Build before running tests?", "&Yes\n&No\n&Cancel", 1, "Question")
  if l:answer == 3
    return
  endif
  let l:cmd = "dotnet test -v n "
  if l:answer == 2
    let l:cmd = l:cmd . "--no-build --no-restore "
  endif

  let l:testFilter = inputdialog("Test filter: ")
  if len(l:testFilter) > 0
    let l:testFilter = "--filter " . l:testFilter . " "
  endif

  let l:cmd = l:cmd . l:testFilter . l:testProject
  execute 'AsyncRun ' . l:cmd
endfunction
