-- This file needs to have same structure as nvconfig.lua
-- https://github-.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "bearded-arc",
  transparency = true,
  telescope = { style = "bordered" },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    -- NormalFloat = { bg = { "black", -5 } },
    -- TelescopeNormal = { bg = "none" },
  },
  hl_add = {
    ColorColumn = { bg = { "grey", -12 } },
  },
}

return M
