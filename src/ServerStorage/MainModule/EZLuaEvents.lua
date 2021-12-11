local EZLuaEvents = {}
local Services = require(script.Parent.EZLuaServices)
EZLuaEvents.PlayerJoined = Services.Players.PlayerAdded
EZLuaEvents.PlayerLeft = Services.Players.PlayerRemoving
return EZLuaEvents