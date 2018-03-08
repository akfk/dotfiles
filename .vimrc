set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif 

"NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'takiyu/tango-lx'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()

filetype plugin indent on

colorscheme tango_lx

set autoindent
set smartindent
set smarttab
set expandtab


set number
set title
set showmatch

set tabstop=2
set shiftwidth=2
set softtabstop=0

set colorcolumn=80

set wrapscan
