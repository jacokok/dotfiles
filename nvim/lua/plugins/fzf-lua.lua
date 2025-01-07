return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	-- opts = {},
	opts = function(_, opts)
		local fzf = require("fzf-lua")
		-- local config = fzf.config
		-- local actions = fzf.actions
		-- local keymaps = fzf.keymaps

		vim.keymap.set("n", "<leader>fh", fzf.helptags, { desc = "[f]ind [h]elp" })
		vim.keymap.set("n", "<leader>fk", fzf.keymaps, { desc = "[f]ind [k]eymaps" })
		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "[f]ind [f]iles" })
		vim.keymap.set("n", "<leader>fs", fzf.builtin, { desc = "[f]ind [s]buildin" })
		vim.keymap.set("n", "<leader>fw", fzf.grep, { desc = "[f]ind current [w]ord" })
		vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "[f]ind by [g]rep" })
		vim.keymap.set("n", "<leader>fd", fzf.diagnostics_document, { desc = "[f]ind [d]iagnostics" })
		vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "[f]ind [b]uffers" })
		vim.keymap.set("n", "<leader>fr", fzf.resume, { desc = "[f]ind [r]esume" })
		vim.keymap.set("n", "<leader>fo", fzf.oldfiles, { desc = "[f]ind [o]ld files" })
	end,
}
