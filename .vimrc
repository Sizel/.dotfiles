" Plugins
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jsfaint/gen_tags.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'BurntSushi/ripgrep'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'valloric/youcompleteme'
call plug#end()

" Set color scheme
set t_Co=256
set background=light
colorscheme PaperColor 

" Disable creation of swap files
set noswapfile

" Set nocompatible
set nocompatible

" Set leader key
let mapleader = " "

let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:loaded_gentags#gtags = 1

" Turn syntax highlight
syntax on

" Add numbers to each line
set number
set relativenumber

" Highlight cursor line
set cursorline

set tags+=.git/tags,.git/rubytags
set tagcase=match
noremap ,gt :!gentags<CR>

nnoremap <F5> :NERDTree<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader><leader> :e #<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>f :Rg<CR>

" Copy and paste to system's clipboard
noremap  <Leader>y "+yy
noremap  <Leader>p "+p

