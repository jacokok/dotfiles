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

hl.unbind("ALT + SPACE")

-- Dictation keys from before Alt + Space and Right Alt became the defaults.
-- Remove these lines to give the keys back to applications.
if o.dictation_installed and o.dictation_installed() then
  o.bind("SUPER + CTRL + X", "Toggle dictation", "omarchy-dictation toggle")
  o.bind_hold("F9", "Start dictation (push-to-talk)", "omarchy-dictation start", "Stop dictation (push-to-talk)", "omarchy-dictation stop")
end
