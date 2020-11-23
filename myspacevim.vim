
function! myspacevim#before() abort
  " Move between tabs using Alt+right, Alt+left
  " noremap <silent> <A-Right> :tabnext<CR>
  " noremap <silent> <A-Left> :tabprevious<CR>

  " Hide some file types:
  set wildignore+=*.pyc,*.pyo*,*.so,*.swp,*.zip,*.o,*.a,*~
  let g:explHideFiles='^\.,.*\.pyc$'
  let g:netrw_list_hide='^\.,.*\.pyc$'

  "au BufRead,BufNewFile *.ino set filetype=cpp

  " Vim-go
  "let g:go_fmt_command = "goimports"

  " " make YCM compatible with UltiSnips (using supertab)
  " let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  " let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  " let g:SuperTabDefaultCompletionType = '<C-n>'
  "
  " " better key bindings for UltiSnipsExpandTrigger
  " let g:UltiSnipsExpandTrigger = "<tab>"
  " let g:UltiSnipsJumpForwardTrigger = "<tab>"
  " let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
  "
  " " Vim-autoformat
  " let g:formatdef_c_config = '"astyle --mode=c --style=stroustrup -pcHs4"'
  " let g:formatters_c = ['c_config']

  " Quick window navigation (unneeded: overriden by vim-tmux-navigator plugin)
  " nnoremap <C-h> <C-w>h
  " nnoremap <C-j> <C-w>j
  " nnoremap <C-k> <C-w>k
  " nnoremap <C-l> <C-w>l
endfunction


function! myspacevim#after() abort
  " Move through wrapped lines with Up and Down keys
  inoremap <silent> <Down> <C-o>gj
  inoremap <silent> <Up> <C-o>gk
  nnoremap <silent> <Down> gj
  nnoremap <silent> <Up> gk

  " Move between buffers using Ctrl+right, Ctrl+left
  " noremap <C-right> <ESC>:bnext<CR>
  " noremap <C-left> <ESC>:bprevious<CR>

  " Toggle VimFiler with ctrl-n
  noremap <C-n> :VimFiler<CR>

  " Toggle Tagbar with ctrl-b
  noremap <C-b> :Tagbar<CR>

  " Insert a new line after the current one using ENTER
  nnoremap <CR> o<Esc>k

  " Quick navigation between shell and editor windows
  exe 'tnoremap <silent><C-l> <C-\><C-n>:<C-u>wincmd l<CR>'
  exe 'tnoremap <silent><C-h> <C-\><C-n>:<C-u>wincmd h<CR>'
  exe 'tnoremap <silent><C-k> <C-\><C-n>:<C-u>wincmd k<CR>'
  exe 'tnoremap <silent><C-j> <C-\><C-n>:<C-u>wincmd j<CR>'
endfunction
