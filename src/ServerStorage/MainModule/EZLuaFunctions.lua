local EZLuaFunctions = {}
local EZLuaServices = require(script.Parent.EZLuaServices)
function EZLuaFunctions.placeTeleport(placeId, plr, teleportData)
	if(teleportData) then
		EZLuaServices.TeleportService:Teleport(placeId, plr, teleportData)
	else
		EZLuaServices.TeleportService:Teleport(placeId, plr)
	end
end
return EZLuaFunctions
