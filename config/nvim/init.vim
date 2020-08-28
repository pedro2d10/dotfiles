syntax on

set relativenumber
set number
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
"set nocompatible              " be iMproved, required
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'vim-scripts/nginx.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrl_user_command = ['.git/']
let mapleader = " " 
let g:netrw_browse_split = 2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:user_emmet_leader_key=','
let g:emmet_lang='fr'
let g:user_emmet_settings={
\    'variables':{
\       'lang':'fr',
\   },
\}
