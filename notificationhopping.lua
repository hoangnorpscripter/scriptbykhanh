-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local text2 = Instance.new("TextLabel")
local text3 = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local sc = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.311965823, 0, -0.312015504, 0)
Frame.Size = UDim2.new(0, 3000, 0, 3000)

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.357549846, 0, 0.232558146, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Hop Sever"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 50.000

text2.Name = "text2"
text2.Parent = ScreenGui
text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text2.BackgroundTransparency = 1.000
text2.BorderColor3 = Color3.fromRGB(0, 0, 0)
text2.BorderSizePixel = 0
text2.Position = UDim2.new(0.545584023, 0, 0.302325577, 0)
text2.Size = UDim2.new(0, 200, 0, 50)
text2.Font = Enum.Font.SourceSans
text2.Text = "Made by: Cat | Quy"
text2.TextColor3 = Color3.fromRGB(0, 0, 0)
text2.TextSize = 14.000

text3.Name = "text3"
text3.Parent = ScreenGui
text3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text3.BackgroundTransparency = 1.000
text3.BorderColor3 = Color3.fromRGB(0, 0, 0)
text3.BorderSizePixel = 20
text3.Position = UDim2.new(0.0811965838, 0, 0.608527124, 0)
text3.Size = UDim2.new(0, 410, 0, 50)
text3.Font = Enum.Font.SourceSansBold
text3.Text = "Waiting  For Hop sever :"
text3.TextColor3 = Color3.fromRGB(255, 255, 255)
text3.TextSize = 40.000
text3.TextStrokeTransparency = 0.500
text3.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 102, 219)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 232, 255))}
UIGradient.Parent = text3

sc.Name = "sc"
sc.Parent = text3
sc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sc.BackgroundTransparency = 1.000
sc.BorderColor3 = Color3.fromRGB(0, 0, 0)
sc.BorderSizePixel = 0
sc.Position = UDim2.new(0.960975587, 0, 0, 0)
sc.Size = UDim2.new(0, 88, 0, 50)
sc.Font = Enum.Font.SourceSans
sc.Text = "5"
sc.TextColor3 = Color3.fromRGB(255, 255, 255)
sc.TextScaled = true
sc.TextSize = 14.000
sc.TextWrapped = true

local function rt()
	local function rotation()
		UIGradient.Rotation = UIGradient.Rotation + 5
		if UIGradient.Rotation == 360 then
			UIGradient.Rotation = 0
		end
	end
	while true do
		wait()
		rotation()
	end
end

rt()

local function wt()
	local function waiting()
		wait(1)
		sc.Text = 4
		wait(1)
		sc.Text = 3
		wait(1)
		sc.Text = 2
		wait(1)
		sc.Text = 1
		wait(1)
		sc.Text = "Hopping"
	end
	waiting()
end

wt()
