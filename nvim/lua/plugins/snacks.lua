return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		dashboard = {
			width = 60,
			pane_gap = 4,
			preset = {
				header = [[
.------. .------.
|K.--. | |J.--. |
| ://: | | :(): |
| ://: | | ()() |
| '--'K| | '--'J|
`------' `------'
]],
			},
			sections = {
				{ section = "header" },
				{ section = "startup" },
			},
		},
		lazygit = { enabled = true },
		toggle = { notify = true, map = vim.keymap.set, which_key = true },
		notifier = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		win = {
			border = "rounded",
		},
	},
	config = function(_, opts)
		require("snacks").setup(opts)
	end,
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
				Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
				Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
				Snacks.toggle.diagnostics():map("<leader>ud")
				Snacks.toggle.line_number():map("<leader>ul")
				Snacks.toggle
					.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
					:map("<leader>uc")
				Snacks.toggle.treesitter():map("<leader>uT")
				Snacks.toggle.inlay_hints():map("<leader>uh")
			end,
		})
	end,
}
