let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["html"] }
map <leader>sc :SyntasticCheck <cr>
let g:tsuquyomi_disable_quickfix = 0
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_definition_split=3 "open definition in tab
let g:tsuquyomi_completion_preview=1
let g:tsuquyomi_single_quote_import=1

if has("gui_running")
    set ballooneval
    autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
    autocmd FileType typescript nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>
endif

let g:tsuquyomi_shortest_import_path = 1

autocmd FileType typescript nnoremap gd :TsuDefinition<cr>
autocmd FileType typescript nnoremap <leader>fi :TsuImplementation<cr>
autocmd FileType typescript nnoremap <leader>fu :TsuReferences<cr>
autocmd FileType typescript nnoremap <leader>x  :TsuQuickFix<cr>
autocmd FileType typescript nnoremap <leader>fx :TsuImport<cr>
autocmd FileType typescript nnoremap <leader>dc :TsuSignatureHelp<cr>
autocmd FileType typescript nnoremap <leader>x  :TsuQuickFix<cr>
autocmd FileType typescript nnoremap <leader>x  :TsuQuickFix<cr>
autocmd FileType typescript nnoremap <F2> :TsuRenameSymbol<cr>
autocmd FileType typescript set shiftwidth=2
autocmd FileType typescript set tabstop=2



