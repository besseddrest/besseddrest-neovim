return {
  "nvim-tree/nvim-tree.lua",
  opts = function()
    local chad = require "nvchad.configs.nvimtree"
    chad.view.relativenumber = true
    chad.view.width = 30
    chad.filters.dotfiles = false
    chad.filters.git_ignored = false
    chad.filters.custom = { "node_modules" }
    return chad
  end,
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = { "node_modules" },
  },

  config = function(_, opts)
    dofile(vim.g.base46_cache .. "nvimtree")
    require("nvim-tree").setup(opts)
  end,
}
