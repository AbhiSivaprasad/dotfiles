set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set autoindent
set number
set tags=~/.tags
set termguicolors
" Autoloads NERDTree if file is specified
autocmd vimenter * NERDTree

" Autoloads NERDTree if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree custom mappings
let g:NERDTreeMapOpenSplit = 'h'
let g:NERDTreeMapPreviewSplit = 'gh'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapPreviewVSplit = 'gv'

inoremap jk <esc>
inoremap kj <esc>

let g:gruvbox_termcolors=16
