local opt = vim.opt
local g = vim.g

-- Leader
g.mapleader = ","
g.maplocalleader = ","

-- History
opt.history = 500

-- File handling
opt.autoread = true
opt.autochdir = true

-- UI
opt.number = true
opt.showmatch = true
opt.wrap = true
opt.linebreak = true
opt.textwidth = 200

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Performance / files
opt.lazyredraw = true
opt.magic = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Shell
opt.shell = "sh"

-- Indentation
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.autoindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

-- Font (only matters in GUI clients like neovide)
opt.guifont = "Consolas:h11"

-- Recommended
opt.termguicolors = true
opt.mouse = ""

-- Overwrite PATH tools 
vim.g.python3_host_prog = "/usr/bin/python3.12"
vim.g.perl_host_prog = "/usr/bin/perl"
vim.g.node_host_prog = "/home/felipeb/.npm-global/lib/node_modules/neovim/bin/cli.js"
