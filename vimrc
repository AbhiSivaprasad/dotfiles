set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set autoindent
set number
set tags=~/.tags
set termguicolors
set mouse=a

" Don't use this with filetype plugin indent on
" What are advantages of this over per filetype indent?
" set smartindent

" Indent based on filetype
if has("autocmd")
	filetype plugin indent on
endif

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

" if NERDTree sidebar is the only open window then close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" remap escape key
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

" MUST BE AT END OF FILE
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" Color the status bar in the active and inactive windows differently to quickly differentiate
hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" Only highlight current line on the active window
augroup CurrentLineHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
augroup END

" set hybrid numbers in command mode, and absolute numbers in insert mode or if focus is on a separate buffer
set number relativenumber

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
