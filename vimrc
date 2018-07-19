" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

call plug#end()

" Visuals
syntax enable
filetype plugin on
filetype plugin indent on
let g:solarized_termcolors=256

let background_color = empty($LIGHT)?"dark":"light"
exe "set background=".background_color

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

colorscheme solarized

set number
set hlsearch

let mapleader = ","
let maplocalleader = ","

" Vue settings
let g:vue_disable_pre_processors=1

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
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

" CtrlP - fuzzy finder
noremap <localleader>ff :CtrlP<CR>
noremap <localleader>be :CtrlPBuffer<CR>
noremap <localleader>fr :CtrlPClearCache<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Nerd Commenter
noremap <localleader>cc k

" Movement
noremap H ^
noremap L $

command! -nargs=1 Silent
     \   execute 'silent !' . <q-args>
     \ | execute 'redraw!'

" Run last command
noremap <localleader>rl :Silent tmux send-keys -t right C-c run_last_command C-m<CR>

" Run current specfile
noremap <localleader>rb :Silent tmux send-keys -t right rspec " " % C-m<CR>

" unlight with leader nh
noremap <localleader>nh :noh<CR>

" icons for nerd tree
set encoding=utf8

" let vim update faster for git on side
set updatetime=100
