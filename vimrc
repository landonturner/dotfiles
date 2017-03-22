" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

call plug#end()

" Visuals
syntax enable
filetype plugin indent on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set number

let maplocalleader = ","

" Delete the new line as well
set backspace=indent,eol,start

" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" Scroll settings
set scrolloff=5

" Nerd Tree Things
noremap <localleader>nt :NERDTreeToggle<CR>
noremap <localleader>nr :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP - fuzzy finder
noremap <localleader>ff :CtrlP<CR>
noremap <localleader>be :CtrlPBuffer<CR>
noremap <localleader>fr :CtrlPClearCache<CR>

" Movement
noremap H ^
noremap L $
inoremap jk <Esc>

command! -nargs=1 Silent
     "\   execute 'silent !' . <q-args>
     "\ | execute 'redraw!'

" Run last command
noremap <localleader>rl :Silent tmux send-keys -t right run_last_command C-m<CR>

" Run current specfile
noremap <localleader>rb :Silent tmux send-keys -t right rspec " " % C-m<CR>
