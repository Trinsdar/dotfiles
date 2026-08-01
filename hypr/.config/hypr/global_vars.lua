function getHostname()
	local f = io.popen("hostname")
	local hostname = f:read("*a") or ""
	f:close()
	-- Remove trailing newline characters
	return string.gsub(hostname, "\n$", "")
end
isLaptop = string.find(getHostname(), "thinkpad")
