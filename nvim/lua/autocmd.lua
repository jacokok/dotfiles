local set = vim.opt_local

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	desc = "No line number on terminal",
	group = vim.api.nvim_create_augroup("custom_term-open", {}),
	callback = function()
		set.number = false
		set.relativenumber = false
		set.scrolloff = 0

		vim.bo.filetype = "terminal"
	end,
})

-- Load Snacks statuscolumn after nvim-treesitter loads. Crashes when set in options.lua
vim.api.nvim_create_autocmd("User", {
	pattern = "nvim-treesitter",
	callback = function()
		vim.opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]
	end,
})
