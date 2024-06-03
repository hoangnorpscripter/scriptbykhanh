local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
local WhitelistedHWIDs = {"khanhdeptrai","",""}
local uoiuoi = false

function CheckHWID(hwidval)
for _,whitelisted in pairs(WhitelistedHWIDs) do
 if hwidval == whitelisted then
     return true
 elseif hwidval ~= whitelisted then
     return false
       end
    end
end

uoiuoi = CheckHWID(HWID)

if uoi == true then
 print("Yay!")
end
