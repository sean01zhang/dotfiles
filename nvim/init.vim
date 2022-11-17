" Settings
set nocompatible " disabled old-time vi
set showmatch
set ignorecase
set hlsearch " highlight search results
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set splitbelow splitright " Change the split screen behavior
" set title " Show file title
set wildmenu " Show a more advance menu

filetype plugin indent on   " Allow auto-indenting depending on file type

set ttyfast " Speed up scrolling in Vim

" always show status
set laststatus=2

" editing things
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cc=80 " 80 col line
set tw=79
set autoindent
set smartindent

" line numbering
set number

runtime ./plug.vim
runtime./maps.vim

let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
let g:sonokai_transparent_background = 2

" true color
if exists("&termguicolors")
  syntax on
  set termguicolors
  " GRUVBOX THEME
  " let g:gruvbox_contrast_dark='hard' 
  colorscheme sonokai
endif

let g:airline#extensions#tabline#enabled = 1 " tab bar
set noshowmode " get rid of default mode indicator (eg. -- INSERT -- )
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1

" Vim LAtex live preview
autocmd Filetype tex setl updatetime=1000
let g:livepreview_previewer = 'open -a Skim'


lua << EOF

require 'colorizer'.setup()
require 'nvim-web-devicons'.setup()
require 'scrollbar'.setup()
require 'presence':setup({
  auto_update = true,
})

EOF

