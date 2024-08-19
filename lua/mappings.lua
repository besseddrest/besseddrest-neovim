-- require "nvchad.mappings"
local map = vim.keymap.set

-- NOTE: VIM BASICS
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- REMAP ARROW CLUSTER TO IJKL
-- map({ "n", "v", "o" }, "j", "<Left>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "k", "<Down>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "i", "<up>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "l", "<Right>", { noremap = true, silent = true })

-- REMAP INSERT I TO H WHEN ARROW CLUSTER IS IJKL
-- map({ "n", "v", "o" }, "h", "i", { noremap = true, silent = true })
-- map({ "n" }, "chw", "ciw", { noremap = true, silent = true })
-- map({ "n" }, "dhw", "diw", { noremap = true, silent = true })

-- open diagnostic float
map("n", "<leader>od", function()
    return vim.diagnostic.open_float()
end)

-- NOTE: EDITOR

-- greatest remap ever
map("x", "<leader>p", "\"_dP")

-- keep cursor centered
map("n", "<C-u>", "<C-u>zz", { desc = "Jump Up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Jump Down" })
map("n", "k", "kzz", { desc = "Navigate Up" })
map("n", "j", "jzz", { desc = "Navigate Down" })
-- map("n", "<S-{>", "<S-{>zz", { desc = "Navigate Up" })
-- map("n", "<S-}>", "<S-}>zz", { desc = "Navigate Down" })

-- window
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })

-- format
map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- tabufline
map("n", "<tab>", function()
    require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
    require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
    require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- comments
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- terminals
map({ "n", "t" }, "<A-v>", function()
    require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
    require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })

map({ "n", "t" }, "<A-t>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- NOTE: PLUGIN SPECIFIC

-- DadBod
map("n", "<leader>db", "<cmd>DBUIToggle<CR>", { desc = "DBUI toggle" })

-- ZenMode
map("n", "<leader>zm", "<cmd>ZenMode<CR>", { desc = "ZenMode toggle" })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })

-- Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })

-- Fugitive
map("n", "<leader>gf", ":Git ", { desc = "Fugitive" })
