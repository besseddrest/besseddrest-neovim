return {
  -- can't live w/o em
  { import = "plugins.base.conform" },
  { import = "plugins.base.mason" },
  { import = "plugins.base.treesitter" },
  { import = "plugins.lang.lspconfig" },

  -- util
  { import = "plugins.ui.harpoon2" },

  -- ui
  { import = "plugins.ui.dashboard-nvim" },
  { import = "plugins.ui.noice" },
  { import = "plugins.ui.notify" },

  --db
  { import = "plugins.ui.vim-dadbod-ui" },

  -- language related
  { import = "plugins.lang.ts-autotag" },
  { import = "plugins.lang.ts-tools" },
}
