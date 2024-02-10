--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextButton_4 = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.312292367, 0, 0.236842111, 0)
Frame.Size = UDim2.new(0, 454, 0, 286)
Frame.Active = true
Frame.Visible = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.686275, 1, 0.686275)
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0227118004, 0, 0.0263157561, 0)
Frame_2.Size = UDim2.new(0, 432, 0, 267)

Frame_3.Parent = Frame_2
Frame_3.BackgroundColor3 = Color3.new(0.905882, 1, 0.94902)
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.205441862, 0, -0.00134197331, 0)
Frame_3.Size = UDim2.new(0, 343, 0, 89)

TextLabel.Parent = Frame_3
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 5
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.206997082, 0, 0.21348314, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Chọn Hub Đi Mấy thằng béo"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 20

ImageLabel.Parent = Frame_2
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.00191490736, 0, -0.00134197331, 0)
ImageLabel.Size = UDim2.new(0, 89, 0, 89)
ImageLabel.Image = "http://www.roblox.com/asset/?id=16207380987"

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BorderColor3 = Color3.new(0.839216, 0.580392, 0.0666667)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.936779797, 0, -0.0299625471, 0)
TextButton.Size = UDim2.new(0, 39, 0, 36)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(1, 0.0313726, 0.0313726)
TextButton.TextSize = 30
TextButton.MouseButton1Down:Connect(function()
	Frame.Visible = false
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.BorderColor3 = Color3.new(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.429515421, 0, 0.409090906, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Click Here IF YOU GAYY     (Hub1)"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14
TextButton_2.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/khnahcutevippro/ScriptKhnahHandsome/main/chiyeuminhthuw2.lua"))()
	Frame.Visible = false
	TextButton_4.Visible = false
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.BorderColor3 = Color3.new(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.429515421, 0, 0.67832166, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Bấm Vào Đây NẾU M BỊ BÊ ĐÊ (Hub2)"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14
TextButton_3.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/khnahcutevippro/ScriptKhnahHandsome/main/chiyeuminhthuw.lua"))()
	Frame.Visible = false
	TextButton_4.Visible = false
end)

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.0704845786, 0, 0.472027957, 0)
ImageLabel_2.Size = UDim2.new(0, 146, 0, 86)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=15888556412"

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_4.BorderColor3 = Color3.new(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.461197346, 0, 0, 0)
TextButton_4.Size = UDim2.new(0, 52, 0, 26)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "open ui"
TextButton_4.TextColor3 = Color3.new(0, 0, 0)
TextButton_4.TextSize = 14
TextButton_4.Active = true
TextButton_4.Visible = true
TextButton_4.MouseButton1Down:Connect(function()
	Frame.Visible = true
end)
