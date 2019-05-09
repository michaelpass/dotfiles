﻿"              _                    
"       __   _(_)_ __ ___  _ __ ___ 
"       \ \ / / | '_ ` _ \| '__/ __|
"        \ V /| | | | | | | | | (__ 
"         \_/ |_|_| |_| |_|_|  \___|
" -----------------------------------------------------------------------------
syntax on

colorscheme desert
" colorscheme monokai_pro


" Leader Mappings
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>
map <Leader>gs :Gstatus<CR>

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

set expandtab
set tabstop=4
set numberwidth=3
set autoindent
set history=50
set ruler
set showcmd
set incsearch
set number relativenumber
set shiftwidth=4

" Color column
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=0

" " Change cursor shape with insert (macOS)
" let &t_SI = "\e[3 q"
" let &t_EI = "\e[2 q"

" Change cursor shape (iTerm2/tmux)
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Underline in insert mode.
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" // Note: The following code enables mouse use for compatible systems.
" // Generally, it is advised against using the mouse with Vim,
" // but to each their own.

"if has('mouse')
"  set mouse=a
"endif

" #################### Vundle compatibility ####################
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
" Plug 'gmarik/Vundle.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'rking/ag.vim'
Plug 'kana/vim-textobj-user' 
Plug 'tpope/vim-repeat'
Plug 'kana/vim-textobj-line'
Plug 'scrooloose/nerdtree'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'christoomey/vim-titlecase'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll' 
Plug 'adelarsq/vim-matchit'
" Plug 'liuchengxu/vim-which-key'
" more Plugin commands

call plug#end()


" Plugin configuration - vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>


" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --path-to-ignore ~/.ignore --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
" ...

" Custom Key Bindings
" map <C-h> :NERDTreeToggle<CR>

set textwidth=0
set textwidth=80
set wrap linebreak nolist
set formatoptions=l
