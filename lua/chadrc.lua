-- This file needs to have same structure as nvconfig.lua
-- https://github-.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
---@type ChadrcConfig

local M = {}

local bdWhite = { "white", -30 }

M.ui = {
  -- nvdash = {
  --   load_on_startup = true,
  -- },
  theme = "catppuccin",
  transparency = true,
  telescope = { style = "bordered" },

  hl_override = {
    -- MsgArea = { bg = "red", fg = "blue" },
    -- StatusLine = { link = "MsgArea" },
    TbBufOn = { fg = "yellow" },
    --   TbBufOff = { fg = bdWhite },
    -- TbBufOffClose = { link = "TbBufOff" },
    --
    --   -- white helps w catppuccin transparency
    Comment = { italic = true, fg = { "grey", 15 } },
    ["@comment"] = { italic = true, fg = { "grey", 15 } },
    CursorLineNr = { fg = "yellow" },
    -- LineNr = { link = "TbBufOff", fg = { "grey", 10 } },
    TelescopeBorder = { fg = "white" },
    TelescopePromptBorder = { link = "TelescopeBorder" },
    TelescopeSelection = { fg = "yellow" },
    Visual = { bg = { "grey", 0 } },
    -- LspInlayHint = { bg = "pink" },
  },
  --
  hl_add = {
    -- ColorColumn = { bg = { "grey", -12 } },
    DashboardHeader = { fg = { "yellow", -20 } },
    DashboardProjectTitle = { link = "DashboardHeader" },
    DashboardMruTitle = { link = "DashboardHeader" },
    DashboardFooter = { link = "DashboardHeader" },
    DashboardShortCutIcon = { link = "DashboardHeader" },
    NotifyBackground = { bg = "orange" },
    TelescopePromptCounter = { fg = "yellow" },
    NotificationInfo = { bg = "NONE" },
    NotificationWarning = { bg = "NONE", fg = "yellow" },
    NotificationError = { bg = "NONE", fg = "red" },
    -- NvimTreeNormal = { link = "NONE" },
    -- NvimGitDirty = { link = "NONE" },
    -- NoiceCmdlinePopupBorder = { fg = { "green", 0 } },
    --   LspInfoBorder = { fg = "pink" },
  },
}

M.term = {
  float = {
    width = 1,
    height = 1,
    -- col = 0,
    -- row = 0.15,
  },
}

return M
