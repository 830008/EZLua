local EZLuaFunctions = {}
local EZLuaServices = require(script.Parent.EZLuaServices)
function EZLuaFunctions.placeTeleport(placeId, plr, teleportData)
	if(teleportData) then
		EZLuaServices.TeleportService:Teleport(placeId, plr, teleportData)
	else
		EZLuaServices.TeleportService:Teleport(placeId, plr)
	end
end
function EZLuaFunctions.shutdownServer()
for i,v in pairs(EZLuaServices.Players:GetChildren())do
v:Kick("Server Shutdown")
end
end

return EZLuaFunctions
