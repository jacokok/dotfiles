return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
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
		toggle = { enabled = true },
		notifier = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
}
