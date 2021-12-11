local EZLuaServices = require(script.Parent.EZLuaServices)
local EZLuaModeration = {}
EZLuaModeration.bansDataStore = EZLuaServices.DataStoreService:GetDataStore("Bans")
function EZLuaModeration.Kick(player, reason)
	player:Kick(reason)
	end
function EZLuaModeration.Ban(player)
	EZLuaModeration.bansDataStore:SetAsync(player.UserId, true)
	player:Kick()
end
function EZLuaModeration.unBan(player)
	EZLuaModeration.bansDataStore:RemoveAsync(player.UserId)

end

return EZLuaModeration
