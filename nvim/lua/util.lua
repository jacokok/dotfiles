function open_in_folder()
	local format = "<cmd>!xdg-open %s<cr>"
	if vim.fn.has("mac") == 1 then
		format = "<cmd>!open -a Finder.app %s<cr>"
	end
	return string.format(format, vim.fn.expand("%:p:h"))
end

function open_in_folder_label()
	if vim.fn.has("mac") == 1 then
		return "Open current directory in Finder"
	end

	local default_fm = "file browser"
	if vim.fn.executable("xdg-mime") == 1 then
		default_fm = vim.fn.system({ "xdg-mime", "query", "default", "inode/directory" })
	end

	return string.format(
		"Open current directory in %s",
		default_fm:gsub(".desktop", ""):gsub("\n", ""):gsub("org.gnome.", "")
	)
end
