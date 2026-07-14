-- DMS Window Rules — managed by DankMaterialShell
-- Do not edit manually; changes may be overwritten

-- DMS-RULE: id=wr_1784057890787743064, name=Minecraft
hl.window_rule({ match = { class = ".*Minecraft.*" }, float = true })

-- DMS-RULE: id=wr_1784058496151746216, name=fix-xwayland-drags
hl.window_rule({ match = { class = "^$", title = "^$", xwayland = true, fullscreen = false }, no_focus = true })

-- DMS-RULE: id=wr_1784058547285080845, name=move-hyprland-run
hl.window_rule({ match = { class = "hyprland-run" }, float = true, move = "20 monitor_h-120" })

-- DMS-RULE: id=wr_1784058842969427616, name=picture in picture
hl.window_rule({ match = { class = "^firefox$", title = "^(Picture-in-Picture)$" }, float = true })

-- DMS-RULE: id=wr_1784058904015668318, name=wine
hl.window_rule({ match = { class = "^(Wine)$" }, float = true })
