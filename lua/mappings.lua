-- require "nvchad.mappings"
local map = vim.keymap.set

-- NOTE: VIM BASICS
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- keep cursor centered
map("n", "<Up>", "<Up>zz", { desc = "Navigate Up" })
map("n", "<Down>", "<Down>zz", { desc = "Navigate Down" })
map("n", "k", "kzz", { desc = "Navigate Up" })
map("n", "j", "jzz", { desc = "Navigate Down" })
map("n", "}", "{zz", { desc = "Jump Up Blank Line" })
map("n", "{", "}zz", { desc = "Jump Down Blank Line" })
map("n", "<C-u>", "<C-u>zz", { desc = "Jump Up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Jump Down" })

-- REMAP ARROW CLUSTER TO IJKL
-- map({ "n", "v", "o" }, "j", "<Left>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "k", "<Down>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "i", "<up>", { noremap = true, silent = true })
-- map({ "n", "v", "o" }, "l", "<Right>", { noremap = true, silent = true })

-- REMAP INSERT I TO H WHEN ARROW CLUSTER IS IJKL
-- map({ "n", "v", "o" }, "h", "i", { noremap = true, silent = true })
-- map({ "n" }, "chw", "ciw", { noremap = true, silent = true })
-- map({ "n" }, "dhw", "diw", { noremap = true, silent = true })

-- NOTE: EDITOR

-- move line
map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- (i)nlay hints (e)nable/(d)isable
map("n", "<leader>ie", function()
  vim.lsp.inlay_hint.enable(true)
end, { desc = "Enable Inlay Hints" })
map("n", "<leader>id", function()
  vim.lsp.inlay_hint.enable(false)
end, { desc = "Disable Inlay Hints" })

-- (f)ind and (r)eplace
map("n", "<leader>fr", ":%s/", { desc = "Find/Search and Replace" })

-- edit (n)ew (b)uffer
map("n", "<leader>nb", "<cmd>ene<cr>", { desc = "edit new buffer" })

-- (o)pen (d)iagnostic float
map("n", "<leader>od", function()
  return vim.diagnostic.open_float { width = 50 }
end)

-- greatest remap ever (ThePrimeagen)
map("x", "<leader>p", '"_dP')

-- window
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })

-- (f)or(m)at
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
map({ "n", "t" }, "<A-t>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
  }
end, { desc = "terminal toggle floating term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })

map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

-- NOTE: PLUGIN SPECIFIC

-- Floating Help
map("n", "<leader>fh", "<cmd>FloatingHelpClose<CR>", { desc = "Help Close" })

-- DadBod: (db)UI
map("n", "<leader>db", "<cmd>DBUIToggle<CR>", { desc = "DBUI toggle" })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })

-- Telescope
map("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Themes" })
map("n", "<leader>no", "<cmd>Telescope notify<CR>", { desc = "Notify" })
map("n", "<leader>hl", "<cmd>Telescope highlights<CR>", { desc = "Highlights" })
map("n", "<leader>re", "<cmd>Telescope resume<CR>", { desc = "Resume" })

-- Neogit
map("n", "<leader>ng", "<cmd>Neogit<CR>", { desc = "Neogit" })
