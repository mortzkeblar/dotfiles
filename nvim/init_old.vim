"set autowriteall
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set smartindent
set autoindent
"set hidden
"filetype on
"filetype indent on
"filetype plugin on
if (has("termguicolors"))
    set termguicolors
endif


call plug#begin('~/.vim/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'noib3/nvim-cokeline'
" Autosave
Plug 'pocco81/auto-save.nvim'
" " themes
Plug 'rose-pine/neovim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'chriskempson/base16-vim'

" " Brackets colour
Plug 'frazrepo/vim-rainbow'
"--Plug 'junegunn/rainbow_parentheses.vim'
"
" " syntax support
" Plug 'sheerun/vim-polyglot'
"
" " Autopairs
Plug 'jiangmiao/auto-pairs'
"
" " Icons
Plug 'ryanoasis/vim-devicons'
"
" " Airline
" " Plug 'vim-airline/vim-airline'
" " Plug 'vim-airline/vim-airline-themes'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
" " Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"
" " Prettier
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'
"
" " IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'alvan/vim-closetag'
Plug 'yggdroot/indentline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif
" " Commentary
Plug 'numToStr/Comment.nvim'
call plug#end()

" INITIAL SETUP
set termguicolors

lua require('cokeline').setup()
lua require('Comment').setup()


colorscheme rose-pine 
let NERDTreeQuitOnOpen=1

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-sn)
nmap <Leader>nt :NERDTreeFind<CR>

" " configuration brackets colour
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
"autocmd FileType * RainbowParentheses
let g:rainbow_active = 1


" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nmap w :w!<CR>
nmap q :q<CR>
nmap ww :wq<CR>
nmap qq :q!<CR>
nmap <Leader>f <Plug>(prettier-format)
"nmap <Leader>PageDown :tabNext<CR>

