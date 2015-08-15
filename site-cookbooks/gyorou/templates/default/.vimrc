set nocompatible
set number
set bg=dark
set expandtab
set shiftwidth=2
set softtabstop=2
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'tpope/vim-rails'
NeoBundle 'Chiel92/vim-autoformat'
call neobundle#end()
filetype plugin indent on 
filetype indent on
syntax on
