return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local alpha = require("alpha")

		local header = {
			type = "text",
			val = {
				".------. .------.",
				"|K.--. | |J.--. |",
				"| ://: | | :(): |",
				"| ://: | | ()() |",
				"| '--'K| | '--'J|",
				"`------' `------'",
			},
			opts = {
				position = "center",
				hl = "Type",
				-- wrap = "overflow";
			},
		}

		local config = {
			layout = {
				{ type = "padding", val = 8 },
				header,
			},
			opts = {
				margin = 5,
				setup = function()
					vim.api.nvim_create_autocmd("DirChanged", {
						pattern = "*",
						group = "alpha_temp",
						callback = function()
							require("alpha").redraw()
							vim.cmd("AlphaRemap")
						end,
					})
				end,
			},
		}
		alpha.setup(config)
	end,
}
