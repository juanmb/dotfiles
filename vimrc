set nocompatible                  " no compatible with old vi
filetype off                      " required for Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" My Bundles here:
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'nvie/vim-flake8'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jnwhiteh/vim-golang'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'kergoth/vim-bitbake'
Plugin 'kurayama/systemd-vim-syntax'
"Plugin 'tpope/vim-surround'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'tpope/vim-commentary'
"Plugin 'pangloss/vim-javascript'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'vim-scripts/c.vim'
"Plugin 'vim-scripts/linuxsty.vim'

" Color themes
"Plugin 'cschlueter/vim-wombat'
"Plugin 'toupeira/vim-desertink'
Plugin 'chriskempson/base16-vim'

call vundle#end()

filetype plugin indent on	" required!

" Indentation
set autoindent          " indent at the same level as the preceding line
set backspace=indent,eol,start

" Tab settings for different file types
autocmd FileType python set softtabstop=4 sw=4 ts=4 et
autocmd FileType go set softtabstop=4 sw=4 ts=4 noet
autocmd FileType html,htmljinja set softtabstop=2 sw=2 ts=2 et

" Show a different background color after column 80
let &colorcolumn=join(range(81,999),",")

" Basic settings
syntax enable       " highlight syntax
set number          " line numbers
set encoding=utf-8  " default encoding
set scrolloff=3     " line margin to start scrolling
set autochdir       " change the working directory to the same as the file being edited
set nowrap          " don't wrap lines
set linebreak       " break lines when possible
set shell=/bin/bash
set laststatus=2    " always show the status line
let g:Powerline_symbols = 'fancy'
inoremap jj <Esc>   " escape insert mode with jj

" Search options
set hlsearch        " highlight search matches
set incsearch       " incremental search
set ignorecase      " searches are case insensitive
set smartcase       " ... unless they contain one or more capital letters
set gdefault        " substitute all matches in a line instead of one

" GUI options
if has("gui_running")
    set guioptions=     " remove toolbar and scroll bars
    set guifont=DejaVu\ Sans\ Mono\ for\ PowerLine\ 10
endif

" Turn backups off
set nobackup
set nowb
set noswapfile

" Quick window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" No visual bell of beep
au VimEnter * set vb t_vb=

" Show NerdTree using F6
nnoremap <silent> <F6> <ESC>:NERDTreeToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20

" Show Tlist with F8
nnoremap <silent> <F8> <ESC>:TagbarToggle<CR>

" Compile with F9
map <F9> :call Compile()<CR>

" Toggle paste mode with F4
set pastetoggle=<F4>

" Run a Python script with F4 (example)
" nnoremap <F4> <ESC>:w<CR>:!python myscript.py<CR>

" Move between tabs using Alt+right, Alt+left
map <silent> <A-Right> :tabnext<CR>
map <silent> <A-Left> :tabprevious<CR>

" Move between buffers using Ctrl+right, Ctrl+left
map <C-right> <ESC>:bnext<CR>
map <C-left> <ESC>:bprevious<CR>

" Insert a new line after the current one using ENTER
map <CR> o<Esc>k
" Insert a new line before the current one using SHIFT+ENTER
map <S-Enter> O<Esc>j

" Hide some file types:
set wildignore+=*.pyc,*.pyo*,*.so,*.swp,*.zip
let g:explHideFiles='^\.,.*\.pyc$'
let g:netrw_list_hide='^\.,.*\.pyc$'
let NERDTreeIgnore=['\.pyc$', '\.o$', '\~$']

iabbrev @@ juanmb@gmail.com

au BufRead,BufNewFile *.pde set filetype=cpp
au BufRead,BufNewFile *.ino set filetype=cpp

let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark
colorscheme base16-default

" Airline
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
