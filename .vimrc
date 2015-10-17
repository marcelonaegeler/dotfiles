set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call vundle#end()

filetype plugin indent on

" Colors
syntax enable
colorscheme elflord
" colorscheme badwolf

" Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

set wildmenu
set cursorline
set lazyredraw

" Search
set incsearch
set hlsearch


" Key bindings
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
