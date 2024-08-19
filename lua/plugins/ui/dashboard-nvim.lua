return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup {
      theme = "hyper",
      disable_move = true,
      shortcut_type = "number",
      config = {
        week_header = {
          enable = true,
          append = {
            "",
            "Reminder:",
            "I use Neovim (btw)",
          },
        },
        shortcut = {},
        mru = { limit = 5 },
        -- project = {
        --   action = function(path)
        --     vim.cmd "Lazy load harpoon vim-dadbod-ui"
        --     vim.cmd("Telescope find_files cwd=" .. path)
        --   end,
        -- },
        footer = {
          " ",
          "You suck.",
          "Be better for Quintin and Shoshanna.",
        },
      },
      change_to_vcs_root = true,
    }
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
