How to set up:
Make a script in ServerScriptService, name that script EZLuaHandler
After you made that script, paste the code that is in setup.lua into this script, and then you're done.
EZLua can be accessed from _G.EZLua
--------------------------------------------------
Use methods:

    You can use EZLua for services, basic functions, things as simple as logging, and things as complex as playertables.
    Here are all use methods:
    _G.EZLua.Logging:
        Log(data)
-------------------------------------------------
    _G.EZLua.Services:
        Basic Roblox services, such as DataStoreService, Workspace, ReplicatedStorage, ServerStorage, and so on. Custom ones are coming soon though.
------------------------------------------------
    _G.EZLua.Moderation:
        Kick(plr, reason)

        Ban(plr)

        unBan(userId)
-----------------------------------------------------
    _G.EZLua.Functions:
        PlaceTeleport(placeId, plr, teleportData)
----------------------------------------------------
    _G.EZLua.PlayerTables:
        CreatePlayerTable(plr, val1, val2, val3, val4)
        Each one of the values above can be accessed with the below, but each value is matched with a key.
         The keys are named:
            key1, key2, key3, key4.
    
        GetPlayerTables()
        GetPlayerTables can be used to get the player tables, here is a use example.
        print(EZLua.PlayerTables.GetPlayerTables()[plr.UserId].key1)