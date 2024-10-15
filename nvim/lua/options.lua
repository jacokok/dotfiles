local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
-- vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
opt.showmode = false
opt.termguicolors = true

-- vim.schedule(function()
-- 	opt.clipboard = "unnamedplus"
-- end)

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 0
opt.expandtab = true
opt.smarttab = true
opt.cursorline = true

opt.smoothscroll = true
