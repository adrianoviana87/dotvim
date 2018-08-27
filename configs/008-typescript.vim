augroup typescript_commands
    autocmd!
    autocmd FileType typescript nnoremap <buffer> gd :TSDef<cr>
    autocmd FileType typescript nnoremap <buffer> <leader>fi :TSTypeDef<cr>
    autocmd FileType typescript nnoremap <buffer> <leader>fu :TSRefs<cr>
    autocmd FileType typescript nnoremap <buffer> <leader>x  :TSGetCodeFix<cr>
    autocmd FileType typescript nnoremap <buffer> <leader>fx :TSImport<cr>
    autocmd FileType typescript nnoremap <buffer> <leader>dc :TSDoc<cr>
    autocmd FileType typescript nnoremap <buffer> <F2> :TSRename<cr>
augroup END


autocmd FileType typescript setlocal shiftwidth=2
autocmd FileType typescript setlocal tabstop=2

