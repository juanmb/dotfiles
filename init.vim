" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual customization plugins:
Plug 'chriskempson/base16-vim' " Color themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Generic plugins:
Plug 'christoomey/vim-tmux-navigator'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
"Plug 'Chiel92/vim-autoformat'
"Plug 'embear/vim-localvimrc'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
"Plug 'davidhalter/jedi-vim'
"Plug 'godlygeek/tabular'

" Language-specific plugins:
Plug 'fatih/vim-go'
Plug 'tpope/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'hynek/vim-python-pep8-indent'
"Plug 'nvie/vim-flake8'
"Plug 'mitsuhiko/vim-jinja'
"Plug 'ekalinin/Dockerfile.vim'
Plug 'kergoth/vim-bitbake'
"Plug 'pearofducks/ansible-vim'
"Plug 'kurayama/systemd-vim-syntax'
"Plug 'vim-scripts/openscad.vim'
"Plug 'vhda/verilog_systemverilog.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'vim-scripts/c.vim'
"Plug 'vim-scripts/linuxsty.vim'
Plug 'wannesm/wmgraphviz.vim'
Plug 'ninegrid/vim-fbp'
Plug 'https://bitbucket.org/spilt/vim-peg', { 'for': 'peg' }
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indentation
set autoindent          " indent at the same level as the preceding line
set backspace=indent,eol,start

" Tab settings for different file types
autocmd FileType python set softtabstop=4 sw=4 ts=4 et
autocmd FileType go set softtabstop=4 sw=4 ts=4 noet
autocmd FileType html,htmljinja set softtabstop=2 sw=2 ts=2 et
autocmd FileType vhdl set softtabstop=3 sw=3 ts=3 noet
autocmd FileType openscad set softtabstop=4 sw=4 ts=4 et
autocmd FileType rst set softtabstop=2 sw=2 ts=2 et
autocmd FileType yaml set softtabstop=2 sw=2 ts=2 et

" Show a different background color after column 80
"let &colorcolumn=join(range(81,999),",")

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
set fileformat=unix
set fileformats=unix
let g:Powerline_symbols = 'fancy'
inoremap jj <Esc>   " escape insert mode with jj
"let mapleader="\\"

" Search options
set hlsearch        " highlight search matches
set incsearch       " incremental search
set ignorecase      " searches are case insensitive
set smartcase       " ... unless they contain one or more capital letters
set gdefault        " substitute all matches in a line instead of one

" Turn backups off
set nobackup
set nowb
set noswapfile

" Quick window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" No visual bell of beep
au VimEnter * set vb t_vb=

" Compile with F9
"nmap <F9> :make<CR>

" Toggle paste mode with F4
"set pastetoggle=<F4>

" Move through wrapped lines with Up and Down keys
inoremap <silent> <Down> <C-o>gj
inoremap <silent> <Up> <C-o>gk
nnoremap <silent> <Down> gj
nnoremap <silent> <Up> gk

" Move between tabs using Alt+right, Alt+left
noremap <silent> <A-Right> :tabnext<CR>
noremap <silent> <A-Left> :tabprevious<CR>

" Move between buffers using Ctrl+right, Ctrl+left
noremap <C-right> <ESC>:bnext<CR>
noremap <C-left> <ESC>:bprevious<CR>

" Insert a new line after the current one using ENTER
nnoremap <CR> o<Esc>k

" Auto-indent JSON by typing :FormatJSON
com! FormatJSON %!python -m json.tool

" Hide some file types:
set wildignore+=*.pyc,*.pyo*,*.so,*.swp,*.zip,*.o,*.a,*~
let g:explHideFiles='^\.,.*\.pyc$'
let g:netrw_list_hide='^\.,.*\.pyc$'

iabbrev @@ juanmb@gmail.com
iabbrev ccopy Copyright 2020 TWave SL. All rights reserved

"au BufRead,BufNewFile *.ino set filetype=cpp

let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark
colorscheme base16-default-dark
set mouse=a

" Run a Python script with F4 (example)
" nnoremap <F4> <ESC>:w<CR>:!python myscript.py<CR>

" Mappings for editing and source this file quickly
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1

" Show NerdTree using F6
nnoremap <silent> <F6> <ESC>:NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20
let NERDTreeIgnore=['\.pyc$', '\.o$', '\~$']

" Show Tlist with F8
nnoremap <silent> <F8> <ESC>:TagbarToggle<CR>

" localvimrc
let g:localvimrc_sandbox = 0

" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_insertion = 1

" Vim-go
let g:go_fmt_command = "goimports"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Vim-autoformat
let g:formatdef_c_config = '"astyle --mode=c --style=stroustrup -pcHs4"'
let g:formatters_c = ['c_config']
