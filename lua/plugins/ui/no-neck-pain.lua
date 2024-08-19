return {
  "shortcuts/no-neck-pain.nvim",
  event = "BufEnter",
  version = "*",
  opts = {},
  config = function()
    require("no-neck-pain").setup {
      mappings = {
        enabled = true,
      },
      autocmds = {
        skipEnteringNoNeckPainBuffer = true,
      },
      integrations = {
        NvimTree = {
          position = "left",
          reopen = true,
        },
      },
    }
  end,
}
