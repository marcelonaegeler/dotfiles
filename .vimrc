set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'

Plugin 'junegunn/fzf.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'posva/vim-vue'
Plugin 'wavded/vim-stylus'
Plugin 'lumiliet/vim-twig'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'wellle/targets.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'matchit.zip'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'

 " http://web-techno.net/vim-php-ide/
Plugin 'StanAngeloff/php.vim'

" Deoplete
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'
" Plugin 'carlitux/deoplete-ternjs'
" Plugin 'padawan-php/deoplete-padawan'

" PHP Support
Plugin 'phpvim/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plugin 'tobyS/pdv'

" TMUX
Plugin 'benmills/vimux'

" CTags
" Plugin 'ludovicchabant/vim-gutentags'

" Themes
Plugin 'morhetz/gruvbox'

call vundle#end()

let mapleader='\'
set encoding=UTF-8
set regexpengine=1

filetype plugin indent on
" autocmd FileType vue syntax sync fromstart

" let g:ctrlp_custom_ignore='\v[\/](vendor|node_modules|target|dist|var\/cache|www\/lib/|tigre-colaborador\/plugins)|(\.(swp|ico|git|svn|settings|scannerwork|DS_Store))$'
" let g:ctrlp_show_hidden=1
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
map <leader>g :GFiles<CR>
map <leader>f :Files<CR>

" let g:deoplete#enable_at_startup = 1

" Fix some watchers bug
set backupcopy=yes

" Backspace
set backspace=indent,eol,start

" Colors
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme gruvbox

" Tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smarttab

set wildmenu
set cursorline
set lazyredraw

" Search
set incsearch
set hlsearch

" Line numbers
set relativenumber

" Key bindings
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]

map <C-o> :NERDTreeToggle<CR>

set listchars=nbsp:¬,eol:⏎,tab:>-,extends:»,precedes:«,trail:•
set list

let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\}

" Lightline
set laststatus=2
set noshowmode

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags"  ] && .git/hooks/ctags' &

" ALE
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

let g:phpcd_php_cli_executable = '/usr/local/Cellar/php/7.2.7/bin/php'

set tags=.git/tags
" let g:gutentags_ctags_tagfile = '.git/tags'
" let g:gutentags_ctags_exclude = ['.git', 'node_modules', 'vendor', 'www']
