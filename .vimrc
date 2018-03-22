set nocompatible              " be iMproved, required
if has('nvim') " NEOVIM - Use VimPlug

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
  call vundle#end()            " required
endif

let configBasePath = fnamemodify(expand("$HOME") . '/.vim/configs', ":p") . '/'

execute "source " . configBasePath . "001-core.vim"
execute "source " . configBasePath . "002-ui.vim"
execute "source " . configBasePath . "003-utils.vim"
execute "source " . configBasePath . "004-status-line.vim"
execute "source " . configBasePath . "005-autocomplete.vim"
execute "source " . configBasePath . "006-nerdtree.vim"
execute "source " . configBasePath . "007-fuzzy-finder.vim"
execute "source " . configBasePath . "008-typescript.vim"
execute "source " . configBasePath . "009-csharp.vim"
execute "source " . configBasePath . "010-dev-icons.vim"
execute "source " . configBasePath . "011-database.vim"
