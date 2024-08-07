-- This file needs to have same structure as nvconfig.lua
-- https://github-.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyonight",
  transparency = true,
  telescope = { style = "bordered" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    MsgArea = { bg = "red", fg = "blue" },
    StatusLine = { link = "MsgArea" },
  },
  hl_add = {
    ColorColumn = { bg = { "grey", -12 } },
    DashboardHeader = { fg = { "orange", -10 } },
    DashboardProjectTitle = { link = "DashboardHeader" },
    DashboardMruTitle = { link = "DashboardHeader" },
    DashboardFooter = { link = "DashboardHeader" },
    NotifyBackground = { bg = "orange" },
  },
}

return M
