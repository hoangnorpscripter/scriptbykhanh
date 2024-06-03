local keylist = {"a", "b", "c", "d", "mmb"}
local found = false

for i, v in pairs(keylist) do
    if getgenv().Key == v then
       found = true
    else
       found = false
    end
    break   
end

if found == true then
   print("abc1")
else
   print("abc2")
end      
