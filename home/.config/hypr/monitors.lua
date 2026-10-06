-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = "auto"

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

hl.monitor({ output = "desc:Dell Inc. DELL S2721DGF", mode = "2560x1440@165", position = "2150x0", scale = 1.6 })
hl.monitor({ output = "desc:Dell Inc. DELL S3422DWG", mode = "3440x1440@144", position = "0x0", scale = 1.6 })

-- Disable transparency
o.window(".*", { opacity = "1 1" })


hl.workspace_rule({ workspace = "1", monitor = "desc:Dell Inc. DELL S3422DWG 4H1XS63" })
hl.workspace_rule({ workspace = "2", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "3", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "4", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "5", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "6", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "7", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "8", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "9", monitor = "desc:Dell Inc. DELL S2721DGF" })
hl.workspace_rule({ workspace = "0", monitor = "desc:Dell Inc. DELL S2721DGF" })
