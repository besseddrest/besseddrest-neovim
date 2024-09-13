require "nvchad.options"

local o = vim.o

-- terminal general
o.termguicolors = true
o.guicursor = "i-ci:ver25-blinkwait500-blinkon500-blinkoff500"
o.background = "dark"
o.signcolumn = "yes"
o.cursorline = true
o.relativenumber = true
o.colorcolumn = "90"

-- editing
o.tabstop = 4
o.shiftwidth = 4
o.autoindent = true
o.wrap = true
o.linebreak = true
o.textwidth = 80
o.scrolloff = 10
o.ruler = true
