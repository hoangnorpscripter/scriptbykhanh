-- maru hub cracked
repeat wait() until game:IsLoaded()

local Old 
Old = hookfunction(request, function(Data)
    if Data.Url:find("getip") then 
        return {
            Success = true,
            StatusCode = 200,
            Body = "0.0.0.0",
            StatusMessage = "OK",
            Headers = {}
        }
    elseif Data.Url:find("gethwid") then 
        return {
            Success = true,
            StatusCode = 200,
            Body = "MARUX",
            StatusMessage = "OK",
            Headers = {}
        }
    elseif Data.Url:find("server") then 
        ReqMade = true 
        return {
            StatusCode = 200,
            StatusMessage = "OK",
            Success = true,
            Body = "ebe726e185fdc3743e8c330f6c181d5cfa6900d6b26a18f81f67122ff171b28410441bb2102edc72d9dabc585ff6ea4d29f261a012db37e1a5f132ccea02b873",
            Headers = {}
        }
    elseif Data.Url:find("AimYa") then 
        Data.Url = "https://raw.githubusercontent.com/NovazUwU/MaruHub/main/Load"
        return Old(Data)
    else 
        return Old(Data) 
    end 
end)

game.Players.LocalPlayer.Name = ""

local OldTick
OldTick = hookfunction(tick, function() 
    if not ReqMade and checkcaller() then  
        return 0 
    end 
    return OldTick()
end)
local OldTime 
OldTime = hookfunction(os.time, function() 
    if not ReqMade and checkcaller() then
        return 0 
    end 
    return OldTime()
end)

local OldRandom 
OldRandom = hookfunction(math.random, function(a, b)
    if type(a) == "nil" or type(b) == "nil" then return OldRandom(1, 100000000)/100000000 end
    if checkcaller() then 
        if a == 100 and b == 999 and not ReqMade then
            return 0 
        end 
    end 
    return OldRandom(a, b)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/NovazUwU/MaruHub/main/UwU"))()

task.wait(5)

if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    if _G.KAITUN_SCRIPT then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TranPhatAn/maruhub/main/loadKT.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TranPhatAn/maruhub/main/fastffa"))()
    end
elseif game.PlaceId == 4520749081 or game.PlaceId == 6381829480 or game.PlaceId == 5931540094 or game.PlaceId == 6596144663 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranPhatAn/maruhub/main/LOADKL"))()
elseif game.PlaceId == 6329844902 or game.PlaceId == 12192552089 or game.PlaceId == 6299805723 or game.PlaceId == 914010731 or game.PlaceId == 9790558424 or game.PlaceId == 6918802270 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranPhatAn/maruhub/main/LOADALL.txt"))()
end
