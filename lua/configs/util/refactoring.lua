return {
  "ThePrimeagen/refactoring.nvim",
  event = "User FilePost",
  cmd = "Refactor",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
  },
  config = function()
    require("refactoring").setup()
  end,
}
