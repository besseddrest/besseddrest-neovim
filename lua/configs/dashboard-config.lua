local db = {
  theme = "hyper",
  shortcut_type = "number",
  config = {
    week_header = {
      enable = true,
    },
  },
}

require("dashboard").setup(db)
