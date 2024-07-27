require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Remap hjkl to arrow keys in both normal and visual modes
map("n", "j", "<Left>", { noremap = true, silent = true })
map("n", "k", "<Down>", { noremap = true, silent = true })
map("n", "i", "<Up>", { noremap = true, silent = true })
map("n", "l", "<Right>", { noremap = true, silent = true })

map("v", "j", "<Left>", { noremap = true, silent = true })
map("v", "k", "<Down>", { noremap = true, silent = true })
map("v", "i", "<Up>", { noremap = true, silent = true })
map("v", "l", "<Right>", { noremap = true, silent = true })

-- open diagnostic float
map("n", "<leader>od", function()
  return vim.diagnostic.open_float()
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
