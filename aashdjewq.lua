local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Getkey = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Checkkey = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local InputKey = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Open = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

-- Properties

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0.509804, 0.878431, 0.666667)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.308581442, 0, 0.395409107, 0)
Main.Size = UDim2.new(0, 421, 0, 235)
Main.Visible = true
Main.Active = true
Open.Visible = false

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.BorderColor3 = Color3.new(0, 0, 0)
Text.BorderSizePixel = 0
Text.Size = UDim2.new(0, 421, 0, 50)
Text.Font = Enum.Font.Unknown
Text.Text = "Key System"
Text.TextColor3 = Color3.new(0, 0, 0)
Text.TextSize = 25

Getkey.Name = "Getkey"
Getkey.Parent = Main
Getkey.BackgroundColor3 = Color3.new(0.156863, 0.705882, 0.388235)
Getkey.BorderColor3 = Color3.new(0.768628, 0.945098, 0.129412)
Getkey.BorderSizePixel = 0
Getkey.Position = UDim2.new(0.0190023761, 0, 0.734215021, 0)
Getkey.Size = UDim2.new(0, 200, 0, 50)
Getkey.Font = Enum.Font.SourceSans
Getkey.Text = "Get Key"
Getkey.TextColor3 = Color3.new(0, 0, 0)
Getkey.TextSize = 14
Getkey.MouseButton1Down:Connect(function()
	print("shit")
end)

UICorner.Parent = Getkey

Checkkey.Name = "Checkkey"
Checkkey.Parent = Main
Checkkey.BackgroundColor3 = Color3.new(0.156863, 0.705882, 0.388235)
Checkkey.BorderColor3 = Color3.new(0, 0, 0)
Checkkey.BorderSizePixel = 0
Checkkey.Position = UDim2.new(0.510688841, 0, 0.73421526, 0)
Checkkey.Size = UDim2.new(0, 200, 0, 50)
Checkkey.Font = Enum.Font.SourceSans
Checkkey.Text = "Check Key"
Checkkey.TextColor3 = Color3.new(0, 0, 0)
Checkkey.TextSize = 14
Checkkey.MouseButton1Down:Connect(function()
	local inputText = InputKey.Text-- Lấy giá trị của TextBox InputKey

	if inputText == key then  -- So sánh giá trị nhập vào với key
		print("Valid Key")
	else
		print("Invalid Key")
	end
end)

UICorner_2.Parent = Checkkey

InputKey.Name = "InputKey"
InputKey.Parent = Main
InputKey.BackgroundColor3 = Color3.new(0.670588, 0.921569, 0.776471)
InputKey.BorderColor3 = Color3.new(0, 0, 0)
InputKey.BorderSizePixel = 0
InputKey.Position = UDim2.new(0.0878859833, 0, 0.209149554, 0)
InputKey.Size = UDim2.new(0, 346, 0, 81)
InputKey.Font = Enum.Font.SourceSansLight
InputKey.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
InputKey.Text = ""
InputKey.TextColor3 = Color3.new(0, 0, 0)
InputKey.TextSize = 14
InputKey.TextWrapped = true


UICorner_3.Parent = InputKey

UICorner_4.Parent = Main
UICorner_4.CornerRadius = UDim.new(0, 9)

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.new(0.137255, 0.607843, 0.337255)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.896142781, 0, 0.0322077312, 0)
TextButton.Size = UDim2.new(0, 37, 0, 33)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(1, 0, 0)
TextButton.TextSize = 25
TextButton.MouseButton1Down:Connect(function()
	Main.Visible = false
end)

UICorner_5.Parent = TextButton

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.new(0.509804, 0.878431, 0.666667)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.501822591, 0, 0, 0)
Open.Size = UDim2.new(0, 55, 0, 50)
Open.Font = Enum.Font.FredokaOne
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 16
Open.MouseButton1Down:Connect(function()
	Main.Visible = true
	Open.Visible = false
end)

UICorner_6.Parent = Open
UICorner_6.CornerRadius = UDim.new(0.889999986, 0)

-- function check key
local key = "shit"
