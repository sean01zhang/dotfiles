if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

-- use custom config
saga.init_lsp_saga({
    -- put modified options in there
  border_style = "round",
  code_action_prompt = {
    enable = false
  },
  symbol_in_winbar = {
      in_custom = true
  }
})
EOF


