-- input key
scriptkey = (keycheck)

local keylist = {"a", "b", "c"}

local loaded = false
for _, value in ipairs(keylist) do
    if value == scriptkey then
        loaded = true
	  elseif value == keycheck then	
		    loaded = true
        break
    end
end


if loaded then
    print("Key Incorrect")
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Key found", -- Required
		Text = "Thank you for buy key", -- Required
		Icon = "rbxassetid://1234567890" -- Optional
	})
	wait(3)
	print("script")
else
    print("Script not loaded")
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Key Incorrect", -- Required
		Text = "Mua key pls", -- Required
		Icon = "rbxassetid://1234567890" -- Optional
	})
    wait(5)
	game.Players.LocalPlayer:Kick("You have banned By AfxcaxiRoblox for reason of:Key not found. PLEASE BUY KEY time:9999999987 days")
end
