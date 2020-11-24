require'nvim-treesitter.configs'.setup {
  ensure_installed = "html", "elm", "c", "teal", "java", "dart", "go", "nix", "jsdoc", "php", "clojure", "fennel", "swift", "query", "regex", "cpp", "verilog", "ql", "ocamllex", "scala", "rst", "julia", "haskell", "c_sharp", "tsx", "json", "toml", "yaml", "json", "javascript", "typescript", "python", "lua", "ruby", "rust", "vue", "bash", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

-- require'nvim-treesitter.config'.setup {
--   indent = {
--     enable = true
--   }
-- }
--


