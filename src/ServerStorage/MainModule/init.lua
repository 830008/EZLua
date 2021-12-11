local EZLuaMain = {}

function EZLuaMain.Init(settings)
if(settings.PlayerTablesEnabled == true)then
	EZLuaMain.PlayerTables = require(script.EZLuaPlayerTables)

end
if(settings.ConsoleWaterMark == true)then
	print("EZLua Running")
end
if(settings.ModerationEnabled == true)then
	EZLuaMain.Moderation = require(script.EZLuaModeration)
end
end
EZLuaMain.Logging = require(script.EZLuaLogging)
EZLuaMain.Services = require(script.EZLuaServices)
EZLuaMain.Functions = require(script.EZLuaFunctions)
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


