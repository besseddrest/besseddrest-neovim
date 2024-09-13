local function move_right()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>l", true, true, true), "n", true)
end

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  cmds = { "NvimTreeToggle" },
  config = function()
    require("dashboard").setup {
      theme = "hyper",
      disable_move = true,
      shortcut_type = "number",
      config = {
        header = {
          [[                                                                       ]],
          [[                                                                     ]],
          [[       ████ ██████           █████      ██                     ]],
          [[      ███████████             █████                             ]],
          [[      █████████ ███████████████████ ███   ███████████   ]],
          [[     █████████  ███    █████████████ █████ ██████████████   ]],
          [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
          [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
          [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
          [[                                                                       ]],
          [[                                   (btw)                               ]],
          [[                                                                       ]],
        },
        week_header = {
          enable = false,
          append = {
            "",
            "Reminder:",
            "I use Neovim (btw)",
          },
        },
        shortcut = {
          {
            desc = "New File ",
            key = "n",
            action = function()
              vim.cmd [[ ene ]]
              vim.cmd [[ NvimTreeToggle ]]
              move_right()
            end,
          },
          { desc = "Config ", key = "c", action = "Telescope find_files cwd='~/.config/nvim'" },
          {
            desc = "DBUI ",
            key = "d",
            action = function()
              vim.cmd [[ ene ]]
              vim.cmd [[ DBUI ]]
            end,
          },
        },
        mru = { limit = 5 },
        project = {
          enable = true,
          limit = 4,
        },
        footer = {
          " ",
          "You suck.",
          "Be better for Quintin and Shoshanna",
        },
      },
      change_to_vcs_root = true,
    }
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
