" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

" add number
set number

" pathogen vim plugin manager
execute pathogen#infect()

"cd ~/.vim/bundle && \
set laststatus=2

" airline theme
let g:airline_theme='raven'

" Make backspace work as expected
set backspace=indent,eol,start

" takes advantage of vim improvements on vi
set nocompatible
filetype plugin indent on

" search as you type
set incsearch

" Makes tab into spaces
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Remap semicolon to colon
nmap ; :

" Remap jj to esc key
inoremap jj <ESC>
