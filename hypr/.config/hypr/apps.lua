terminal = "kitty"
fileManager = "dolphin"
btop = "kitty btop"
editor = "kitty nvim"

function getHostname()
	local f = io.popen("hostname")
	local hostname = f:read("*a") or ""
	f:close()
	-- Remove trailing newline characters
	return string.gsub(hostname, "\n$", "")
end
