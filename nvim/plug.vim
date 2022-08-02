
call plug#begin('~/.config/nvim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'
" Plug 'kien/rainbow_parentheses.vim'
Plug 'ap/vim-css-color'

" Git
Plug 'tpope/vim-fugitive'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" language support
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" AUTOCOMPLETE
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'

" theme
" Plug 'arcticicestudio/nord-vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'itchyny/lightline.vim'

" preview for markdown
" Plug 'kannokanno/previm'

call plug#end()
