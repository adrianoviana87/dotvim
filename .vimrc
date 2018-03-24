set nocompatible              " be iMproved, required
if has('nvim') " NEOVIM - Use VimPlug
  if has('win32') || has('win64')
    let g:python3_host_prog='C:/Python36/python.exe'
    let g:python_host_prog='C:/Python27/python.exe'
    let g:ruby_host_prog = 'ruby C:/Ruby24/lib/ruby/gems/2.4.0/gems/neovim-0.7.1/bin/neovim-ruby-host'
  endif

  call plug#begin('$Home/.vim/plugged')
  " list of plugins
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'mhartington/oceanic-next' "Color Scheme
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'shougo/denite.nvim'
  Plug 'chemzqm/denite-extra'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'othree/html5.vim'
  Plug 'fszymanski/deoplete-emoji'
  Plug 'OmniSharp/omnisharp-vim', { 'do': 'cd server && powershell -executionpolicy bypass -File build.ps1' }
  " Installs vim-dispatch (required to launch OmniSharp server)
  Plug 'tpope/vim-dispatch'
  " Installs this source
  Plug 'https://gitlab.com/mixedCase/deoplete-omnisharp.git'
  Plug 'yggdroot/indentline'
  Plug 'tpope/vim-projectionist'
  Plug 'scrooloose/syntastic'
  Plug 'sirver/ultisnips'
  Plug 'quramy/tsuquyomi'
  Plug 'shougo/vimproc.vim'
  Plug 'mhartington/nvim-typescript'
  Plug 'tomasiser/vim-code-dark'
  Plug 'Shougo/neomru.vim'
  call plug#end()
  if (has("termguicolors"))
    set termguicolors
  endif

else " VIM - Use Vundle
  filetype off                  " required

  " set the runtime path to include Vundle and initialize

  set rtp+=$HOME/.vim/vundle/Vundle.vim/
  call vundle#begin('$HOME/.vim/vundle/')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  " All of your Plugins must be added before the following line
  Plugin 'shougo/vimproc.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'quramy/vim-js-pretty-template'
  Plugin 'quramy/tsuquyomi'
  Plugin 'scrooloose/nerdtree'
  Plugin 'alvan/vim-closetag'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'enricobacis/vim-airline-clock'
  Plugin 'tpope/vim-dispatch'
  Plugin 'omnisharp/omnisharp-vim'
  Plugin 'othree/html5.vim'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'SQLComplete.vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'michalliu/jsruntime.vim'
  Plugin 'michalliu/jsoncodecs.vim'
  Plugin 'michalliu/sourcebeautify.vim'
  Plugin 'reewr/vim-monokai-phoenix'
  Plugin 'oranget/vim-csharp'
  Plugin 'joonty/vim-do'
  Plugin 'sirver/ultisnips'
  Plugin 'joonty/vdebug'
  Plugin 'dbext.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'tomasiser/vim-code-dark'
  Plugin 'yggdroot/indentline'
  Plugin 'tpope/vim-projectionist'
  call vundle#end()            " required
endif

let configBasePath = fnamemodify(expand("$HOME") . '/.vim/configs', ":p") . '/'

execute "source " . configBasePath . "001-core.vim"
" Only executes this file when in VIM. NeoVim will execute it when the gui initilizes
if !has("nvim")
  execute "source " . configBasePath . "002-ui.vim"
endif
execute "source " . configBasePath . "003-utils.vim"
execute "source " . configBasePath . "004-status-line.vim"
execute "source " . configBasePath . "005-autocomplete.vim"
execute "source " . configBasePath . "006-nerdtree.vim"
execute "source " . configBasePath . "007-fuzzy-finder.vim"
execute "source " . configBasePath . "008-typescript.vim"
execute "source " . configBasePath . "009-csharp.vim"
execute "source " . configBasePath . "010-dev-icons.vim"
execute "source " . configBasePath . "011-database.vim"
execute "source " . configBasePath . "012-projectionist.vim"
execute "source " . configBasePath . "998-auto-commands.vim"
execute "source " . configBasePath . "999-mappings.vim"

