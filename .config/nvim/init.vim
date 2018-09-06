call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'docunext/closetag.vim'
Plug 'itchyny/lightline.vim'
"Plug 'tpope/vim-dispatch'             "| Optional
Plug 'jwalton512/vim-blade'
Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-projectionist'        "|
"Plug 'roxma/nvim-completion-manager'  "|
"Plug 'noahfrederick/vim-composer'     "|
"Plug 'noahfrederick/vim-laravel'
" Add plugins to &runtimepath
call plug#end()

" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible
" -- Display
set title " Update the title of your window or your terminal
set number " Display line numbers
set ruler " Display cursor position
set wrap " Wrap lines when they are too long
set scrolloff=3 " Display at least 3 lines around you cursor
" (for scrolling)
set guioptions=T " Enable the toolbar
" -- Search
set ignorecase " Ignore case when searching
set smartcase " If there is an uppercase in your search term
" search case sensitive again
set incsearch " Highlight search results when typing
set hlsearch " Highlight search results
" -- Beep
set visualbell " Prevent Vim from beeping
set noerrorbells " Prevent Vim from beeping
" Backspace behaves as expected
set backspace=indent,eol,start
" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

set tabstop=4
set expandtab
set shiftwidth=4

" Enable syntax highlighting
syntax enable
colorscheme pablo
" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

if isdirectory(expand(".git"))
  let g:NERDTreeBookmarksFile = '.git/.nerdtree-bookmarks'
endif

set fillchars+=vert:\ 

let mapleader = "\<Space>"

map <leader>k :NERDTree<CR>
map <leader>b :NERDTreeClose<CR>

"nnoremap <silent> <C-p> :FZF -m<cr>
nnoremap <leader>p :GFiles<cr>

"highlight ColorColumn ctermbg=0 guibg=orange
"let &colorcolumn=join(range(81,999), ',')

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a
