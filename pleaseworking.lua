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
	game.Players.LocalPlayer:Kick("You have banned By Uzoth for reason of:Key not found. PLEASE BUY KEY time:9999999987 days")
end
--[ afx ontop]

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
-- window
local Window = Fluent:CreateWindow({
	Title = " Script Premium" .. Fluent.Version,
	SubTitle = "pkhanh và nhà tài trợ afxcaxi",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.Home -- Used when theres no MinimizeKeybind
})
