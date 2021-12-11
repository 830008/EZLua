local EZLuaMain = {}
print("EZLua Running")
EZLuaMain.Logging = require(script.EZLuaLogging)
EZLuaMain.Services = require(script.EZLuaServices)
EZLuaMain.Moderation = require(script.EZLuaModeration)
EZLuaMain.Functions = require(script.EZLuaFunctions)
EZLuaMain.PlayerTables = require(script.EZLuaPlayerTables)
EZLuaMain.Events = require(script.EZLuaEvents)
for i,v in pairs(game.Players:GetChildren()) do
	local Bans = EZLuaMain.Services.DataStoreService:GetDataStore("bans")
	if(Bans:GetAsync(v.UserId) == true)then
		v:Kick()
	else

	end
end
EZLuaMain.Services.Players.PlayerAdded:Connect(function(player)
	local Bans = EZLuaMain.Services.DataStoreService:GetDataStore("bans")
	if(Bans:GetAsync(player.UserId) == true)then
		player:Kick()
	else

	end
end)

_G.EZLua = script
return EZLuaMain


