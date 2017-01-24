execute pathogen#infect()
Helptags
syntax enable
filetype plugin indent on

" Visuals
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set number

let maplocalleader = ","

" Delete the new line as well
set backspace=indent,eol,start

" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Nerd Tree Things
noremap <localleader>nt :NERDTreeToggle<CR>
noremap <localleader>nr :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP - fuzzy finder
noremap <localleader>ff :CtrlP<CR>
noremap <localleader>be :CtrlPBuffer<CR>

" Movement
noremap H ^
noremap L $
inoremap jk <Esc>
vnoremap jk <Esc>

" Run last command
noremap <localleader>r :!tmux send-keys -t right run_last_command C-m<CR><CR>
