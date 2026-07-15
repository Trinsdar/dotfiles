local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Application Launchers
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(btop))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("dms ipc call clipboard toggle"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("dms ipc call processlist focusOrToggle"))
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd("dms ipc call settings focusOrToggle"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("dms ipc call notifications toggle"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("dms ipc call dankdash wallpaper"))
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("dms ipc call powermenu toggle"))

-- Security
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("dms ipc call lock lock"))

-- Audio Controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dms ipc call audio increment 3", { locked = true, repeating = true }))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dms ipc call audio decrement 3", { locked = true, repeating = true }))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dms ipc call audio mute", { locked = true }))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("dms ipc call audio micmute", { locked = true }))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("dms ipc call mpris playPause", { locked = true }))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("dms ipc call mpris playPause", { locked = true }))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("dms ipc call mpris previous", { locked = true }))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("dms ipc call mpris next", { locked = true }))
-- bindel = CTRL, XF86AudioRaiseVolume, exec, dms ipc call mpris increment 3
-- bindel = CTRL, XF86AudioLowerVolume, exec, dms ipc call mpris decrement 3

-- Brightness Controls
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("dms ipc call spotlight toggle", { locked = true, repeating = true }))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("dms ipc call spotlight toggle", { locked = true, repeating = true }))

-- Window Management
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("dms ipc call window-rules toggle"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "down" }))

-- Window Movement
-- bind = $mainMod SHIFT, left, movewindow, l
-- bind = $mainMod SHIFT, down, movewindow, d
-- bind = $mainMod SHIFT, up, movewindow, u
-- bind = $mainMod SHIFT, right, movewindow, r
-- bind = $mainMod SHIFT, H, movewindow, l
-- bind = $mainMod SHIFT, J, movewindow, d
-- bind = $mainMod SHIFT, K, movewindow, u
-- bind = $mainMod SHIFT, L, movewindow, r

-- Column Navigation
-- bind = $mainMod, Home, focuswindow, first
-- bind = $mainMod, End, focuswindow, last

-- Monitor Navigation
-- bind = $mainMod CTRL, left, focusmonitor, l
-- bind = $mainMod CTRL, right, focusmonitor, r
-- bind = $mainMod CTRL, H, focusmonitor, l
-- bind = $mainMod CTRL, J, focusmonitor, d
-- bind = $mainMod CTRL, K, focusmonitor, u
-- bind = $mainMod CTRL, L, focusmonitor, r

-- Move to Monitor
-- bind = $mainMod SHIFT CTRL, left, movewindow, mon:l
-- bind = $mainMod SHIFT CTRL, down, movewindow, mon:d
-- bind = $mainMod SHIFT CTRL, up, movewindow, mon:u
-- bind = $mainMod SHIFT CTRL, right, movewindow, mon:r
-- bind = $mainMod SHIFT CTRL, H, movewindow, mon:l
-- bind = $mainMod SHIFT CTRL, J, movewindow, mon:d
-- bind = $mainMod SHIFT CTRL, K, movewindow, mon:u
-- bind = $mainMod SHIFT CTRL, L, movewindow, mon:r

-- Workspace Navigation
-- bind = $mainMod, Page_Down, workspace, e+1
-- bind = $mainMod, Page_Up, workspace, e-1
-- bind = $mainMod, U, workspace, e+1
-- bind = $mainMod, I, workspace, e-1
-- bind = $mainMod CTRL, down, movetoworkspace, e+1
-- bind = $mainMod CTRL, up, movetoworkspace, e-1
-- bind = $mainMod CTRL, U, movetoworkspace, e+1
-- bind = $mainMod CTRL, I, movetoworkspace, e-1

-- Workspace Management
hl.bind(mainMod .. " + CTRL + SHIFT + R", hl.dsp.exec_cmd("dms ipc call workspace-rename open"))

-- Move Workspaces
-- bind = $mainMod SHIFT, Page_Down, movetoworkspace, e+1
-- bind = $mainMod SHIFT, Page_Up, movetoworkspace, e-1
-- bind = $mainMod SHIFT, U, movetoworkspace, e+1
-- bind = $mainMod SHIFT, I, movetoworkspace, e-1

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
if string.find(getHostname(), "thinkpad") then
	for i = 1, 10 do
		local key = i % 10 -- 10 maps to key 0
		hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
		hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	end
else
	require("dms.binds-desktop")
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Move/resize windows with mainMod + LMB/RMB and dragging ===
-- bindd = $mainMod, code:20, Expand window left, resizeactive, -100 0
-- bindd = $mainMod, code:21, Shrink window left, resizeactive, 100 0

-- Manual Sizing ===
-- binde = $mainMod, minus, resizeactive, -10% 0
-- binde = $mainMod, equal, resizeactive, 10% 0
-- binde = $mainMod SHIFT, minus, resizeactive, 0 -10%
-- binde = $mainMod SHIFT, equal, resizeactive, 0 10%

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd("dms screenshot"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("dms screenshot full"))
hl.bind("ALT + Print", hl.dsp.exec_cmd("dms screenshot window"))

-- System Controls ===
-- bind = $mainMod SHIFT, P, dpms, toggle
