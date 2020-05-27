set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set autoindent
set number
set tags=~/.tags
set termguicolors
set mouse=a
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

syntax enable
set background=dark
colorscheme gruvbox

if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif
