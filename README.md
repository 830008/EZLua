## EZLua
-----
##  How to set up:
```
Make a script in ServerScriptService, name that script EZLuaHandler

After you made that script, paste the code that is in setup.lua into this script.
And then EZLua can be accessed in any script by using the following code:

local EZLua = require(_G.EZLua)

```
----
## Use Methods:
```
You can use EZLua for services, basic functions, things as simple as logging, and things as complex as playertables.
```
## Here are all of the use methods that are currently available:
##
##
## Logging:
```lua
Log(data)
```
##
##
## Services:
```
Basic Roblox services, such as DataStoreService, Workspace, ReplicatedStorage, ServerStorage, and so on. Custom ones are coming soon though.
```
##
##
## Moderation:
```lua
Kick(plr, reason)

Ban(plr)

unBan(userId)
```
##
##
## Functions:
```lua
PlaceTeleport(placeId, plr, teleportData)

killPlayer(plr)

shutdownServer()
```
##
##
## PlayerTables
```lua
 CreatePlayerTable(plr, val1, val2, val3, val4)
    --[[Each one of the values above can be accessed with the keys below.
     The keys are named:
        key1, key2, key3, key4.
        ]]--
        
    GetPlayerTables()
    GetPlayerTables can be used to get the player tables, here is a use example.
    print(EZLua.PlayerTables.GetPlayerTables()[plr.UserId].key1)
```


