-- require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Remap hjkl to arrow keys in both normal and visual modes
map({ "n", "v" }, "j", "<Left>", { noremap = true, silent = true })
map({ "n", "v" }, "k", "<Down>", { noremap = true, silent = true })
map({ "n", "v" }, "i", "<Up>", { noremap = true, silent = true })
map({ "n", "v" }, "l", "<Right>", { noremap = true, silent = true })

-- map("v", "j", "<Left>", { noremap = true, silent = true })
-- map("v", "k", "<Down>", { noremap = true, silent = true })
-- map("v", "i", "<Up>", { noremap = true, silent = true })
-- map("v", "l", "<Right>", { noremap = true, silent = true })

-- open diagnostic float
map("n", "<leader>od", function()
  return vim.diagnostic.open_float()
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- SELECT NVCHAD DEFAULTS --

-- window
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })

-- format
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

--tabufline
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })

-- terminals: toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- END SELECT NVCHAD DEFAULTS --
