set nocompatible
set number relativenumber
set mouse=va
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
filetype plugin indent on
set wildmode=longest, list
set wildmenu
set clipboard=unnamedplus
set syntax=on
set path+=**
set nolist
set scrolloff=5

"-- List of Plugin --"
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'ryanoasis/vim-devicons'
call plug#end()


"-- Map shortcut --"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Start NERDTree and switch cursor"
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeGitStatusUseNerdFonts = 1

" -- custom down bar --
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" -- theme init --
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme Nightfox

