
" -- NERDTREE
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <leader>t :NERDTreeToggle<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" start nerdtree always
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" -- NVIM TREE LUA

lua << EOF

require("nvim-tree").setup()

EOF

nnoremap <leader>n :NvimTreeFocus<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <C-n> :NvimTreeOpen<CR>



