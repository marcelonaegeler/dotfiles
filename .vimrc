set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'scrooloose/nerdtree'
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
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'matchit.zip'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'

Plugin 'wellle/targets.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'

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

" Conquer of Completion
Plugin 'neoclide/coc.nvim'

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'ajh17/spacegray.vim'

call vundle#end()

let mapleader='\'
set encoding=UTF-8
set regexpengine=1

filetype plugin indent on
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1
map <leader>s :syntax sync fromstart<CR>

" FZF
map <leader>f :GFiles<CR>
map <leader>g :Files<CR>

" TabBar
nmap <F8> :TagbarToggle<CR>

" let g:deoplete#enable_at_startup = 1
let g:closetag_filenames = '*.html,*.vue'

" Fix some watchers bug
set backupcopy=yes

" Backspace
set backspace=indent,eol,start

" Colors
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme spacegray

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

" NERDTree
" map <C-m> :NERDTreeToggle<CR>

" Special hidden chars
set listchars=nbsp:¬,eol:⏎,tab:>-,extends:»,precedes:«,trail:•
set list

" Lightline
set laststatus=2
set noshowmode

" let g:lightline = {
"   \ 'active': {
"   \   'left': [ [ 'mode', 'paste' ],
"   \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"   \ },
"   \ 'component_function': {
"   \   'gitbranch': 'fugitive#head'
"   \ },
"   \ }

let g:ale_fixers = {
  \   'javascript': ['eslint']
  \ }

" ALE
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" PHPCD
let g:phpcd_php_cli_executable = '/usr/local/Cellar/php/7.2.7/bin/php'

" GitGutter
let g:gitgutter_realtime = 0

" Tags
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags"  ] && .git/hooks/ctags' &
set tags=.git/tags
" let g:gutentags_ctags_tagfile = '.git/tags'
" let g:gutentags_ctags_exclude = ['.git', 'node_modules', 'vendor', 'www']

" File creation maps
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

set hidden
set cmdheight=2
set updatetime=300
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" Or use formatexpr for range format
set formatexpr=CocAction('formatSelected')

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
