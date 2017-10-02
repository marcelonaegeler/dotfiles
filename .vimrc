set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'posva/vim-vue'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call vundle#end()

filetype plugin indent on

let g:ctrlp_custom_ignore='\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Colors
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" Tabs
set expandtab
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
