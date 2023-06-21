lua<<EOF
  require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = false },
    textobjects = { enable = false },
  }
EOF
