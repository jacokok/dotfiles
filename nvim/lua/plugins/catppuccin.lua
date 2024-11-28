return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				term_colors = true,
				integrations = {
					neotree = true,
					treesitter = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					which_key = true,
					mason = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
