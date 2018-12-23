set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif 

"NeoBundleFetch 'Shougo/neobundle.vim'



set autoindent
set smartindent
set smarttab

set number
set title
set showmatch

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab

set colorcolumn=80

set backspace=indent,eol,start
set wrapscan

set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
set laststatus=2


NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'

"===jump between blocks with % ===
:source $VIMRUNTIME/macros/matchit.vim

"===colorscheme===
NeoBundle 'takiyu/tango-lx'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'

"===completement===
"NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/vimproc.vim',  {
            \ 'build' : {
            \ 'windows' : 'make -f make_mingw32.mak',
            \ 'cygwin' : 'make -f make_cygwin.mak',
            \ 'mac' : 'make -f make_mac.mak',
            \ 'unix' : 'make -f make_unix.mak',
            \ },
            \ }
NeoBundle 'Shougo/neoinclude.vim'
NeoBundle 'scrooloose/syntastic'


"===C++===
NeoBundleLazy 'vim-jp/cpp-vim',{'autoload ' : {'filetypes':['cpp']}}
NeoBundle 'justmao945/vim-clang',{'autoload' : {'filetypes':['cpp']}}

"===Python===
NeoBundleLazy 'davidhalter/jedi-vim',{'autoload' : {'filetypes':['python']}}

call neobundle#end()

filetype plugin indent on
syntax on

autocmd FileType c      setlocal sw=2 sts=2 ts=2 et
autocmd FileType cpp    setlocal sw=2 sts=2 ts=2 et
autocmd FileType python3     setlocal sw=4 sts=4 ts=4 et

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
set background=dark
colorscheme jellybeans 

"===vim-indent-guides===
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuideOdd guibg=#262626 ctermbg=gray
autocmd VimEnter,Colorscheme * :hi IndentGuideEven guibg=#3c3c3c ctermbg=darkgray
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

"===neocomplete===
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#max_list = 50
"let g:neocomlete#max_keyword_width = 80
"let g:neocomplete#enable_ignore_case = 1

"===vim-clang===
let g:clang_c_options='-std=c11'
let g:clang_cpp_options='-std=c++11 -pedantic-errors'
let g:clang_format_auto=1
let g:clang_format_style='LLVM'
let g:clang_check_syntax_auto=1

"===syntastic===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


