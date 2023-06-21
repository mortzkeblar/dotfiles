call plug#begin('~/.config/nvim/plugged')
    
    Plug 'tpope/vim-sleuth'
    " LSP
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    " Dependency LSP
        Plug 'nvim-lua/plenary.nvim'
   
    " Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'
    "  Snippets
    Plug 'L3MON4D3/LuaSnip'
    " Snippet collection (Optional)
    Plug 'rafamadriz/friendly-snippets'
    Plug 'VonHeikemen/lsp-zero.nvim'
 
    " Autosave
    Plug 'pocco81/auto-save.nvim'
    
    " themes
    Plug 'EdenEast/nightfox.nvim'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'rose-pine/neovim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'joshdick/onedark.vim'
    Plug 'kaicataldo/material.vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'chriskempson/base16-vim'

    Plug 'daviesjamie/vim-base16-lightline'
    " " Brackets colour
   " Plug 'frazrepo/vim-rainbow'
    
    " syntax support
    " Plug 'sheerun/vim-polyglot'
    
    " Autopairs
    Plug 'jiangmiao/auto-pairs'
    
    " Icons
    Plug 'ryanoasis/vim-devicons'
    
    " Lightline status bar
    Plug 'maximbaz/lightline-ale'
    Plug 'itchyny/lightline.vim'
    
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    "
    " " Prettier
    Plug 'neovim/nvim-lspconfig'
    Plug 'jose-elias-alvarez/null-ls.nvim'
    "Plug 'MunifTanjim/prettier.nvim'
    " Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    " " IDE
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/vimux'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'alvan/vim-closetag'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'mhinz/vim-signify'
    Plug 'numToStr/Comment.nvim'
    
    " Disable
    "Plug 'williamboman/nvim-lsp-installer'
    "Plug 'noib3/nvim-cokeline'    
     Plug 'junegunn/rainbow_parentheses.vim'

    Plug 'ellisonleao/glow.nvim'
call plug#end()
