return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"b0o/schemastore.nvim",
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			vim.opt.termguicolors = true
			require("colorizer").setup()
		end,
	},
}
