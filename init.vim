" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')
" List of plugins
Plug 'ervandew/supertab'
Plug 'ninegrid/vim-fbp'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
"Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'nvie/vim-flake8'
"Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'fatih/vim-go'
"Plug 'mitsuhiko/vim-jinja'
"Plug 'kergoth/vim-bitbake'
"Plug 'kurayama/systemd-vim-syntax'
"Plug 'vim-scripts/openscad.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-markdown'
Plug 'Valloric/YouCompleteMe'
"Plug 'ekalinin/Dockerfile.vim'
"Plug 'pearofducks/ansible-vim'
"Plug 'vhda/verilog_systemverilog.vim'
"Plug 'vim-scripts/DrawIt'
"Plug 'Chiel92/vim-autoformat'
"Plug 'embear/vim-localvimrc'
Plug 'wannesm/wmgraphviz.vim'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
"Plug 'pangloss/vim-javascript'
"Plug 'davidhalter/jedi-vim'
"Plug 'vim-scripts/c.vim'
"Plug 'vim-scripts/linuxsty.vim'
Plug 'chriskempson/base16-vim' " Color themes
Plug 'https://bitbucket.org/spilt/vim-peg', { 'for': 'peg' }
call plug#end()

"filetype plugin indent on	" required!

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
"autocmd FileType yaml set softtabstop=2 sw=2 ts=2 et

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
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" No visual bell of beep
au VimEnter * set vb t_vb=

" Compile with F9
"nmap <F9> :make<CR>

" Toggle paste mode with F4
"set pastetoggle=<F4>

" Run a Python script with F4 (example)
" nnoremap <F4> <ESC>:w<CR>:!python myscript.py<CR>

" Move through wrapped lines with Up and Down keys
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Move between tabs using Alt+right, Alt+left
map <silent> <A-Right> :tabnext<CR>
map <silent> <A-Left> :tabprevious<CR>

" Move between buffers using Ctrl+right, Ctrl+left
map <C-right> <ESC>:bnext<CR>
map <C-left> <ESC>:bprevious<CR>

" Insert a new line after the current one using ENTER
map <CR> o<Esc>k
" Insert a new line before the current one using SHIFT+ENTER
"map <S-Enter> O<Esc>j

" Auto-indent JSON by typing :FormatJSON
com! FormatJSON %!python -m json.tool

" Hide some file types:
set wildignore+=*.pyc,*.pyo*,*.so,*.swp,*.zip,*.o,*.a,*~
let g:explHideFiles='^\.,.*\.pyc$'
let g:netrw_list_hide='^\.,.*\.pyc$'

iabbrev @@ juanmb@gmail.com

"au BufRead,BufNewFile *.ino set filetype=cpp

let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark
colorscheme base16-default-dark
set mouse=a

" Plugins configuration
""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1

" Show NerdTree using F6
nnoremap <silent> <F6> <ESC>:NERDTreeToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20
let NERDTreeIgnore=['\.pyc$', '\.o$', '\~$']

" Show Tlist with F8
nnoremap <silent> <F8> <ESC>:TagbarToggle<CR>

" localvimrc
let g:localvimrc_sandbox = 0

" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_insertion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Vim-go
let g:go_fmt_command = "goimports"
au FileType go nmap <F9> <Plug>(go-build)

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Vim-autoformat
let g:formatdef_c_config = '"astyle --mode=c --style=stroustrup -pcHs4"'
let g:formatters_c = ['c_config']
