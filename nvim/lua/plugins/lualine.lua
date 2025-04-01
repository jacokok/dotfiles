return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "" } },
				},
				lualine_y = {
					{ "progress", padding = { left = 0, right = 0 } },
					{ "location", padding = { left = 0, right = 0 } },
				},
				lualine_z = {
					{ "os.date('%R')", icon = " ", separator = { right = "" } },
				},
			},
		})
	end,
}
