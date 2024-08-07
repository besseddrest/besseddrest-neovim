return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      stages = "static",
      message = {
        width = 100,
      },
    }
    vim.notify = require "notify"
  end,
}
