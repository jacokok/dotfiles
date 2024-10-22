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
	{ "Bilal2453/luvit-meta" },
	{
		"seblj/roslyn.nvim",
		ft = "cs",
		opts = {
			exe = "Microsoft.CodeAnalysis.LanguageServer",
		},
	},
}
