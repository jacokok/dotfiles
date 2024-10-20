return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{ "Bilal2453/luvit-meta", lazy = true },
	{
		"seblj/roslyn.nvim",
		ft = "cs",
		opts = {
			exe = "Microsoft.CodeAnalysis.LanguageServer",
		},
	},
}
