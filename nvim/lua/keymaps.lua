-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Escape and Clear hlsearch" })

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- Copy paste to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "i", "c", "t" }, "<C-S-v>", function()
	vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
end)
vim.keymap.set({ "n", "v" }, "<C-S-c>", '"+y')
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+p')

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Diagnostic keyvim.keymap.sets
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- buffers
-- TODO: use other way to switch between buffers
-- vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>bp", "<cmd>BufferPin<cr>", { desc = "Pin Buffer" })

vim.keymap.set("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>ba", function()
	Snacks.bufdelete.all()
end, { desc = "Close All Buffers" })
vim.keymap.set("n", "<leader>bc", function()
	Snacks.bufdelete.other()
end, { desc = "Close Other Buffers" })

-- Nvim Tree
-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>lua Snacks.explorer()<cr>", { desc = "Toggle Explorer" })

-- Terminal
-- Easily hit escape in terminal mode.
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({ "n", "t" }, "<C-/>", function()
	Snacks.terminal.toggle(nil, { win = { position = "float" } })
end, { desc = "Toggle Terminal" })

--Git
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle blame line" })
vim.keymap.set("n", "<leader>go", function()
	Snacks.gitbrowse()
end, { desc = "Open Git Repo in Browser" })
vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })
vim.keymap.set("n", "<leader>gl", function()
	Snacks.lazygit.log()
end, { desc = "Lazygit Log" })
vim.keymap.set("n", "<leader>gf", function()
	Snacks.lazygit.log_file()
end, { desc = "Lazygit Log File" })

-- Open file explorer
vim.keymap.set("n", "<leader>oo", OpenInFolder(), { desc = OpenInFolderlabel(), silent = true })

-- Notifications
vim.keymap.set("n", "<leader>nd", function()
	Snacks.notifier.hide()
end, { desc = "Hide Notifications" })
vim.keymap.set("n", "<leader>nh", function()
	Snacks.notifier.show_history()
end, { desc = "Notification History" })
