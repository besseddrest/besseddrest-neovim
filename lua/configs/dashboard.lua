return {
  theme = "hyper",
  config = {
    -- week_header {
    --   enable = true,
    -- },
    shortcut = {
      { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
      {
        icon = " ",
        icon_hl = "@variable",
        desc = "Foobar",
        group = "Label",
        action = "Telescope find_files",
        key = "f",
      },
      {
        desc = " Hello",
        group = "DiagnosticHint",
        action = "Telescope app",
        key = "a",
      },
      {
        desc = " World",
        group = "Number",
        action = "Telescope dotfiles",
        key = "d",
      },
    },
  },
}
