return {
    "rcarriga/nvim-notify",
    opts = {},
    config = function()
        require("notify").setup {
            timeout = 2000,
            max_width = 100,
            min_width = 50,
            stages = "fade_in_slide_out",
            message = {
                width = 100,
            },
        }
        vim.notify = require "notify"
    end,
}
