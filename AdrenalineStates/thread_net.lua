
dofile("version.lua")

UPDATE_PORT = channel.new("UPDATE_PORT")

local version = http.get("https://raw.githubusercontent.com/DavisDev/AdrenalineStates/master/version")
if version and tonumber(version) then
	version = tonumber(version)
	local major = (version >> 0x18) & 0xFF;
	local minor = (version >> 0x10) & 0xFF;
	if version > APP_VERSION then
		UPDATE_PORT:push(version)
	end
end