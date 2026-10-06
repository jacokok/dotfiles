hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + SHIFT + F", "File manager", "strata")

hl.unbind("SUPER + SHIFT + RETURN")
-- o.bind("SUPER + SHIFT + RETURN", "Browser", "omarchy-launch-or-focus browser")
-- o.bind("SUPER + SHIFT + RETURN", "Browser", { omarchy = "browser" })
o.bind("SUPER + SHIFT + RETURN", "Browser", "omarchy-launch-or-focus browser 'omarchy launch browser'")

o.bind("SUPER + SHIFT + E", "Zed", "omarchy-launch-or-focus zed")

hl.unbind("SUPER + RETURN")
o.bind("SUPER + RETURN", "Herdr", { tui = "herdr", focus = true })
o.bind("SUPER + CTRL + RETURN", "Terminal", { omarchy = "terminal" })

o.bind("SUPER + SHIFT + O", "Obsidian", "omarchy-launch-or-focus obsidian")
