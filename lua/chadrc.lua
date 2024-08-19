-- This file needs to have same structure as nvconfig.lua
-- https://github-.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
---@type ChadrcConfig

local M = {}

M.ui = {
    -- nvdash = {
    --   load_on_startup = true,
    -- },
    theme = "catppuccin",
    transparency = true,
    telescope = { style = "bordered" },

    hl_override = {
        MsgArea = { bg = "red", fg = "blue" },
        StatusLine = { link = "MsgArea" },
        TbBufOn = { bg = "black", fg = "orange" },
        TbBufOnModified = { bg = "black" },
        TbBufOnClose = { bg = "black" },
        TelescopeSelection = { bg = "black", fg = "orange" },

        -- white helps w catppuccin transparency
        LineNr = { fg = { "white", -50 } },
        Comment = { italic = true, fg = { "white", -40 } },
        ["@comment"] = { italic = true, fg = { "white", -40 } },
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
