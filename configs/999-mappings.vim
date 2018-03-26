" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <leader>wa :wa<cr>

" Quit
nnoremap <leader>qa :qa<cr>
nnoremap <leader>wqa :wqa<cr>

" Change Font
nnoremap <leader>cf<cr> :set guifont=*<cr>

" Change Color
if has("nvim")
  nnoremap <leader>cc<cr> :Denite colorscheme -no-quit -winheight=6<cr>
else
  nnoremap <leader>cc<cr> :color
endif

" puts the last command in the command line
nnoremap <s-cr> :<up>

nnoremap ; :

" go to previous next error
nnoremap <down> :cnext<cr>

" go to previous error
nnoremap <up> :cprev<cr>

" go to first error
nnoremap <left> :cfirst<cr>

" go to last error
nnoremap <right> :clast<cr>

" go to Search mode
nnoremap <leader>f /

" ctrl-c also leaves command mode
nnoremap <c-c> :

" No Highlight
nnoremap <leader>nh :noh<cr>

inoremap <s-cr> <esc>
inoremap jk <esc>


" toggle fullscreen mode by pressing F11
noremap <f11> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleFullscreen', 0)<cr>
" toggle window transparency to 247 or 180 by pressing F12
noremap <f12> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleTransparency', "247,180")<cr>


" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk


" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Close the current buffer
nnoremap <leader>bd :bd<cr>

" Close all the buffers
nnoremap <leader>bda :%bd<cr>

" Useful mappings for managing tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>\

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Change relative number
nnoremap <leader>rn<cr> :set relativenumber<cr>
nnoremap <leader>nrn<cr> :set norelativenumber<cr>
nnoremap <leader>n<cr> :set number<cr>
nnoremap <leader>nn<cr> :set nonumber<cr>

" Resize windows
nnoremap <c-up> <c-w>+
nnoremap <c-up> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><

nnoremap <leader><up> :let &cmdheight=&cmdheight+1<cr>
nnoremap <leader><down> :let &cmdheight=&cmdheight-1<cr>

" Close the quickfix window
nnoremap <leader>qc :cclose<cr>

nnoremap <leader>cl :set cursorline<cr>
nnoremap <leader>ncl :set nocursorline<cr>
nnoremap <leader>cc :set cursorcolumn<cr>
nnoremap <leader>ncc :set nocursorcolumn<cr>

nnoremap <leader>ot :terminal<cr>

" Projectionist - Switch between relative files
nnoremap <leader>oa :A<cr>


" Yank all file
nnoremap <leader>ya ggyG

" Format the file
nnoremap <leader>kd  :call Adr_FormatCode()<cr>

" Fix trailing whitespaces
nnoremap <leader>tws :call Adr_TrailingWhitespaces()<cr>

" Inserts a new line below the cursor and continues in normal mode
nnoremap <leader>o o<esc>

" Inserts a new line above the cursor and continues in normal mode
nnoremap <leader>O O<esc>
