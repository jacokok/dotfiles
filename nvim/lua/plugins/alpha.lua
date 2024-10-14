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
	-- config = function()
	-- 	local alpha = require("alpha")
	-- 	local dashboard = require("alpha.themes.theta")
	--
	-- 	dashboard.section.header.val = {
	--
	-- 		"        ::::    ::: :::     ::: :::::::::::   :::   ::: ",
	-- 		"       :+:+:   :+: :+:     :+:     :+:      :+:+: :+:+: ",
	-- 		"      :+:+:+  +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ",
	-- 		"     +#+ +:+ +#+ +#+     +:+     +#+     +#+  +:+  +#+  ",
	-- 		"    +#+  +#+#+#  +#+   +#+      +#+     +#+       +#+   ",
	-- 		"   #+#   #+#+#   #+#+#+#       #+#     #+#       #+#    ",
	-- 		"  ###    ####     ###     ########### ###       ###     ",
	-- 	}
	--
	-- 	-- dashboard.section.buttons.val = {
	-- 	-- dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
	-- 	-- dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
	-- 	-- dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
	-- 	-- dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
	-- 	-- dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
	-- 	-- dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
	-- 	-- }
	--
	-- 	-- Send config to alpha
	-- 	alpha.setup(dashboard.config)
	--
	-- 	-- vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	-- end,
}
