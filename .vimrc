set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'posva/vim-vue'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'maralla/completor.vim'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call vundle#end()

autocmd FileType vue syntax sync fromstart

filetype plugin indent on

let g:ctrlp_custom_ignore='\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Fix some watchers bug
set backupcopy=yes

" Colors
let g:solarized_termcolors=256
syntax enable
set background=light
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

map <C-n> :NERDTreeToggle<CR>
