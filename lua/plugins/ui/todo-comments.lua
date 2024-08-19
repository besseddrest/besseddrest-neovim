return {
  "folke/todo-comments.nvim",
  ft = {
    "lua",
    "html",
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "tsx",
    "jsx",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- defaults
    -- TODO:
  },
  config = function()
    require("todo-comments").setup()
  end,
}
