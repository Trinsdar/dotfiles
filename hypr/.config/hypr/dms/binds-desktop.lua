for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("SUPER + " .. key, hs.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. key, hs.dsp.window.move({ workspace = i, follow = false }))
end
