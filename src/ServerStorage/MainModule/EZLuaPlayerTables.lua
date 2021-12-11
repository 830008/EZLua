local module = {}
	
local PlayerTables = {}

	
	
	
function module.CreatePlayerTable(plr, val1, val2, val3, val4)
wait()
		PlayerTables[plr.UserId] = {key1 = val1, key2 = val2, key3 = val3, key4 = val4}
	
end
function module.GetPlayerTables()
	return PlayerTables
end
return module
