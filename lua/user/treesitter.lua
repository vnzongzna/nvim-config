require("nvim-treesitter.configs").setup {
  -- Value can be "all", "maintained" (parsers with maintainers), or a
  -- list of languages
  ensure_installed = {
    -- "abnf",
    "bash",
    "c",
    "css",
    "go",
    "graphql",
    "html",
    "java",
    "javascript",
    "lua",
    "php",
    "python",
    "query",
    "regex",
    "ruby",
    "rust",
    "scala",
    "toml",
    "yaml",
  },

  highlight = {
    enable = true,
    -- Can also enable/disable for specific languages
    -- enable = { "python" },
    -- disable = { "c", "rust" },
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<A-9>",
      node_incremental = "<A-9>",
      -- scope_incremental = "<C-l>",
      node_decremental = "<A-8>",
    }
  },

  indent = {
    enable = true,

    -- The indent expressions for some languages are complete shit
    disable = { "python", "yaml" }
  },

  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },

  autotag = {
    enable = true,
    filetypes = {
      "html", "xml",
      "javascript", "javascriptreact", "typescriptreact",
      "svelte",
      "vue",
      "go"
    }
  }
}

vim.treesitter.set_query("python", "folds", [[
  (function_definition (block) @fold)
  (class_definition (block) @fold)
]])

vim.treesitter.set_query("go", "folds", [[
  [
    (function_declaration)
    (import_declaration)
    (method_declaration)
  ] @fold
]])
