syntax on
set nocompatible
filetype plugin on

"vim
set undofile
set autoread
set clipboard=unnamedplus "clipboard support (NEEDS GVIM)
set iskeyword+=-,<,>

"command line
set wildmenu
set showcmd
set laststatus=2

"line numbers
set number
set relativenumber

"tabs
set tabstop=2
set shiftwidth=0
set expandtab
set autoindent
set smartindent
set shiftround

"search
set hlsearch
nohl "doing this to clear search
set ignorecase
set smartcase
set incsearch

"text
set scrolloff=10
set cursorline
set cursorlineopt=screenline,number
set completeopt=fuzzy,menuone,noinsert,preview
set complete=.,w,b,u,t,i,d
set showmatch
set matchtime=2
set foldmethod=syntax
set foldlevel=99

"set spell
"setlocal spell spelllang=en_gb,en_us

"colours
source ~/.vim/rosepine.vim

let mapleader=" "
nnoremap <leader>h :nohl<CR>

"fileexplore
nnoremap <C-n> :20Lexplore<CR>
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_fastbrowse=2
let g:netrw_liststyle=3
let g:netrw_hide=0
"let g:netrw_list_hide=netrw_gitignore#Hide()

"my git diff 'plugin'
source ~/.vim/gitdiff.vim

source ~/.vim/statusline.vim
"statusline
set statusline=%!Mystatusline()

"lsp plugin
source ~/.vim/lsp.vim
