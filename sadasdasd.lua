-- UI close Main
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.ScreenGui.ImageButton
G2L["2"] = Instance.new("ImageButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Image"] = [[http://www.roblox.com/asset/?id=17634661767]];
G2L["2"]["Size"] = UDim2.new(0, 72, 0, 66);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.4566, 0, 0.14341, 0);

-- StarterGui.ScreenGui.ImageButton.TextLabel
G2L["3"] = Instance.new("TextLabel", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["TextSize"] = 14;
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Size"] = UDim2.new(0, 89, 0, 29);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[RinMeka Hub]];
G2L["3"]["Position"] = UDim2.new(-0.11111, 0, 1, 0);

-- StarterGui.ScreenGui.ImageButton.TextLabel.UIGradient
G2L["4"] = Instance.new("UIGradient", G2L["3"]);
G2L["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(49, 233, 192)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 131, 54))};

-- StarterGui.ScreenGui.ImageButton.TextLabel.LocalScript
G2L["5"] = Instance.new("LocalScript", G2L["3"]);


-- StarterGui.ScreenGui.ImageButton.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["2"]);


-- StarterGui.ScreenGui.ImageButton.TextLabel.LocalScript
local function C_5()
local script = G2L["5"];
	local a = script.Parent.UIGradient
	
	local function rotation()
		while true do
			for i = 30, 360 do
				a.Rotation = i
				wait()
			end
		end
	end
	
	rotation()
end;
task.spawn(C_5);
-- StarterGui.ScreenGui.ImageButton.LocalScript
local function C_6()
local script = G2L["6"];
	local button = script.Parent
	
	button.MouseButton1Down:Connect(function()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.End,false,game)
	end)
end;
task.spawn(C_6);

return G2L["1"], require;

-- vietsub version
wait(2)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "RinMeka hub",
    SubTitle = "Demo Version, Vi",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = ""
    }),
    Stats = Window:AddTab({
        Title = "Stats",
        Icon = ""
    }),
    Player = Window:AddTab({
        Title = "Player",
        Icon = ""
    }),
    Teleport = Window:AddTab({
        Title = "Island",
        Icon = ""
    }),
    Fruit = Window:AddTab({
        Title = "Fruit",
        Icon = ""
    }),
    Raid = Window:AddTab({
        Title = "Raid",
        Icon = ""
    }),
    Race = Window:AddTab({
        Title = "Race V4",
        Icon = ""
    }),
    Shop = Window:AddTab({
        Title = "Shop",
        Icon = ""
    }),
    Misc = Window:AddTab({
        Title = "Misc",
        Icon = ""
    }),
    Hop = Window:AddTab({
        Title = "Hop",
        Icon = ""
    }),
    Webhook = Window:AddTab({
        Title = "Webhook",
        Icon = ""
    }),
    Kaitun = Window:AddTab({
        Title = "Kaitun version",
        Icon = ""
    }),
    Setting = Window:AddTab({
        Title = "Setting",
        Icon = ""
    })
}
local Options = Fluent.Options
do

    local id = game.PlaceId
    if id == 2753915549 then
        First_Sea = true;
    elseif id == 4442272183 then
        Second_Sea = true;
    elseif id == 7449423635 then
        Third_Sea = true;
    else
        game:Shutdown()
    end

    function AntiBan()
        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("LocalScript") then
                if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name ==
                    "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                    v:Destroy()
                end
            end
        end
        for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
            if v:IsA("LocalScript") then
                if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name ==
                    "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
                    v:Destroy()
                end
            end
        end
    end
    AntiBan()

    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

    First_Sea = false
    Second_Sea = false
    Third_Sea = false
    if game.PlaceId == 2753915549 then
        First_Sea = true
    elseif game.PlaceId == 4442272183 then
        Second_Sea = true
    elseif game.PlaceId == 7449423635 then
        Third_Sea = true
    end

    function CheckLevel()
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        if First_Sea then
            if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
                Ms = "Bandit"
                NameQuest = "BanditQuest1"
                QuestLv = 1
                NameMon = "Bandit"
                CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
                CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
            elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
                Ms = "Monkey"
                NameQuest = "JungleQuest"
                QuestLv = 1
                NameMon = "Monkey"
                CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
            elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
                Ms = "Gorilla"
                NameQuest = "JungleQuest"
                QuestLv = 2
                NameMon = "Gorilla"
                CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
            elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
                Ms = "Pirate"
                NameQuest = "BuggyQuest1"
                QuestLv = 1
                NameMon = "Pirate"
                CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
            elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
                Ms = "Brute"
                NameQuest = "BuggyQuest1"
                QuestLv = 2
                NameMon = "Brute"
                CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
            elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
                Ms = "Desert Bandit"
                NameQuest = "DesertQuest"
                QuestLv = 1
                NameMon = "Desert Bandit"
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
            elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
                Ms = "Desert Officer"
                NameQuest = "DesertQuest"
                QuestLv = 2
                NameMon = "Desert Officer"
                CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
                CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
            elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then -- Snow Bandit
                Ms = "Snow Bandit"
                NameQuest = "SnowQuest"
                QuestLv = 1
                NameMon = "Snow Bandit"
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
            elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then -- Snowman
                Ms = "Snowman"
                NameQuest = "SnowQuest"
                QuestLv = 2
                NameMon = "Snowman"
                CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
                Ms = "Chief Petty Officer"
                NameQuest = "MarineQuest2"
                QuestLv = 1
                NameMon = "Chief Petty Officer"
                CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
                CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
            elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
                Ms = "Sky Bandit"
                NameQuest = "SkyQuest"
                QuestLv = 1
                NameMon = "Sky Bandit"
                CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
                CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
            elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
                Ms = "Dark Master"
                NameQuest = "SkyQuest"
                QuestLv = 2
                NameMon = "Dark Master"
                CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
                CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
            elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
                Ms = "Prisoner"
                NameQuest = "PrisonerQuest"
                QuestLv = 1
                NameMon = "Prisoner"
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,
                    -0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0,
                    0.719348073, 0, 0.694649816)
            elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
                Ms = "Dangerous Prisoner"
                NameQuest = "PrisonerQuest"
                QuestLv = 2
                NameMon = "Dangerous Prisoner"
                CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,
                    -0.999846935, 0, 0.0175017118)
                CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0,
                    0.438139856, 0, 0.898906827)
            elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
                Ms = "Toga Warrior"
                NameQuest = "ColosseumQuest"
                QuestLv = 1
                NameMon = "Toga Warrior"
                CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
                CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
            elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
                Ms = "Gladiator"
                NameQuest = "ColosseumQuest"
                QuestLv = 2
                NameMon = "Gladiator"
                CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
                CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
            elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
                Ms = "Military Soldier"
                NameQuest = "MagmaQuest"
                QuestLv = 1
                NameMon = "Military Soldier"
                CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
            elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
                Ms = "Military Spy"
                NameQuest = "MagmaQuest"
                QuestLv = 2
                NameMon = "Military Spy"
                CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
                CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0,
                    0.544762194, 0, 0.838590562)
            elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
                Ms = "Fishman Warrior"
                NameQuest = "FishmanQuest"
                QuestLv = 1
                NameMon = "Fishman Warrior"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
                Ms = "Fishman Commando"
                NameQuest = "FishmanQuest"
                QuestLv = 2
                NameMon = "Fishman Commando"
                CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
                Ms = "God's Guard"
                NameQuest = "SkyExp1Quest"
                QuestLv = 1
                NameMon = "God's Guard"
                CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
                CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -4607.82275, 872.54248, -1667.55688))
                end
            elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
                Ms = "Shanda"
                NameQuest = "SkyExp1Quest"
                QuestLv = 2
                NameMon = "Shanda"
                CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
                CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
                Ms = "Royal Squad"
                NameQuest = "SkyExp2Quest"
                QuestLv = 1
                NameMon = "Royal Squad"
                CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
            elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
                Ms = "Royal Soldier"
                NameQuest = "SkyExp2Quest"
                QuestLv = 2
                NameMon = "Royal Soldier"
                CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
            elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
                Ms = "Galley Pirate"
                NameQuest = "FountainQuest"
                QuestLv = 1
                NameMon = "Galley Pirate"
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
            elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
                Ms = "Galley Captain"
                NameQuest = "FountainQuest"
                QuestLv = 2
                NameMon = "Galley Captain"
                CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            end
        end
        if Second_Sea then
            if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
                Ms = "Raider"
                NameQuest = "Area1Quest"
                QuestLv = 1
                NameMon = "Raider"
                CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
            elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
                Ms = "Mercenary"
                NameQuest = "Area1Quest"
                QuestLv = 2
                NameMon = "Mercenary"
                CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
                CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
            elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
                Ms = "Swan Pirate"
                NameQuest = "Area2Quest"
                QuestLv = 1
                NameMon = "Swan Pirate"
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
            elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
                Ms = "Factory Staff"
                NameQuest = "Area2Quest"
                QuestLv = 2
                NameMon = "Factory Staff"
                CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
                CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
            elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
                Ms = "Marine Lieutenant"
                NameQuest = "MarineQuest3"
                QuestLv = 1
                NameMon = "Marine Lieutenant"
                CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
                CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
            elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
                Ms = "Marine Captain"
                NameQuest = "MarineQuest3"
                QuestLv = 2
                NameMon = "Marine Captain"
                CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
                CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
            elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
                Ms = "Zombie"
                NameQuest = "ZombieQuest"
                QuestLv = 1
                NameMon = "Zombie"
                CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
                CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
            elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
                Ms = "Vampire"
                NameQuest = "ZombieQuest"
                QuestLv = 2
                NameMon = "Vampire"
                CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
                CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
            elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
                Ms = "Snow Trooper"
                NameQuest = "SnowMountainQuest"
                QuestLv = 1
                NameMon = "Snow Trooper"
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
                CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
            elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
                Ms = "Winter Warrior"
                NameQuest = "SnowMountainQuest"
                QuestLv = 2
                NameMon = "Winter Warrior"
                CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
                CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
            elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
                Ms = "Lab Subordinate"
                NameQuest = "IceSideQuest"
                QuestLv = 1
                NameMon = "Lab Subordinate"
                CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
                CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
            elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
                Ms = "Horned Warrior"
                NameQuest = "IceSideQuest"
                QuestLv = 2
                NameMon = "Horned Warrior"
                CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
                CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
            elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
                Ms = "Magma Ninja"
                NameQuest = "FireSideQuest"
                QuestLv = 1
                NameMon = "Magma Ninja"
                CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
            elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
                Ms = "Lava Pirate"
                NameQuest = "FireSideQuest"
                QuestLv = 2
                NameMon = "Lava Pirate"
                CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
            elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
                Ms = "Ship Deckhand"
                NameQuest = "ShipQuest1"
                QuestLv = 1
                NameMon = "Ship Deckhand"
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                    20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
                Ms = "Ship Engineer"
                NameQuest = "ShipQuest1"
                QuestLv = 2
                NameMon = "Ship Engineer"
                CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
                CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                    20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
                Ms = "Ship Steward"
                NameQuest = "ShipQuest2"
                QuestLv = 1
                NameMon = "Ship Steward"
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                    20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
                Ms = "Ship Officer"
                NameQuest = "ShipQuest2"
                QuestLv = 2
                NameMon = "Ship Officer"
                CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
                CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                    20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
                Ms = "Arctic Warrior"
                NameQuest = "FrostQuest"
                QuestLv = 1
                NameMon = "Arctic Warrior"
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
                CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
                if _G.AutoLevel and
                    (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                    20000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -6508.5581054688, 89.034996032715, -132.83953857422))
                end
            elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then -- Snow Lurker
                Ms = "Snow Lurker"
                NameQuest = "FrostQuest"
                QuestLv = 2
                NameMon = "Snow Lurker"
                CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
                CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
            elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
                Ms = "Sea Soldier"
                NameQuest = "ForgottenQuest"
                QuestLv = 1
                NameMon = "Sea Soldier"
                CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
                CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
            elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
                Ms = "Water Fighter"
                NameQuest = "ForgottenQuest"
                QuestLv = 2
                NameMon = "Water Fighter"
                CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
                CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
            end
        end
        if Third_Sea then
            if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
                Ms = "Pirate Millionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 1
                NameMon = "Pirate Millionaire"
                CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
            elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
                Ms = "Pistol Billionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 2
                NameMon = "Pistol Billionaire"
                CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
                CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
            elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
                Ms = "Dragon Crew Warrior"
                NameQuest = "AmazonQuest"
                QuestLv = 1
                NameMon = "Dragon Crew Warrior"
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
            elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
                Ms = "Dragon Crew Archer"
                NameQuest = "AmazonQuest"
                QuestLv = 2
                NameMon = "Dragon Crew Archer"
                CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
            elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
                Ms = "Female Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 1
                NameMon = "Female Islander"
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
            elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
                Ms = "Giant Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 2
                NameMon = "Giant Islander"
                CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
            elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
                Ms = "Marine Commodore"
                NameQuest = "MarineTreeIsland"
                QuestLv = 1
                NameMon = "Marine Commodore"
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
            elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
                Ms = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                QuestLv = 2
                NameMon = "Marine Rear Admiral"
                CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
            elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
                Ms = "Fishman Raider"
                NameQuest = "DeepForestIsland3"
                QuestLv = 1
                NameMon = "Fishman Raider"
                CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
                CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
            elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
                Ms = "Fishman Captain"
                NameQuest = "DeepForestIsland3"
                QuestLv = 2
                NameMon = "Fishman Captain"
                CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
                CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
            elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
                Ms = "Forest Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 1
                NameMon = "Forest Pirate"
                CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
                CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
            elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
                Ms = "Mythological Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 2
                NameMon = "Mythological Pirate"
                CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
                CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
            elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
                Ms = "Jungle Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 1
                NameMon = "Jungle Pirate"
                CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
            elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
                Ms = "Musketeer Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 2
                NameMon = "Musketeer Pirate"
                CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
                Ms = "Reborn Skeleton"
                NameQuest = "HauntedQuest1"
                QuestLv = 1
                NameMon = "Reborn Skeleton"
                CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542,
                    2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
                CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016,
                    -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
            elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
                Ms = "Living Zombie"
                NameQuest = "HauntedQuest1"
                QuestLv = 2
                NameMon = "Living Zombie"
                CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542,
                    2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
                CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364,
                    -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
            elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
                Ms = "Demonic Soul"
                NameQuest = "HauntedQuest2"
                QuestLv = 1
                NameMon = "Demonic Soul"
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
                Ms = "Posessed Mummy"
                NameQuest = "HauntedQuest2"
                QuestLv = 2
                NameMon = "Posessed Mummy"
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
            elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
                Ms = "Peanut Scout"
                NameQuest = "NutsIslandQuest"
                QuestLv = 1
                NameMon = "Peanut Scout"
                CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0,
                    0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
                Ms = "Peanut President"
                NameQuest = "NutsIslandQuest"
                QuestLv = 2
                NameMon = "Peanut President"
                CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0,
                    0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
            elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
                Ms = "Ice Cream Chef"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 1
                NameMon = "Ice Cream Chef"
                CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                    -0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0,
                    1.00000012, -0, 0.997525275, 0, -0.0703101456)
            elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea ==
                'Ice Cream Island' then
                Ms = "Ice Cream Commander"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 2
                NameMon = "Ice Cream Commander"
                CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                    -0.642767608, 0, -0.766061664)
                CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0,
                    1.00000012, -0, 0.997525275, 0, -0.0703101456)
            elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
                Ms = "Cookie Crafter"
                NameQuest = "CakeQuest1"
                QuestLv = 1
                NameMon = "Cookie Crafter"
                CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0,
                    0.275594592, 0, -0.961273909)
                CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0,
                    -0.625686109, 0, -0.780074954)
            elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
                Ms = "Cake Guard"
                NameQuest = "CakeQuest1"
                QuestLv = 2
                NameMon = "Cake Guard"
                CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0,
                    0.275594592, 0, -0.961273909)
                CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0,
                    -0.997700036, 0, 0.0677844882)
            elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
                Ms = "Baking Staff"
                NameQuest = "CakeQuest2"
                QuestLv = 1
                NameMon = "Baking Staff"
                CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0,
                    0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0,
                    0.967087567, 0, -0.254443765)
            elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
                Ms = "Head Baker"
                NameQuest = "CakeQuest2"
                QuestLv = 2
                NameMon = "Head Baker"
                CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0,
                    0.308980465, 0, 0.951068401)
                CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0,
                    0.126466095, 0, -0.991971016)
            elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
                Ms = "Cocoa Warrior"
                NameQuest = "ChocQuest1"
                QuestLv = 1
                NameMon = "Cocoa Warrior"
                CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0,
                    -0.341998369, 0, -0.939700961)
            elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
                Ms = "Chocolate Bar Battler"
                NameQuest = "ChocQuest1"
                QuestLv = 2
                NameMon = "Chocolate Bar Battler"
                CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0,
                    0.939684391, 0, -0.342042685)
            elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
                Ms = "Sweet Thief"
                NameQuest = "ChocQuest2"
                QuestLv = 1
                NameMon = "Sweet Thief"
                CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,
                    -0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0,
                    0.984811902, 0, 0.173624337)
            elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
                Ms = "Candy Rebel"
                NameQuest = "ChocQuest2"
                QuestLv = 2
                NameMon = "Candy Rebel"
                CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,
                    -0.906319618, 0, 0.422592998)
                CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0,
                    0.573571265, 0, -0.819156051)
            elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
                Ms = "Candy Pirate"
                NameQuest = "CandyQuest1"
                QuestLv = 1
                NameMon = "Candy Pirate"
                CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0,
                    0.987686574, 0, -0.156446099)
                CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0,
                    0.984811902, 0, 0.173624337)
            elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
                Ms = "Snow Demon"
                NameQuest = "CandyQuest1"
                QuestLv = 2
                NameMon = "Snow Demon"
                CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0,
                    0.987686574, 0, -0.156446099)
                CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0,
                    -0.500031412, 0, 0.866007268)
            elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
                Ms = "Isle Outlaw"
                NameQuest = "TikiQuest1"
                QuestLv = 1
                NameMon = "Isle Outlaw"
                CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
                CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
            elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
                Ms = "Island Boy"
                NameQuest = "TikiQuest1"
                QuestLv = 2
                NameMon = "Island Boy"
                CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
                CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
            elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
                Ms = "Isle Champion"
                NameQuest = "TikiQuest2"
                QuestLv = 2
                NameMon = "Isle Champion"
                CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
                CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
            end
        end
    end

    if First_Sea then
        tableMon = {"Bandit", "Monkey", "Gorilla", "Pirate", "Brute", "Desert Bandit", "Desert Officer", "Snow Bandit",
                    "Snowman", "Chief Petty Officer", "Sky Bandit", "Dark Master", "Prisoner", "Dangerous Prisoner",
                    "Toga Warrior", "Gladiator", "Military Soldier", "Military Spy", "Fishman Warrior",
                    "Fishman Commando", "God's Guard", "Shanda", "Royal Squad", "Royal Soldier", "Galley Pirate",
                    "Galley Captain"}
    elseif Second_Sea then
        tableMon = {"Raider", "Mercenary", "Swan Pirate", "Factory Staff", "Marine Lieutenant", "Marine Captain",
                    "Zombie", "Vampire", "Snow Trooper", "Winter Warrior", "Lab Subordinate", "Horned Warrior",
                    "Magma Ninja", "Lava Pirate", "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer",
                    "Arctic Warrior", "Snow Lurker", "Sea Soldier", "Water Fighter"}
    elseif Third_Sea then
        tableMon = {"Pirate Millionaire", "Dragon Crew Warrior", "Dragon Crew Archer", "Female Islander",
                    "Giant Islander", "Marine Commodore", "Marine Rear Admiral", "Fishman Raider", "Fishman Captain",
                    "Forest Pirate", "Mythological Pirate", "Jungle Pirate", "Musketeer Pirate", "Reborn Skeleton",
                    "Living Zombie", "Demonic Soul", "Posessed Mummy", "Peanut Scout", "Peanut President",
                    "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff",
                    "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel",
                    "Candy Pirate", "Snow Demon", "Isle Outlaw", "Island Boy", "Isle Champion"}
    end

    if First_Sea then
        AreaList = {'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman',
                    'Sky Island', 'Fountain'}
    elseif Second_Sea then
        AreaList = {'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'}
    elseif Third_Sea then
        AreaList = {'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island',
                    'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island', 'Tiki Outpost'}
    end

    function CheckBossQuest()
        if First_Sea then
            if SelectBoss == "The Gorilla King" then
                BossMon = "The Gorilla King"
                NameBoss = 'The Gorrila King'
                NameQuestBoss = "JungleQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$2,000\n7,000 Exp."
                CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
                CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0,
                    -0.707079291, 0, -0.707134247)
            elseif SelectBoss == "Bobby" then
                BossMon = "Bobby"
                NameBoss = 'Bobby'
                NameQuestBoss = "BuggyQuest1"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$8,000\n35,000 Exp."
                CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
            elseif SelectBoss == "The Saw" then
                BossMon = "The Saw"
                NameBoss = 'The Saw'
                CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
            elseif SelectBoss == "Yeti" then
                BossMon = "Yeti"
                NameBoss = 'Yeti'
                NameQuestBoss = "SnowQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$10,000\n180,000 Exp."
                CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            elseif SelectBoss == "Mob Leader" then
                BossMon = "Mob Leader"
                NameBoss = 'Mob Leader'
                CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
            elseif SelectBoss == "Vice Admiral" then
                BossMon = "Vice Admiral"
                NameBoss = 'Vice Admiral'
                NameQuestBoss = "MarineQuest2"
                QuestLvBoss = 2
                RewardBoss = "Reward:\n$10,000\n180,000 Exp."
                CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
                CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
            elseif SelectBoss == "Saber Expert" then
                NameBoss = 'Saber Expert'
                BossMon = "Saber Expert"
                CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
            elseif SelectBoss == "Warden" then
                BossMon = "Warden"
                NameBoss = 'Warden'
                NameQuestBoss = "ImpelQuest"
                QuestLvBoss = 1
                RewardBoss = "Reward:\n$6,000\n850,000 Exp."
                CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427,
                    -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                    -0.681965172, 0, -0.731384635)
            elseif SelectBoss == "Chief Warden" then
                BossMon = "Chief Warden"
                NameBoss = 'Chief Warden'
                NameQuestBoss = "ImpelQuest"
                QuestLvBoss = 2
                RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
                CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749,
                    0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                    -0.681965172, 0, -0.731384635)
            elseif SelectBoss == "Swan" then
                BossMon = "Swan"
                NameBoss = 'Swan'
                NameQuestBoss = "ImpelQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
                CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0,
                    -0.951042235, 0, -0.309060812)
                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                    -0.681965172, 0, -0.731384635)
            elseif SelectBoss == "Magma Admiral" then
                BossMon = "Magma Admiral"
                NameBoss = 'Magma Admiral'
                NameQuestBoss = "MagmaQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
                CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
                CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
            elseif SelectBoss == "Fishman Lord" then
                BossMon = "Fishman Lord"
                NameBoss = 'Fishman Lord'
                NameQuestBoss = "FishmanQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
                CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
            elseif SelectBoss == "Wysper" then
                BossMon = "Wysper"
                NameBoss = 'Wysper'
                NameQuestBoss = "SkyExp1Quest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
                CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
                CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
            elseif SelectBoss == "Thunder God" then
                BossMon = "Thunder God"
                NameBoss = 'Thunder God'
                NameQuestBoss = "SkyExp2Quest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
                CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
            elseif SelectBoss == "Cyborg" then
                BossMon = "Cyborg"
                NameBoss = 'Cyborg'
                NameQuestBoss = "FountainQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
                CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
            elseif SelectBoss == "Ice Admiral" then
                BossMon = "Ice Admiral"
                NameBoss = 'Ice Admiral'
                CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0,
                    0.81913656, 0, -0.573599219)
            elseif SelectBoss == "Greybeard" then
                BossMon = "Greybeard"
                NameBoss = 'Greybeard'
                CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
            end
        end
        if Second_Sea then
            if SelectBoss == "Diamond" then
                BossMon = "Diamond"
                NameBoss = 'Diamond'
                NameQuestBoss = "Area1Quest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
                CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
                CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
            elseif SelectBoss == "Jeremy" then
                BossMon = "Jeremy"
                NameBoss = 'Jeremy'
                NameQuestBoss = "Area2Quest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
                CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
            elseif SelectBoss == "Fajita" then
                BossMon = "Fajita"
                NameBoss = 'Fajita'
                NameQuestBoss = "MarineQuest3"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
                CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
                CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
            elseif SelectBoss == "Don Swan" then
                BossMon = "Don Swan"
                NameBoss = 'Don Swan'
                CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
            elseif SelectBoss == "Smoke Admiral" then
                BossMon = "Smoke Admiral"
                NameBoss = 'Smoke Admiral'
                NameQuestBoss = "IceSideQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
                CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
            elseif SelectBoss == "Awakened Ice Admiral" then
                BossMon = "Awakened Ice Admiral"
                NameBoss = 'Awakened Ice Admiral'
                NameQuestBoss = "FrostQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
                CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
                CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
            elseif SelectBoss == "Tide Keeper" then
                BossMon = "Tide Keeper"
                NameBoss = 'Tide Keeper'
                NameQuestBoss = "ForgottenQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
                CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
                CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
            elseif SelectBoss == "Darkbeard" then
                BossMon = "Darkbeard"
                NameBoss = 'Darkbeard'
                CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
            elseif SelectBoss == "Cursed Captain" then
                BossMon = "Cursed Captain"
                NameBoss = 'Cursed Captain'
                CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
            elseif SelectBoss == "Order" then
                BossMon = "Order"
                NameBoss = 'Order'
                CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
            end
        end
        if Third_Sea then
            if SelectBoss == "Stone" then
                BossMon = "Stone"
                NameBoss = 'Stone'
                NameQuestBoss = "PiratePortQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
                CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
                CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
            elseif SelectBoss == "Island Empress" then
                BossMon = "Island Empress"
                NameBoss = 'Island Empress'
                NameQuestBoss = "AmazonQuest2"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
                CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
                CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
            elseif SelectBoss == "Kilo Admiral" then
                BossMon = "Kilo Admiral"
                NameBoss = 'Kilo Admiral'
                NameQuestBoss = "MarineTreeIsland"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
                CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
                CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
            elseif SelectBoss == "Captain Elephant" then
                BossMon = "Captain Elephant"
                NameBoss = 'Captain Elephant'
                NameQuestBoss = "DeepForestIsland"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
                CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
                CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
            elseif SelectBoss == "Beautiful Pirate" then
                BossMon = "Beautiful Pirate"
                NameBoss = 'Beautiful Pirate'
                NameQuestBoss = "DeepForestIsland2"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
                CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
            elseif SelectBoss == "Cake Queen" then
                BossMon = "Cake Queen"
                NameBoss = 'Cake Queen'
                NameQuestBoss = "IceCreamIslandQuest"
                QuestLvBoss = 3
                RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
                CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                    -0.642767608, 0, -0.766061664)
                CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378,
                    0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
            elseif SelectBoss == "Longma" then
                BossMon = "Longma"
                NameBoss = 'Longma'
                CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
            elseif SelectBoss == "Soul Reaper" then
                BossMon = "Soul Reaper"
                NameBoss = 'Soul Reaper'
                CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
            elseif SelectBoss == "rip_indra True Form" then
                BossMon = "rip_indra True Form"
                NameBoss = 'rip_indra True Form'
                CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
            end
        end
    end

    function MaterialMon()
        if SelectMaterial == "Radioactive Material" then
            MMon = "Factory Staff"
            MPos = CFrame.new(295, 73, -56)
            SP = "Default"
        elseif SelectMaterial == "Mystic Droplet" then
            MMon = "Water Fighter"
            MPos = CFrame.new(-3385, 239, -10542)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            if First_Sea then
                MMon = "Military Spy"
                MPos = CFrame.new(-5815, 84, 8820)
                SP = "Default"
            elseif Second_Sea then
                MMon = "Magma Ninja"
                MPos = CFrame.new(-5428, 78, -5959)
                SP = "Default"
            end
        elseif SelectMaterial == "Angel Wings" then
            MMon = "God's Guard"
            MPos = CFrame.new(-4698, 845, -1912)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                    -7859.09814, 5544.19043, -381.476196))
            end
        elseif SelectMaterial == "Leather" then
            if First_Sea then
                MMon = "Brute"
                MPos = CFrame.new(-1145, 15, 4350)
                SP = "Default"
            elseif Second_Sea then
                MMon = "Marine Captain"
                MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                SP = "Default"
            elseif Third_Sea then
                MMon = "Jungle Pirate"
                MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                SP = "Default"
            end
        elseif SelectMaterial == "Scrap Metal" then
            if First_Sea then
                MMon = "Brute"
                MPos = CFrame.new(-1145, 15, 4350)
                SP = "Default"
            elseif Second_Sea then
                MMon = "Swan Pirate"
                MPos = CFrame.new(878, 122, 1235)
                SP = "Default"
            elseif Third_Sea then
                MMon = "Jungle Pirate"
                MPos = CFrame.new(-12107, 332, -10549)
                SP = "Default"
            end
        elseif SelectMaterial == "Fish Tail" then
            if Third_Sea then
                MMon = "Fishman Raider"
                MPos = CFrame.new(-10993, 332, -8940)
                SP = "Default"
            elseif First_Sea then
                MMon = "Fishman Warrior"
                MPos = CFrame.new(61123, 19, 1569)
                SP = "Default"
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        61163.8515625, 5.342342376708984, 1819.7841796875))
                end
            end
        elseif SelectMaterial == "Demonic Wisp" then
            MMon = "Demonic Soul"
            MPos = CFrame.new(-9507, 172, 6158)
            SP = "Default"
        elseif SelectMaterial == "Vampire Fang" then
            MMon = "Vampire"
            MPos = CFrame.new(-6033, 7, -1317)
            SP = "Default"
        elseif SelectMaterial == "Conjured Cocoa" then
            MMon = "Chocolate Bar Battler"
            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
            SP = "Default"
        elseif SelectMaterial == "Dragon Scale" then
            MMon = "Dragon Crew Archer"
            MPos = CFrame.new(6594, 383, 139)
            SP = "Default"
        elseif SelectMaterial == "Gunpowder" then
            MMon = "Pistol Billionaire"
            MPos = CFrame.new(-469, 74, 5904)
            SP = "Default"
        elseif SelectMaterial == "Mini Tusk" then
            MMon = "Mythological Pirate"
            MPos = CFrame.new(-13545, 470, -6917)
            SP = "Default"
        end
    end

    function UpdateIslandESP()
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(8, 0, 0)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
        for i, v in pairs(game:GetService 'Players':GetChildren()) do
            pcall(function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v.Character.Head)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size10"
                            name.TextWrapped = true
                            name.Text = (v.Name .. ' \n' ..
                                            round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) .. ' Distance')
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 0, 254)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
                            end
                        else
                            v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' ..
                                                                                       round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' ..
                                                                                       round(
                                    v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
                        end
                    else
                        if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if string.find(v.Name, "Chest") then
                    if ChestESP then
                        if string.find(v.Name, "Chest") then
                            if not v:FindFirstChild('NameEsp' .. Number) then
                                local bill = Instance.new('BillboardGui', v)
                                bill.Name = 'NameEsp' .. Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel', bill)
                                name.Font = Enum.Font.GothamSemibold
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Name == "Chest1" then
                                    name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    name.Text = ("Chest 1" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                                if v.Name == "Chest2" then
                                    name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    name.Text = ("Chest 2" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                                if v.Name == "Chest3" then
                                    name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    name.Text = ("Chest 3" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                            else
                                v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                            round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                            end
                        end
                    else
                        if v:FindFirstChild('NameEsp' .. Number) then
                            v:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then
                        if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v.Handle)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            name.Text = (v.Name .. ' \n' ..
                                            round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                        3) .. ' Distance')
                        else
                            v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                               round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateFlowerChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if v.Name == "Flower1" then
                                name.Text = ("Blue Flower" .. ' \n' ..
                                                round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                                name.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if v.Name == "Flower2" then
                                name.Text = ("Red Flower" .. ' \n' ..
                                                round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                        round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    else
                        if v:FindFirstChild('NameEsp' .. Number) then
                            v:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
        for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
        for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 174, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
        for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(251, 255, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
    end

    function UpdateIslandESP()
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
        for i, v in pairs(game:GetService 'Players':GetChildren()) do
            pcall(function()
                if not isnil(v.Character) then
                    if ESPPlayer then
                        if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v.Character.Head)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text = (v.Name .. ' \n' ..
                                            round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) .. ' Distance')
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 255, 0)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
                            end
                        else
                            v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' ..
                                                                                       round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position -
                                        v.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' ..
                                                                                       round(
                                    v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
                        end
                    else
                        if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                            v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateChestChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if string.find(v.Name, "Chest") then
                    if ChestESP then
                        if string.find(v.Name, "Chest") then
                            if not v:FindFirstChild('NameEsp' .. Number) then
                                local bill = Instance.new('BillboardGui', v)
                                bill.Name = 'NameEsp' .. Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel', bill)
                                name.Font = Enum.Font.GothamSemibold
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Name == "Chest1" then
                                    name.TextColor3 = Color3.fromRGB(109, 109, 109)
                                    name.Text = ("Chest 1" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                                if v.Name == "Chest2" then
                                    name.TextColor3 = Color3.fromRGB(173, 158, 21)
                                    name.Text = ("Chest 2" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                                if v.Name == "Chest3" then
                                    name.TextColor3 = Color3.fromRGB(85, 255, 255)
                                    name.Text = ("Chest 3" .. ' \n' ..
                                                    round(
                                            (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                                3) .. ' Distance')
                                end
                            else
                                v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                            round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                            end
                        end
                    else
                        if v:FindFirstChild('NameEsp' .. Number) then
                            v:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateDevilChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then
                        if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v.Handle)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                            name.Text = (v.Name .. ' \n' ..
                                            round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                        3) .. ' Distance')
                        else
                            v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                               round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end)
        end
    end
    function UpdateFlowerChams()
        for i, v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = Enum.Font.GothamSemibold
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            if v.Name == "Flower1" then
                                name.Text = ("Blue Flower" .. ' \n' ..
                                                round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                                name.TextColor3 = Color3.fromRGB(0, 0, 255)
                            end
                            if v.Name == "Flower2" then
                                name.Text = ("Red Flower" .. ' \n' ..
                                                round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' Distance')
                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' ..
                                                                        round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' Distance')
                        end
                    else
                        if v:FindFirstChild('NameEsp' .. Number) then
                            v:FindFirstChild('NameEsp' .. Number):Destroy()
                        end
                    end
                end
            end)
        end
    end
    function UpdateRealFruitChams()
        for i, v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
        for i, v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 174, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
        for i, v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
            if v:IsA("Tool") then
                if RealFruitESP then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(251, 255, 0)
                        name.Text = (v.Name .. ' \n' ..
                                        round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' ..
                                                                           round(
                                (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude /
                                    3) .. ' Distance')
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp' .. Number) then
                        v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end
    end

    spawn(function()
        while wait() do
            pcall(function()
                if MobESP then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild('HumanoidRootPart') then
                            if not v:FindFirstChild("MobEap") then
                                local BillboardGui = Instance.new("BillboardGui")
                                local TextLabel = Instance.new("TextLabel")

                                BillboardGui.Parent = v
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "MobEap"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.LightInfluence = 1.000
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                                TextLabel.Parent = BillboardGui
                                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.BackgroundTransparency = 1.000
                                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                TextLabel.Font = Enum.Font.GothamBold
                                TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                                TextLabel.Text.Size = 35
                            end
                            local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                       v.HumanoidRootPart.Position).Magnitude)
                            v.MobEap.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("MobEap") then
                            v.MobEap:Destroy()
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if SeaESP then
                    for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                        if v:FindFirstChild('HumanoidRootPart') then
                            if not v:FindFirstChild("Seaesps") then
                                local BillboardGui = Instance.new("BillboardGui")
                                local TextLabel = Instance.new("TextLabel")

                                BillboardGui.Parent = v
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "Seaesps"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.LightInfluence = 1.000
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                                TextLabel.Parent = BillboardGui
                                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.BackgroundTransparency = 1.000
                                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                TextLabel.Font = Enum.Font.GothamBold
                                TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                                TextLabel.Text.Size = 35
                            end
                            local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                       v.HumanoidRootPart.Position).Magnitude)
                            v.Seaesps.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                        if v:FindFirstChild("Seaesps") then
                            v.Seaesps:Destroy()
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if NpcESP then
                    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        if v:FindFirstChild('HumanoidRootPart') then
                            if not v:FindFirstChild("NpcEspes") then
                                local BillboardGui = Instance.new("BillboardGui")
                                local TextLabel = Instance.new("TextLabel")

                                BillboardGui.Parent = v
                                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                BillboardGui.Active = true
                                BillboardGui.Name = "NpcEspes"
                                BillboardGui.AlwaysOnTop = true
                                BillboardGui.LightInfluence = 1.000
                                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                                TextLabel.Parent = BillboardGui
                                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.BackgroundTransparency = 1.000
                                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                TextLabel.Font = Enum.Font.GothamBold
                                TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                                TextLabel.Text.Size = 35
                            end
                            local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                       v.HumanoidRootPart.Position).Magnitude)
                            v.NpcEspes.TextLabel.Text = v.Name .. " - " .. Dis .. " Distance"
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                        if v:FindFirstChild("NpcEspes") then
                            v.NpcEspes:Destroy()
                        end
                    end
                end
            end)
        end
    end)

    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)

    function UpdateIslandMirageESP()
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if MirageIslandESP then
                    if v.Name == "Mirage Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)

    function UpdateAfdESP()
        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            pcall(function()
                if AfdESP then
                    if v.Name == "Advanced Fruit Dealer" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function UpdateAuraESP()
        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            pcall(function()
                if AuraESP then
                    if v.Name == "Master of Enhancement" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function UpdateLSDESP()
        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            pcall(function()
                if LADESP then
                    if v.Name == "Legendary Sword Dealer" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function UpdateGeaESP()
        for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
            pcall(function()
                if GearESP then
                    if v.Name == "MeshPart" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                              round(
                                    (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                        3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function Tween2(P1)
        local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance >= 1 then
            Speed = 300
        end
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
                CFrame = P1
            }):Play()
        if _G.CancelTween2 then
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
                    CFrame = P1
                }):Cancel()
        end
        _G.Clip2 = true
        wait(Distance / Speed)
        _G.Clip2 = false
    end

    function Com(com, ...)
        local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm" .. com)
        if Remote:IsA("RemoteEvent") then
            Remote:FireServer(...)
        elseif Remote:IsA("RemoteFunction") then
            Remote:InvokeServer(...)
        end
    end

    function BTP(Position)
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
    end

    function BTPZ(Point)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    end

    function GetIsLand(...)
        local RealtargetPos = {...}
        local targetPos = RealtargetPos[1]
        local RealTarget
        if type(targetPos) == "vector" then
            RealTarget = targetPos
        elseif type(targetPos) == "userdata" then
            RealTarget = targetPos.Position
        elseif type(targetPos) == "number" then
            RealTarget = CFrame.new(unpack(RealtargetPos))
            RealTarget = RealTarget.p
        end

        local ReturnValue
        local CheckInOut = math.huge;
        if game.Players.LocalPlayer.Team then
            for i, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(
                tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
                local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
                if ReMagnitude < CheckInOut then
                    CheckInOut = ReMagnitude;
                    ReturnValue = v.Name
                end
            end
            if ReturnValue then
                return ReturnValue
            end
        end
    end

    function toTarget(...)
        local RealtargetPos = {...}
        local targetPos = RealtargetPos[1]
        local RealTarget
        if type(targetPos) == "vector" then
            RealTarget = CFrame.new(targetPos)
        elseif type(targetPos) == "userdata" then
            RealTarget = targetPos
        elseif type(targetPos) == "number" then
            RealTarget = CFrame.new(unpack(RealtargetPos))
        end
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
            if tween then
                tween:Cancel()
            end
            repeat
                wait()
            until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0;
            wait(0.2)
        end
        local tweenfunc = {}
        local Distance = (RealTarget.Position -
                             game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
        if Distance < 1000 then
            Speed = 320
        elseif Distance >= 1000 then
            Speed = 290
        end
        if BypassTP then
            if Distance > 3000 and not AutoNextIsland and
                not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and
                not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
                pcall(function()
                    tween:Cancel()
                    fkwarp = false
                    if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value ==
                        tostring(GetIsLand(RealTarget)) then
                        wait(.1)
                        Com("F_", "TeleportToSpawn")
                    elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value ==
                        tostring(GetIsLand(RealTarget)) then
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        wait(0.1)
                        repeat
                            wait()
                        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    else
                        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            if fkwarp == false then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                            end
                            fkwarp = true
                        end
                        wait(.08)
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        repeat
                            wait()
                        until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                        wait(.1)
                        Com("F_", "SetSpawnPoint")
                    end
                    wait(0.2)

                    return
                end)
            end
        end

        local tween_s = game:service "TweenService"
        local info = TweenInfo.new((RealTarget.Position -
                                       game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                           .Position).Magnitude / Speed, Enum.EasingStyle.Linear)
        local tweenw, err = pcall(function()
            tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
                CFrame = RealTarget
            })
            tween:Play()
        end)

        function tweenfunc:Stop()
            tween:Cancel()
        end

        function tweenfunc:Wait()
            tween.Completed:Wait()
        end

        return tweenfunc
    end

    function Tween(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end
        pcall(function()
            tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear), {
                    CFrame = Pos
                })
        end)
        tween:Play()
        if Distance <= 300 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end

    function toTargetP(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
            not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then
            tween:Cancel()
            repeat
                wait()
            until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
            wait(7)
            return
        end
        if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <=
            150 then
            pcall(function()
                tween:Cancel()

                game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

                return
            end)
        end
        local tween_s = game:service "TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                       CFgo.Position).Magnitude / 325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
            CFrame = CFgo
        })
        tween:Play()

        local tweenfunc = {}

        function tweenfunc:Stop()
            tween:Cancel()
        end

        return tweenfunc
    end

    function TweenShip(CFgo)
        local tween_s = game:service "TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position -
                                       CFgo.Position).Magnitude / 300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {
            CFrame = CFgo
        })
        tween:Play()

        local tweenfunc = {}

        function tweenfunc:Stop()
            tween:Cancel()
        end

        return tweenfunc
    end

    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or
            not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then
            tween:Cancel()
            repeat
                wait()
            until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
            wait(7)
            return
        end
        local tween_s = game:service "TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position -
                                       CFgo.Position).Magnitude / 325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
            CFrame = CFgo
        })
        tween:Play()

        local tweenfunc = {}

        function tweenfunc:Stop()
            tween:Cancel()
        end

        return tweenfunc
    end

    function EquipTool(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end

    spawn(function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg, false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if _G.UseSkill then
                            if type(args[2]) == "vector" then
                                args[2] = PositionSkillMasteryDevilFruit
                            else
                                args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
            return old(...)
        end)
    end)

    spawn(function()
        pcall(function()
            while task.wait() do
                for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            CurrentEquipGun = v.Name
                        end
                    end
                end
            end
        end)
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.TeleportIsland or _G.AutoEvoRace or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or
                    _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or
                    _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or
                    _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or
                    _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or
                    _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or
                    PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or
                    _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or
                    _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or
                    AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or
                    AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or
                    AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or
                    AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or
                    _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or
                    AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or
                    AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or
                    AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or
                    Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or
                    Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
                        :Destroy()
                end
            end)
        end
    end)

    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.TeleportIsland or _G.AutoEvoRace or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or
                    _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or
                    _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or
                    _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or
                    AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or
                    _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or
                    _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or
                    AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or
                    BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or
                    AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or
                    AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or
                    AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or
                    AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or
                    AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or
                    AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or
                    _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or
                    RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or
                    _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or
                    Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or
                    AutoBartilo or AutoEvoRace or _G.Ectoplasm then
                    for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        end)
    end)

    function CheckMaterial(matname)
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v) == "table" then
                if v.Type == "Material" then
                    if v.Name == matname then
                        return v.Count
                    end
                end
            end
        end
        return 0
    end

    local plr = game.Players.LocalPlayer
    local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]

    function GetCurrentBlade()
        local p13 = CbFw2.activeController
        local ret = p13.blades[1]
        if not ret then
            return
        end
        while ret.Parent ~= game.Players.LocalPlayer.Character do
            ret = ret.Parent
        end
        return ret
    end

    function AttackNoCoolDown()
        print("shit")
    end    

    function NormalAttack()
        if not _G.NormalAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
            CamShake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService 'VirtualUser':CaptureController()
            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end

    function GetWeaponInventory(Weaponname)
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v) == "table" then
                if v.Type == "Sword" then
                    if v.Name == Weaponname then
                        return true
                    end
                end
            end
        end
        return false
    end

    Type1 = 1
    spawn(function()
        while wait(.1) do
            if Type == 1 then
                Pos = CFrame.new(10, 40, 10)
            elseif Type == 2 then
                Pos = CFrame.new(-30, 10, -30)
            elseif Type == 3 then
                Pos = CFrame.new(10, 10, -40)
            elseif Type == 4 then
                Pos = CFrame.new(-40, 10, 10)
            end
        end
    end)

    spawn(function()
        while wait(.1) do
            Type = 1
            wait(1)
            Type = 2
            wait(1)
            Type = 3
            wait(1)
            Type = 4
            wait(1)
        end
    end)
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    function to(P)
        repeat
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    end

    function to(p)
        pcall(function()
            if (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and
                not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                if NameMon == "FishmanQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        61163.8515625, 11.6796875, 1819.7841796875))
                elseif Mon == "God's Guard" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -4607.82275, 872.54248, -1667.55688))
                elseif NameMon == "SkyExp1Quest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif NameMon == "ShipQuest1" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon == "ShipQuest2" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon == "FrostQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -6508.5581054688, 89.034996032715, -132.83953857422))
                else
                    repeat
                        wait(0.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                        wait(.05)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    until (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and
                        game.Players.LocalPlayer.Character.Humanoid.Health > 0
                    wait()
                end
            end
        end)
    end

    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
    end

    local Farming = Tabs.Main:AddSection("Farming")
    local listfastattack = {'Normal Attack', 'Fast Attack', 'Super Fast Attack'}

    local DropdownDelayAttack = Tabs.Main:AddDropdown("DropdownDelayAttack", {
        Title = "Chọn Tốc Độ Đánh",
        Description = "",
        Values = listfastattack,
        Multi = false,
        Default = 1
    })
    DropdownDelayAttack:SetValue("Fast Attack")
    DropdownDelayAttack:OnChanged(function(Value)
        _G.FastAttackZueszYTB_Mode = Value
        if _G.FastAttackZueszYTB_Mode == "Fast Attack" then
            _G.Fast_Delay = 0.12
        elseif _G.FastAttackZueszYTB_Mode == "Normal Attack" then
            _G.Fast_Delay = 0.2
        elseif _G.FastAttackZueszYTB_Mode == "Super Fast Attack" then
            _G.Fast_Delay = 0.05
        end
    end)

    local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
        Title = "Chọn Vũ Khí",
        Description = "",
        Values = {'Melee', 'Sword', 'Blox Fruit'},
        Multi = false,
        Default = 1
    })
    DropdownSelectWeapon:SetValue('Melee')
    DropdownSelectWeapon:OnChanged(function(Value)
        ChooseWeapon = Value
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == " Blox Fruit" then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)

    local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title = "Cày Cấp Độ",
        Description = "",
        Default = false
    })
    ToggleLevel:OnChanged(function(Value)
        _G.AutoLevel = Value
        if Value == false then
            wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoLevel then
                pcall(function()
                    CheckLevel()
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                           .Title.Text, NameMon) or
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        toTarget(CFrameQ)
                        if (CFrameQ.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                                QuestLv)
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                           .Title.Text, NameMon) or
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        bringmob = true
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        -- Click
                                    until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or
                                        not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    bringmob = false
                                end
                            end
                        end
                        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                            if string.find(v.Name, NameMon) then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >=
                                    10 then
                                    toTarget(v.CFrame * CFrame.new(posX, posY, posZ))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {
        Title = "Đánh Quái Ở Gần",
        Description = "",
        Default = false
    })
    ToggleMobAura:OnChanged(function(Value)
        _G.AutoNear = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(.1) do
            if _G.AutoNear then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >
                            0 then
                            if v.Name then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        bringmob = true
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        -- Click
                                    until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or
                                        not game.Workspace.Enemies:FindFirstChild(v.Name)
                                    bringmob = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local ToggleCastleRaid = Tabs.Main:AddToggle("ToggleCastleRaid", {
        Title = "Đánh Hải Tặc ở Pháo Đài",
        Description = "",
        Default = false
    })
    ToggleCastleRaid:OnChanged(function(Value)
        _G.CastleRaid = Value
    end)
    Options.ToggleCastleRaid:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CastleRaid then
                pcall(function()
                    local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512,
                        7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07,
                        0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.CastleRaid
                                end
                            end
                        end
                    else
                        toTarget(CFrameCastleRaid)

                    end
                end)
            end
        end
    end)

    game:GetService('RunService').RenderStepped:connect(function()
        if _G.chestsea3 then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                _G.chestsea3 = false
            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                if game:GetService("Workspace"):FindFirstChild("Chest1") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest1").CFrame)
                end
                if game:GetService("Workspace"):FindFirstChild("Chest2") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest2").CFrame)
                end
                if game:GetService("Workspace"):FindFirstChild("Chest3") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest3").CFrame)
                end
            end
        end
    end)
    if game.PlaceId == 7449423635 then
        spawn(function()
            while task.wait(3.5) do
                pcall(function()
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                        if _G.chestsea3 then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Q", false, game)
                            game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        end
                        wait(5)
                    end
                end)
            end
        end)
    end
    game:GetService('RunService').RenderStepped:connect(function()
        if _G.chestsea2 then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Q", false, game)
                _G.chestsea2 = false
            elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                if game:GetService("Workspace"):FindFirstChild("Chest1") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest1").CFrame)
                end
                if game:GetService("Workspace"):FindFirstChild("Chest2") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest2").CFrame)
                end
                if game:GetService("Workspace"):FindFirstChild("Chest3") then
                    TPchest(game:GetService("Workspace"):FindFirstChild("Chest3").CFrame)
                end
            end
        end
    end)
    if game.PlaceId == 4442272183 then
        spawn(function()
            while task.wait(3.5) do
                pcall(function()
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
                        if _G.chestsea2 then
                            game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        end
                        wait(5)
                    end
                end)
            end
        end)
    end

    function TPchest(P1)
        local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance >= 0 then
            Speed = 1200000
        end
        local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed), {
                CFrame = P1
            })
        tween:Play()
    end

    if Third_Sea then
        local ToggleChest = Tabs.Main:AddToggle("ToggleChest", {
            Title = "Nhặt Rương dừng Khi Có Vật Phẩm [Dịch Chuyển]",
            Description = "",
            Default = false
        })
        ToggleChest:OnChanged(function(Value)
            _G.chestsea3 = Value
        end)
        Options.ToggleChest:SetValue(false)
    end

    if Second_Sea then
        local ToggleChest = Tabs.Main:AddToggle("ToggleChest", {
            Title = "Nhặt Rương dừng Khi Có Vật Phẩm [Dịch Chuyển]",
            Description = "",
            Default = false
        })
        ToggleChest:OnChanged(function(Value)
            _G.chestsea2 = Value
        end)
        Options.ToggleChest:SetValue(false)
    end

    local ToggleChestTween = Tabs.Main:AddToggle("ToggleChestTween", {
        Title = "Nhặt Rương [Bay]",
        Description = "",
        Default = false
    })
    ToggleChestTween:OnChanged(function(Value)
        AutoFarmChest = Value
    end)
    Options.ToggleChestTween:SetValue(false)
    _G.MagnitudeAdd = 0
    spawn(function()
        while wait() do
            if AutoFarmChest then
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name:find("Chest") then
                        if game:GetService("Workspace"):FindFirstChild(v.Name) then
                            if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                5000 + _G.MagnitudeAdd then
                                repeat
                                    wait()
                                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                        Tween(v.CFrame)
                                    end
                                until AutoFarmChest == false or not v.Parent
                                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
                                break
                            end
                        end
                    end
                end
            end
        end
    end)

    Tabs.Main:AddButton({
        Title = "Nhập Hết Code",
        Description = "",
        Callback = function()
            RedeemCode()
        end
    })

    function RedeemCode(Code)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
    end

    Tabs.Main:AddButton({
        Title = "Fix Lag",
        Description = "",
        Callback = function()
            FPSBooster()
        end
    })

    function FPSBooster()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l, "Technology", 2)
        sethiddenproperty(t, "Decoration", false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end

    local Mastery = Tabs.Main:AddSection("Mastery Farm")
    local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
        Title = "Chọn Chế Độ Cày Thông Thạo",
        Description = "",
        Values = {"Level", "Near Mobs"},
        Multi = false,
        Default = 1
    })

    DropdownMastery:SetValue("Level")

    DropdownMastery:OnChanged(function(Value)
        TypeMastery = Value
    end)

    local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {
        Title = "Cày Thông Thạo Trái Ác Quỷ",
        Description = "",
        Default = false
    })
    ToggleMasteryFruit:OnChanged(function(Value)
        AutoFarmMasDevilFruit = Value
    end)
    Options.ToggleMasteryFruit:SetValue(false)

    local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
        Title = "Phần Trăm Máu Quái",
        Description = "",
        Default = 25,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            KillPercent = Value
        end
    })

    SliderHealt:OnChanged(function(Value)
        KillPercent = Value
    end)

    SliderHealt:SetValue(25)

    spawn(function()
        while task.wait(1) do
            if _G.UseSkill then
                pcall(function()
                    if _G.UseSkill then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFarm and v:FindFirstChild("Humanoid") and
                                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth *
                                KillPercent / 100 then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                           .LocalPlayer
                                                                                                           .Data
                                                                                                           .DevilFruit
                                                                                                           .Value) then
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                            .LocalPlayer
                                                                                                            .Data
                                                                                                            .DevilFruit
                                                                                                            .Value)
                                            .MousePos.Value = PositionSkillMasteryDevilFruit
                                        local DevilFruitMastery =
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                                .LocalPlayer
                                                                                                                .Data
                                                                                                                .DevilFruit
                                                                                                                .Value)
                                                .Level.Value
                                        if SkillZ and DevilFruitMastery >= 1 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(0.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                        end
                                        if SkillX and DevilFruitMastery >= 2 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(0.2)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                        end
                                        if SkillC and DevilFruitMastery >= 3 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(0.3)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                        end
                                        if SkillV and DevilFruitMastery >= 4 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            wait(0.4)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        if SkillF and DevilFruitMastery >= 5 then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                            wait(0.5)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                        end
                                    end
                                until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while task.wait(.1) do
            if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
                pcall(function()
                    CheckLevel(SelectMonster)
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                           .Title.Text, NameMon) or
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude >
                                2500 then
                                to(CFrameQ)
                                wait(0.2)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude <
                                2500 then
                                Tween(CFrameQ)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                                QuestLv)
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                           .Title.Text, NameMon) or
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                if v.Name == Ms then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                            _G.UseSkill = true
                                        else
                                            _G.UseSkill = false
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name

                                            NormalAttack()
                                        end
                                    until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or
                                        not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
                                        not TypeMastery == 'Level'
                                    bringmob = false
                                    _G.UseSkill = false

                                end
                            end
                        end
                    end
                end)

            elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name

                                        NormalAttack()
                                    end
                                until not AutoFarmMasDevilFruit or not MasteryType == 'Near Mobs' or not v.Parent or
                                    v.Humanoid.Health == 0 or not TypeMastery == 'Near Mobs'
                                bringmob = false
                                _G.UseSkill = false

                            end
                        end
                    end
                end)
            end
        end
    end)

    local MiscFarm = Tabs.Main:AddSection("Farm Khác")

    if Third_Sea then
        local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
            Title = "Cày Xương",
            Description = "",
            Default = false
        })
        ToggleBone:OnChanged(function(Value)
            _G.AutoBone = Value
            if Value == false then
                wait()
                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
            end
        end)
        Options.ToggleBone:SetValue(false)
        local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
        local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
        spawn(function()
            while wait() do
                if _G.AutoBone then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                               .QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Demonic Soul") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame2.Position).Magnitude >
                                    2500 then
                                    to(BoneCFrame2)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    BoneCFrame.Position).Magnitude < 2500 then
                                    Tween(BoneCFrame)
                                end
                            else
                                Tween(BoneCFrame)
                            end
                            if (BoneCFrame.Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                                    "HauntedQuest2", 1)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 then
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name ==
                                            "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                                                               .Container.QuestTitle.Title.Text, "Demonic Soul") then
                                                repeat
                                                    wait(_G.Fast_Delay)
                                                    AttackNoCoolDown()
                                                    AutoHaki()
                                                    bringmob = true
                                                    EquipTool(SelectWeapon)
                                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    FarmPos = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                    false
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest")
                                                bringmob = false
                                            end
                                        end
                                    end
                                end
                            else
                            end
                        end
                    end)
                end
            end
        end)

        local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {
            Title = "Cày Katakuri",
            Description = "",
            Default = false
        })
        ToggleCake:OnChanged(function(Value)
            _G.CakePrince = Value
            if Value == false then
                wait()
                Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
            end
        end)
        Options.ToggleCake:SetValue(false)
        spawn(function()
            while wait() do
                if _G.CakePrince then
                    pcall(function()
                        local CakeCFrame = CFrame.new(-2142.66821, 71.2588654, -12327.4619, 0.996939838,
                            -4.33107843e-08, 0.078172572, 4.20252917e-08, 1, 1.80894251e-08, -0.078172572,
                            -1.47488439e-08, 0.996939838)
                        toTarget(CakeCFrame)
                        if game.ReplicatedStorage:FindFirstChild("Cake Prince") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Prince" then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.CanCollide = false
                                            Tween(v.HumanoidRootPart.CFrame * Pos)
                                            -- Click
                                        until _G.CakePrince == false or not v.Parent or v.Humanoid.Health <= 0
                                        bringmob = false
                                    end
                                end
                            else
                                Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                            end
                        else
                            if game.Workspace.Enemies:FindFirstChild("Baking Staff") or
                                game.Workspace.Enemies:FindFirstChild("Head Baker") or
                                game.Workspace.Enemies:FindFirstChild("Cake Guard") or
                                game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or
                                        v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        until _G.CakePrince == false or
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or
                                            not v.Parent or v.Humanoid.Health <= 0
                                        bringmob = false
                                    end
                                end
                            else
                                toTarget(CakeCFrame)
                            end
                        end
                    end)
                end
            end
        end)

        local ToggleSpawnCake = Tabs.Main:AddToggle("ToggleSpawnCake", {
            Title = "Tự Động Triệu Hồi Katakuri",
            Description = "",
            Default = true
        })
        ToggleSpawnCake:OnChanged(function(Value)
            _G.SpawnCakePrince = Value
        end)
        Options.ToggleSpawnCake:SetValue(true)
    end

    spawn(function()
        while wait() do
            if _G.SpawnCakePrince then
                local args = {
                    [1] = "CakePrinceSpawner",
                    [2] = true
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "CakePrinceSpawner"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)

    if Second_Sea then
        local ToggleVatChatKiDi = Tabs.Main:AddToggle("ToggleVatChatKiDi", {
            Title = "Cày vật Chất kì Dị",
            Description = "",
            Default = false
        })
        ToggleVatChatKiDi:OnChanged(function(Value)
            _G.Ectoplasm = Value
        end)
        Options.ToggleVatChatKiDi:SetValue(false)

        spawn(function()
            while wait(.1) do
                pcall(function()
                    if _G.Ectoplasm then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or
                                    v.Name == "Ship Officer" and v:FindFirstChild("Humanoid") then
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            -- Click
                                        until _G.Ectoplasm == false or not v.Parent or v.Humanoid.Health == 0 or
                                            not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                        bringmob = false
                                    end
                                end
                            end
                        else
                            local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) -
                                                 game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if Distance > 20000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                            Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                        end
                    end
                end)
            end
        end)
    end

    local boss = Tabs.Main:AddSection("Farm Boss")

    if First_Sea then
        tableBoss = {"The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden",
                     "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg", "Saber Expert"}
    elseif Second_Sea then
        tableBoss = {"Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", "Cursed Captain", "Darkbeard", "Order",
                     "Awakened Ice Admiral", "Tide Keeper"}
    elseif Third_Sea then
        tableBoss = {"Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate",
                     "rip_indra True Form", "Longma", "Soul Reaper", "Cake Queen"}
    end

    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title = "Chọn Boss",
        Description = "",
        Values = tableBoss,
        Multi = false,
        Default = 1
    })

    DropdownBoss:SetValue("")
    DropdownBoss:OnChanged(function(Value)
        _G.SelectBoss = Value
    end)

    local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
        Title = "Giết Boss",
        Description = "",
        Default = false
    })

    ToggleAutoFarmBoss:OnChanged(function(Value)
        _G.AutoBoss = Value
    end)

    Options.ToggleAutoFarmBoss:SetValue(false)

    spawn(function()
        while wait() do
            if _G.AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",
                                            math.huge)
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart
                                         .CFrame * CFrame.new(5, 10, 7))
                        end
                    end
                end)
            end
        end
    end)

    local Material = Tabs.Main:AddSection("Farm Nguyên Liệu")

    if First_Sea then
        MaterialList = {"Scrap Metal", "Leather", "Angel Wings", "Magma Ore", "Fish Tail"}
    elseif Second_Sea then
        MaterialList = {"Scrap Metal", "Leather", "Radioactive Material", "Mystic Droplet", "Magma Ore", "Vampire Fang"}
    elseif Third_Sea then
        MaterialList = {"Scrap Metal", "Leather", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder",
                        "Fish Tail", "Mini Tusk"}
    end

    local DropdownMaterial = Tabs.Main:AddDropdown("DropdownMaterial", {
        Title = "Chọn Nguyên Liệu",
        Description = "",
        Values = MaterialList,
        Multi = false,
        Default = 1
    })

    DropdownMaterial:SetValue("Leather")

    DropdownMaterial:OnChanged(function(Value)
        SelectMaterial = Value
    end)

    local ToggleMaterial = Tabs.Main:AddToggle("ToggleMaterial", {
        Title = "Cày Nguyên Liệu",
        Description = "",
        Default = false
    })

    ToggleMaterial:OnChanged(function(Value)
        _G.AutoMaterial = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoMaterial then
                pcall(function()
                    MaterialMon(SelectMaterial)
                    toTarget(MPos)
                    if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                if v.Name == MMon then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        -- Click
                                    until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                            if string.find(v.Name, Mon) then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >=
                                    10 then
                                    Tween(v.CFrame * CFrame.new(posX, posY, posZ))

                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    if Third_Sea then
        local RoughSea = Tabs.Main:AddSection(" Kitsune ")

        local ToggleEspKitsune = Tabs.Main:AddToggle("ToggleEspKitsune", {
            Title = "Định vị Đảo kisune",
            Description = "",
            Default = false
        })
        ToggleEspKitsune:OnChanged(function(Value)
            KitsuneIslandEsp = Value
            while KitsuneIslandEsp do
                wait()
                UpdateIslandKisuneESP()
            end
        end)
        Options.ToggleEspKitsune:SetValue(false)

        function UpdateIslandKisuneESP()
            for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                pcall(function()
                    if KitsuneIslandEsp then
                        if v.Name == "Kitsune Island" then
                            if not v:FindFirstChild('NameEsp') then
                                local bill = Instance.new('BillboardGui', v)
                                bill.Name = 'NameEsp'
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel', bill)
                                name.Font = "Code"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(80, 245, 245)
                            else
                                v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' ..
                                                                  round(
                                        (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude /
                                            3) .. ' M')
                            end
                        end
                    else
                        if v:FindFirstChild('NameEsp') then
                            v:FindFirstChild('NameEsp'):Destroy()
                        end
                    end
                end)
            end
        end

        local ToggleTPKitsune = Tabs.Main:AddToggle("ToggleTPKitsune", {
            Title = "Di Chuyển Đến Đảo Kisune",
            Description = "",
            Default = false
        })
        ToggleTPKitsune:OnChanged(function(Value)
            _G.TweenToKitsune = Value
        end)
        Options.ToggleTPKitsune:SetValue(false)
        spawn(function()
            local kitsuneIsland
            while not kitsuneIsland do
                kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
                wait(1)
            end
            while wait() do
                if _G.TweenToKitsune then
                    local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                    if shrineActive then
                        for _, v in pairs(shrineActive:GetDescendants()) do
                            if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                                Tween(v.CFrame)
                            end
                        end
                    end
                end
            end
        end)

        local ToggleCollectAzure = Tabs.Main:AddToggle("ToggleCollectAzure", {
            Title = "Nhặt Hồn Lửa",
            Description = "",
            Default = false
        })
        ToggleCollectAzure:OnChanged(function(Value)
            _G.CollectAzure = Value
        end)
        Options.ToggleCollectAzure:SetValue(false)
        spawn(function()
            while wait() do
                if _G.CollectAzure then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            Tween(
                                game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                            print("Azure")
                        end
                    end)
                end
            end
        end)
    end

    if Third_Sea then
        local RoughSea = Tabs.Main:AddSection("Rough Sea")

        local ToggleSailBoat = Tabs.Main:AddToggle("ToggleSailBoat", {
            Title = "Mua Thuyền + Ngồi Vào",
            Description = "",
            Default = false
        })
        ToggleSailBoat:OnChanged(function(Value)
            _G.SailBoat = Value
        end)
        Options.ToggleSailBoat:SetValue(false)

        spawn(function()
            while wait() do
                pcall(function()
                    if _G.SailBoat then
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or
                            not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or
                            not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or
                            not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                buyb = TweenBoat(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                                if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                    if buyb then
                                        buyb:Stop()
                                    end
                                    local args = {
                                        [1] = "BuyBoat",
                                        [2] = "PirateGrandBrigade"
                                    }

                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame *
                                                  CFrame.new(0, 1, 0))
                                else
                                    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                        if v.Name == "PirateGrandBrigade" then
                                            repeat
                                                wait()
                                                if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156)
                                                    .Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    10 then
                                                    TweenShip(
                                                        CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                                elseif (CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094)
                                                    .Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    10 then
                                                    TweenShip(
                                                        CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375))
                                                elseif (CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375)
                                                    .Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    10 then
                                                    TweenShip(
                                                        CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                                end
                                            until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or
                                                game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or
                                                _G.SailBoat == false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.SailBoat then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                    end
                end
            end)
        end)

        local ToggleTerrorshark = Tabs.Main:AddToggle("ToggleTerrorshark", {
            Title = " Giết Terrorshark",
            Description = "",
            Default = false
        })

        ToggleTerrorshark:OnChanged(function(Value)
            _G.AutoTerrorshark = Value
        end)
        Options.ToggleTerrorshark:SetValue(false)
        spawn(function()
            while wait() do
                if _G.AutoTerrorshark then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        until not _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else

                            if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                                Tween(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart
                                        .CFrame * CFrame.new(2, 20, 2))
                            else
                            end
                        end
                    end)

                end
            end
        end)

        local TogglePiranha = Tabs.Main:AddToggle("TogglePiranha", {
            Title = " Giết Piranha",
            Description = "",
            Default = false
        })

        TogglePiranha:OnChanged(function(Value)
            _G.farmpiranya = Value
        end)
        Options.TogglePiranha:SetValue(false)

        spawn(function()
            while wait() do
                if _G.farmpiranya then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        until not _G.farmpiranya or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else

                            if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart
                                          .CFrame * CFrame.new(2, 20, 2))
                            else
                            end
                        end

                    end)
                end
            end
        end)

        local ToggleShark = Tabs.Main:AddToggle("ToggleShark", {
            Title = "Giết Cá Mập",
            Description = "",
            Default = false
        })
        ToggleShark:OnChanged(function(Value)
            _G.AutoShark = Value
        end)
        Options.ToggleShark:SetValue(false)
        spawn(function()
            while wait() do
                if _G.AutoShark then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        until not _G.AutoShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame *
                                      CFrame.new(0, 1, 0))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                                Tween(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart
                                        .CFrame * CFrame.new(2, 20, 2))
                            else
                            end
                        end
                    end)

                end
            end
        end)

        local ToggleFishCrew = Tabs.Main:AddToggle("ToggleFishCrew", {
            Title = " Giết Fish Crew",
            Description = "",
            Default = false
        })
        ToggleFishCrew:OnChanged(function(Value)
            _G.AutoFishCrew = Value
        end)
        Options.ToggleFishCrew:SetValue(false)

        spawn(function()
            while wait() do
                if _G.AutoFishCrew then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))

                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        until not _G.AutoFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                    end

                                end
                            end
                        else

                            Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame *
                                      CFrame.new(0, 1, 0))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                                Tween(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart
                                        .CFrame * CFrame.new(2, 20, 2))
                            else

                            end
                        end

                    end)
                end
            end
        end)

        local ToggleShip = Tabs.Main:AddToggle("ToggleShip", {
            Title = "Đánh Thuyền Hải Tặc",
            Description = "",
            Default = false
        })
        ToggleShip:OnChanged(function(Value)
            _G.Ship = Value
        end)
        Options.ToggleShip:SetValue(false)
        function CheckPirateBoat()
            local checkmmpb = {"PirateGrandBrigade", "PirateBrigade"}
            for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
                if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                    return v
                end
            end
        end

        spawn(function()
            while wait() do
                if _G.Ship then
                    pcall(function()
                        if CheckPirateBoat() then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                            wait(.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                            local v = CheckPirateBoat()
                            repeat
                                wait()
                                spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1)
                                AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                                          CFrame.new(0, -5, 0)
                                Skillaimbot = true
                                AutoSkill = false
                            until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                            Skillaimbot = true
                            AutoSkill = false
                        end
                    end)
                end
            end
        end)

        local ToggleGhostShip = Tabs.Main:AddToggle("ToggleGhostShip", {
            Title = "Đánh Thuyền Ma",
            Description = "",
            Default = false
        })
        ToggleGhostShip:OnChanged(function(Value)
            _G.GhostShip = Value
        end)
        Options.ToggleGhostShip:SetValue(false)

        function CheckPirateBoat()
            local checkmmpb = {"FishBoat"}
            for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
                if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                    return v
                end
            end
        end
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.bjirFishBoat then
                        if CheckPirateBoat() then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                            wait(0.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                            local v = CheckPirateBoat()
                            repeat
                                wait()
                                spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0), 1))
                                AutoSkill = true
                                Skillaimbot = true
                                AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                                          CFrame.new(0, -5, 0)
                            until v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                            AutoSkill = false
                            Skillaimbot = false
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                if _G.bjirFishBoat then
                    pcall(function()
                        if CheckPirateBoat() then
                            AutoHaki()
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Melee" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Blox Fruit" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(0.6)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Sword" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Gun" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                        end
                    end)
                end
            end
        end)

        local AutoElite = Tabs.Main:AddSection("Farm Boss Bí Ẩn")

        local ToggleElite = Tabs.Main:AddToggle("ToggleElite", {
            Title = "Đánh Boss Bí Ẩn",
            Description = "",
            Default = false
        })

        ToggleElite:OnChanged(function(Value)
            _G.AutoElite = Value
        end)
        Options.ToggleElite:SetValue(false)
        spawn(function()
            while task.wait() do
                if _G.AutoElite then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                               .QuestTitle.Title.Text, "Diablo") or
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                        .Title.Text, "Deandre") or
                                string.find(
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                        .Title.Text, "Urban") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                                repeat
                                                    wait(_G.Fast_Delay)
                                                    AttackNoCoolDown()
                                                    EquipTool(SelectWeapon)
                                                    AutoHaki()
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                                    MonsterPosition = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                                until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    end
                                else

                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                        toTarget(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart
                                                .CFrame * CFrame.new(posX, posY, posZ))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                        toTarget(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart
                                                .CFrame * CFrame.new(posX, posY, posZ))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                        toTarget(
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart
                                                .CFrame * CFrame.new(posX, posY, posZ))
                                    end

                                end

                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                    end)
                end
            end
        end)
    end

    if Third_Sea then
        local Sea = Tabs.Main:AddSection("Sea Beast")

        local ToggleSeaBeAst = Tabs.Main:AddToggle("ToggleSeaBeAst", {
            Title = "Treo + Đánh Thủy Quái",
            Description = "",
            Default = false
        })

        ToggleSeaBeAst:OnChanged(function(Value)
            _G.AutoSeaBeast = Value
        end)
        Options.ToggleSeaBeAst:SetValue(false)

        Skillz = true
        Skillx = true
        Skillc = true
        Skillv = true

        spawn(function()
            while wait() do
                pcall(function()
                    if AutoSkill then
                        if Skillz then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
                        if Skillx then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                        end
                        if Skillc then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                        end
                        if Skillv then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            wait(.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                        end
                    end
                end)
            end
        end)
        task.spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoSeaBeast then
                        if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                    if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                        buyb = TweenBoat(CFrame.new(-4513.90087890625, 16.76398277282715,
                                            -2658.820556640625))
                                        if (CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625)
                                            .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            10 then
                                            if buyb then
                                                buyb:Stop()
                                            end
                                            local args = {
                                                [1] = "BuyBoat",
                                                [2] = "PirateGrandBrigade"
                                            }

                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                unpack(args))
                                        end
                                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                            TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat
                                                          .CFrame * CFrame.new(0, 1, 0))
                                        elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                            repeat
                                                wait()
                                                if (game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat
                                                    .CFrame.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    10 then
                                                    TweenShip(
                                                        CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                                end
                                            until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or
                                                _G.AutoSeaBeast == false
                                        end
                                    end
                                elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                    for is, vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                        if vs.Name == "PirateGrandBrigade" then
                                            if vs:FindFirstChild("VehicleSeat") then
                                                repeat
                                                    wait()
                                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit =
                                                        false
                                                    TweenBoat(vs.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                                until not game:GetService("Workspace").Boats:FindFirstChild(
                                                    "PirateGrandBrigade") or _G.AutoSeaBeast == false
                                            end
                                        end
                                    end
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                for iss, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == "PirateGrandBrigade" then
                                        if v:FindFirstChild("VehicleSeat") then
                                            repeat
                                                wait()
                                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                TweenBoat(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                            until not game:GetService("Workspace").Boats:FindFirstChild(
                                                "PirateGrandBrigade") or _G.AutoSeaBeast == false
                                        end
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                            for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") then
                                    repeat
                                        wait()
                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                        TweenBoat(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                        EquipAllWeapon()
                                        AutoSkill = true
                                        AimBotSkillPosition = v.HumanoidRootPart
                                        Skillaimbot = true
                                    until not v:FindFirstChild("HumanoidRootPart") or _G.AutoSeaBeast == false
                                    AutoSkill = false
                                    Skillaimbot = false
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local ToggleAutoW = Tabs.Main:AddToggle("ToggleAutoW", {
            Title = "Tự Động Nhấn W",
            Description = "",
            Default = false
        })
        ToggleAutoW:OnChanged(function(Value)
            _G.AutoW = Value
        end)
        Options.ToggleAutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end
                end)
            end
        end)

        local AutoMysticIsland = Tabs.Main:AddSection("Đảo Bí Ẩn")

        Tabs.Main:AddButton({
            Title = "Bay Đến Đảo Bí Ẩn",
            Description = "",
            Callback = function()
                TweenMirage()
            end
        })
        function TweenMirage()
            repeat
                wait()
            until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                AllNPCS = getnilinstances()
                for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    table.insert(AllNPCS, v)
                end
                for r, v in pairs(AllNPCS) do
                    if v.Name == "Advanced Fruit Dealer" then
                        Tween2(v.HumanoidRootPart.CFrame)
                    end
                end
            end
        end

        Tabs.Main:AddButton({
            Title = "Bay đến Chỗ Cao Nhất",
            Description = "",
            Callback = function()
                TwenetoHighestPoint()
            end
        })

        function TwenetoHighestPoint()
            HighestPoint = getHighestPoint()
            if HighestPoint then
                Tween2(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
            end
        end
        function getHighestPoint()
            if not game.workspace.Map:FindFirstChild("MysticIsland") then
                return nil
            end
            for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
                if v:IsA("MeshPart") then
                    if v.MeshId == "rbxassetid://16137232629" then
                        return v
                    end
                end
            end
        end

        local ToggleTweenGear = Tabs.Main:AddToggle("ToggleTweenGear", {
            Title = "Nhặt Bánh Răng",
            Description = "",
            Default = false
        })
        ToggleTweenGear:OnChanged(function(Value)
            _G.TweenToGear = Value
        end)
        Options.ToggleTweenGear:SetValue(false)

        spawn(function()
            pcall(function()
                while wait() do
                    if _G.TweenToGear then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                if v:IsA("MeshPart") then
                                    if v.Material == Enum.Material.Neon then
                                        Tween2(v.CFrame)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end)

        local Togglelockmoon = Tabs.Main:AddToggle("Togglelockmoon", {
            Title = "Nhìn Trăng + Bật Tộc",
            Description = "",
            Default = false
        })
        Togglelockmoon:OnChanged(function(Value)
            _G.AutoLockMoon = Value
        end)
        Options.Togglelockmoon:SetValue(false)

        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoLockMoon then
                        local moonDir = game.Lighting:GetMoonDirection()
                        local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                        game.Workspace.CurrentCamera.CFrame =
                            CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoLockMoon then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                    end
                end)
            end
        end)

        local ToggleMirage = Tabs.Main:AddToggle("ToggleMirage", {
            Title = "Treo Đảo Bí Ẩn",
            Description = "",
            Default = false
        })
        ToggleMirage:OnChanged(function(Value)
            _G.AutoSeaBeast = Value
        end)

        Options.ToggleMirage:SetValue(false)

        local AutoW = Tabs.Main:AddToggle("AutoW", {
            Title = "Nhấn Phím W",
            Description = "",
            Default = false
        })
        AutoW:OnChanged(function(Value)
            _G.AutoW = Value
        end)
        Options.AutoW:SetValue(false)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoW then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end
                end)
            end
        end)
    end

    local Items = Tabs.Main:AddSection("Items Farm")

    if Third_Sea then
        local ToggleHallow = Tabs.Main:AddToggle("ToggleHallow", {
            Title = "Cày Lưỡi Hái Bóng Tối ( Từ A - Z )",
            Description = "",
            Default = false
        })

        ToggleHallow:OnChanged(function(Value)
            AutoHallowSycthe = Value
        end)
        Options.ToggleHallow:SetValue(false)
        spawn(function()
            while wait() do
                if AutoHallowSycthe then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Soul Reaper") then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat
                                toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                                wait()
                            until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            wait(0.5)
                            EquipTool("Hallow Essence")
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                                toTarget(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart
                                        .CFrame * CFrame.new(2, 20, 2))
                            else
                            end
                        end
                    end)

                end
            end
        end)

        spawn(function()
            while wait(0.001) do
                if AutoHallowSycthe then
                    local args = {
                        [1] = "Bones",
                        [2] = "Buy",
                        [3] = 1,
                        [4] = 1
                    }

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)

        local ToggleYama = Tabs.Main:AddToggle("ToggleYama", {
            Title = "Lấy kiếm Yama",
            Description = "",
            Default = false
        })
        ToggleYama:OnChanged(function(Value)
            _G.AutoYama = Value
        end)
        Options.ToggleYama:SetValue(false)
        spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                        repeat
                            wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle
                                                  .ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)

        local ToggleTushita = Tabs.Main:AddToggle("ToggleTushita", {
            Title = "Lấy Tushita",
            Description = "",
            Default = false
        })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
        spawn(function()
            while wait() do
                if AutoTushita then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and
                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                        wait()
                                        EquipTool(SelectWeapon)
                                    end
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    -- Click
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                    end
                end
            end
        end)

        local ToggleHoly = Tabs.Main:AddToggle("ToggleHoly", {
            Title = "Thắp Sáng Đuốc Lấy Tushita",
            Description = "",
            Default = false
        })
        ToggleHoly:OnChanged(function(Value)
            _G.Auto_Holy_Torch = Value
        end)
        Options.ToggleHoly:SetValue(false)
        spawn(function()
            while wait() do
                if _G.Auto_Holy_Torch then
                    pcall(function()
                        wait(1)
                        repeat
                            Tween(CFrame.new(-10752, 417, -9366))
                            wait()
                        until not _G.Auto_Holy_Torch or
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                        wait(1)
                        repeat
                            Tween(CFrame.new(-11672, 334, -9474))
                            wait()
                        until not _G.Auto_Holy_Torch or
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                        wait(1)
                        repeat
                            Tween(CFrame.new(-12132, 521, -10655))
                            wait()
                        until not _G.Auto_Holy_Torch or
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                        wait(1)
                        repeat
                            Tween(CFrame.new(-13336, 486, -6985))
                            wait()
                        until not _G.Auto_Holy_Torch or
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                        wait(1)
                        repeat
                            Tween(CFrame.new(-13489, 332, -7925))
                            wait()
                        until not _G.Auto_Holy_Torch or
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                    end)
                end
            end
        end)
    end
end

if Second_Sea then
    local ToggleFactory = Tabs.Main:AddToggle("ToggleFactory", {
        Title = "Đánh Nhà Máy",
        Description = "",
        Default = false
    })
    ToggleFactory:OnChanged(function(Value)
        _G.Factory = Value
    end)
    Options.ToggleFactory:SetValue(false)

    spawn(function()
        while wait() do
            if _G.Factory then
                if game.Workspace.Enemies:FindFirstChild("Core") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                repeat
                                    Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                    wait()
                                until not _G.Factory or
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                EquipTool(SelectWeapon)
                                AutoHaki()
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                -- Click
                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Factory == false
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Core") then
                    repeat
                        Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                        wait()
                    until not _G.Factory or
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                end

            end
        end
    end)

end

if Third_Sea then
    local ToggleCakeV2 = Tabs.Main:AddToggle("ToggleCakeV2", {
        Title = "Giết Katakuri V2 (Cần Triệu Hồi)",
        Description = "",
        Default = false
    })
    ToggleCakeV2:OnChanged(function(Value)
        _G.AutoCakeV2 = Value
    end)
    Options.ToggleCakeV2:SetValue(false)
end
spawn(function()
    while wait() do
        if _G.AutoCakeV2 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                until not _G.AutoCakeV2 or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                        Tween(
                            game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame *
                                CFrame.new(2, 20, 2))
                    else
                    end

                end
            end)
        end
    end
end)

if Second_Sea or Third_Sea then
    local ToggleHakiColor = Tabs.Main:AddToggle("ToggleHakiColor", {
        Title = "Mua Haki Màu",
        Description = "",
        Default = false
    })
    ToggleHakiColor:OnChanged(function(Value)
        _G.Auto_Buy_Enchancement = Value
    end)
    Options.ToggleHakiColor:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Enchancement then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end)
end

if Second_Sea then
    local ToggleSwordLengend = Tabs.Main:AddToggle("ToggleSwordLengend", {
        Title = "Mua Kiếm Huyền Thoại",
        Description = "",
        Default = false
    })
    ToggleSwordLengend:OnChanged(function(Value)
        _G.BuyLengendSword = Value
    end)
    Options.ToggleSwordLengend:SetValue(false)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.BuyLengendSword or Triple_A then
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    -- Triple_A
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                else
                    wait(2)
                end
            end)
        end
    end)
end

if Second_Sea then
    local ToggleEvoRace = Tabs.Main:AddToggle("ToggleEvoRace", {
        Title = "Thức Tỉnh Tộc V2",
        Description = "",
        Default = false
    })
    ToggleEvoRace:OnChanged(function(Value)
        _G.AutoEvoRace = Value
    end)
    Options.ToggleEvoRace:SetValue(false)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoEvoRace then
                    local Back = game.Players.LocalPlayer.Backpack
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                    if Back:FindFirstChild("Flower 2") then
                        if Back:FindFirstChild("Flower 1") then
                            Tween(CFrame.new(-5497.06152, 47.5923004, -795.237061))
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Zombie" then
                                    repeat
                                        task.wait()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                    until Back:FindFirstChild("Flower 3")
                                end
                            end
                        else
                            Tween(game.Workspace["Flower1"].CFrame)
                        end
                    else
                        Tween(game.Workspace["Flower2"].CFrame)
                    end
                    if Back:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and
                        Back:FindFirstChild("Flower 3") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                    for i, v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Flower1" or v.Name == "Flower2" then
                            v.Size = Vector3.new(20, 20, 20)
                        end
                    end
                end
            end)
        end
    end)
end

local ToggleMelee = Tabs.Stats:AddToggle("ToggleMelee", {
    Title = "Nâng Melee",
    Description = "",
    Default = false
})
ToggleMelee:OnChanged(function(Value)
    _G.Auto_Stats_Melee = Value
end)
Options.ToggleMelee:SetValue(false)

local ToggleDe = Tabs.Stats:AddToggle("ToggleDe", {
    Title = "Nâng Máu",
    Description = "",
    Default = false
})
ToggleDe:OnChanged(function(Value)
    _G.Auto_Stats_Defense = Value
end)
Options.ToggleDe:SetValue(false)

local ToggleSword = Tabs.Stats:AddToggle("ToggleSword", {
    Title = "Nâng Kiếm",
    Description = "",
    Default = false
})
ToggleSword:OnChanged(function(Value)
    _G.Auto_Stats_Sword = Value
end)
Options.ToggleSword:SetValue(false)

local ToggleGun = Tabs.Stats:AddToggle("ToggleGun", {
    Title = "Nâng Súng",
    Description = "",
    Default = false
})
ToggleGun:OnChanged(function(Value)
    _G.Auto_Stats_Gun = Value
end)
Options.ToggleGun:SetValue(false)

local ToggleFruit = Tabs.Stats:AddToggle("ToggleFruit", {
    Title = "Nâng Trái Ác Quỷ",
    Description = "",
    Default = false
})
ToggleFruit:OnChanged(function(Value)
    _G.Auto_Stats_Devil_Fruit = Value
end)
Options.ToggleFruit:SetValue(false)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

local Playerslist = {}
for i, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v.Name)
end

local SelectedPly = Tabs.Player:AddDropdown("SelectedPly", {
    Title = "Chọn Người Chơi",
    Description = "",
    Values = Playerslist,
    Multi = false,
    Default = 1
})

SelectedPly:SetValue("nil")
SelectedPly:OnChanged(function(Value)
    _G.SelectPly = Value
end)

Tabs.Player:AddButton({
    Title = "Làm Mới Người Chơi",
    Description = "",
    Callback = function()
        table.clear(Playerslist)
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist, v.Name)
        end
    end
})

local ToggleTeleport = Tabs.Player:AddToggle("ToggleTeleport", {
    Title = "Bay Đến Người Chơi",
    Description = "",
    Default = false
})
ToggleTeleport:OnChanged(function(Value)
    _G.TeleportPly = Value
    if Value == false then
        wait()
        AutoHaki()
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleTeleport:SetValue(false)

spawn(function()
    while wait() do
        if _G.TeleportPly then
            pcall(function()
                if game.Players:FindFirstChild(_G.SelectPly) then
                    toTarget(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)

local ToggleQuanSat = Tabs.Player:AddToggle("ToggleQuanSat", {
    Title = "Quan sát Người Chơi",
    Description = "",
    Default = false
})
ToggleQuanSat:OnChanged(function(Value)
    SpectatePlys = Value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
    repeat
        wait(.1)
        game:GetService("Workspace").Camera.CameraSubject =
            game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
    until SpectatePlys == false
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)
Options.ToggleQuanSat:SetValue(false)

local ToggleFastAttack = Tabs.Player:AddToggle("ToggleFastAttack", {
    Title = "Đánh Người Chơi",
    Description = "",
    Default = false
})

ToggleFastAttack:OnChanged(function(Value)
    _G.FastAttackZueszYTB = Value
end)
Options.ToggleFastAttack:SetValue(false)

local SliderDelayAttackPlayer = Tabs.Player:AddSlider("SliderDelayAttackPlayer", {
    Title = "Tốc độ Đánh (giây)",
    Description = "",
    Default = 0.1,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        _G.DelayAttackPlayer = Value
    end
})

SliderDelayAttackPlayer:OnChanged(function(Value)
    _G.DelayAttackPlayer = Value
end)

SliderDelayAttackPlayer:SetValue(0.1)

spawn(function()
    while wait() do
        pcall(function()
            if _G.FastAttackZueszYTB then
                repeat
                    wait(_G.DelayAttackPlayer)
                    AttackNoCoolDown()
                until not _G.FastAttackZueszYTB
            end
        end)
    end
end)
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()

function getAllBladeHitsPlayers(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i = 1, #Characters do
        local v = Characters[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and
            Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

function getAllBladeHits(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) <
            Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

local Teleport = Tabs.Player:AddSection("Combat")

local SlidershowFov = Tabs.Player:AddSlider("SlidershowFov", {
    Title = "Cỡ Fov",
    Description = "",
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        _G.Select_Size_Fov = Value
    end
})

SlidershowFov:OnChanged(function(Value)
    _G.Select_Size_Fov = Value
end)
SlidershowFov:SetValue(100)

local ToggleShowFov = Tabs.Player:AddToggle("ToggleShowFov", {
    Title = "Hiện Fov",
    Description = "",
    Default = false
})
ToggleShowFov:OnChanged(function(value)
    _G.Show_Fov = value
end)
Options.ToggleShowFov:SetValue(false)

local ToggleAimBotSkill = Tabs.Player:AddToggle("ToggleAimBotSkill", {
    Title = "Tự Động ngắm Skill",
    Description = "",
    Default = false
})
ToggleAimBotSkill:OnChanged(function(Value)
    _G.Aimbot_Skill_Fov = Value
end)
Options.ToggleAimBotSkill:SetValue(false)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
    while wait() do
        if _G.Aimbot_Skill_Fov then
            pcall(function()
                local MaxDist, Closest = math.huge
                for i, v in pairs(game:GetService("Players"):GetChildren()) do
                    local Head = v.Character:FindFirstChild("HumanoidRootPart")
                    local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera,
                        Head.Position)
                    local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
                    local Dist = (TheirPos - MousePos).Magnitude
                    if Dist < MaxDist and Dist <= _G.Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
                        MaxDist = Dist
                        _G.Aim_Players = v
                    end
                end
            end)
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill_Fov then
                        args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

local Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(0, 244, 0)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = _G.Select_Size_Fov
    Circle.Thickness = 1
    Circle.NumSides = 460
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    if _G.Show_Fov then
        Circle.Visible = true
    else
        Circle.Visible = false
    end
end)

local Mastery = Tabs.Player:AddSection("Khác")

local ToggleNoClip = Tabs.Player:AddToggle("ToggleNoClip", {
    Title = "Xuyên Tường",
    Description = "",
    Default = false
})
ToggleNoClip:OnChanged(function(value)
    _G.LOf = value
end)
Options.ToggleNoClip:SetValue(false)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

local ToggleWalkonWater = Tabs.Player:AddToggle("ToggleWalkonWater", {
    Title = "Đi Trên nước",
    Description = "",
    Default = true
})
ToggleWalkonWater:OnChanged(function(Value)
    _G.WalkonWater = Value
end)
Options.ToggleWalkonWater:SetValue(true)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

local ToggleSpeedRun = Tabs.Player:AddToggle("ToggleSpeedRun", {
    Title = "Chạy Nhanh",
    Description = "",
    Default = true
})
ToggleSpeedRun:OnChanged(function(Value)
    InfAbility = Value
    if Value == false then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end)
Options.ToggleSpeedRun:SetValue(true)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0, 0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 4)}
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0, 0, 0, 0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

local ToggleEnablePvp = Tabs.Player:AddToggle("ToggleEnablePvp", {
    Title = "Tự động bật PVP",
    Description = "",
    Default = false
})
ToggleEnablePvp:OnChanged(function(Value)
    _G.EnabledPvP = Value
end)
Options.ToggleEnablePvp:SetValue(false)

spawn(function()
    pcall(function()
        while wait() do
            if _G.EnabledPvP then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
            end
        end
    end)
end)

local Teleport = Tabs.Teleport:AddSection("Dịch Chuyển Thế Giới")

Tabs.Teleport:AddButton({
    Title = "Sea 1",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.Teleport:AddButton({
    Title = "Sea 2",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.Teleport:AddButton({
    Title = "Sea 3",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

local Mastery = Tabs.Teleport:AddSection("Dịch Chuyển Đảo")

if First_Sea then
    IslandList = {"WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island",
                  "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison", "Magma Village",
                  "Under Water Island", "Fountain City", "Shank Room", "Mob Island"}

elseif Second_Sea then
    IslandList = {"The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", "Green Zone", "Factory",
                  "Colossuim", "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship", "Ice Castle",
                  "Forgotten Island", "Ussop Island", "Mini Sky Island"}

elseif Third_Sea then
    IslandList = {"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island",
                  "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island",
                  "Cocoa Island", "Candy Island", "Tiki Outpost"}
end

local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland", {
    Title = "Chọn Đảo",
    Description = "",
    Values = IslandList,
    Multi = false,
    Default = 1
})

DropdownIsland:SetValue("...")
DropdownIsland:OnChanged(function(Value)
    _G.SelectIsland = Value
end)

Tabs.Teleport:AddButton({
    Title = "Tween",
    Description = "Bay Đến Đảo",
    Callback = function()
        if _G.SelectIsland == "WindMill" then
            toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectIsland == "Marine" then
            toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectIsland == "Middle Town" then
            toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectIsland == "Jungle" then
            toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectIsland == "Pirate Village" then
            toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectIsland == "Desert" then
            toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectIsland == "Snow Island" then
            toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectIsland == "MarineFord" then
            toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectIsland == "Colosseum" then
            toTarget(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectIsland == "Sky Island 1" then
            toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectIsland == "Sky Island 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275,
                872.54248, -1667.55688))
        elseif _G.SelectIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.SelectIsland == "Prison" then
            toTarget(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectIsland == "Magma Village" then
            toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectIsland == "Fountain City" then
            toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectIsland == "Shank Room" then
            toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectIsland == "Mob Island" then
            toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectIsland == "The Cafe" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -281.93707275390625, 306.130615234375, 609.280029296875))
            wait(0.5)
            Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.SelectIsland == "Frist Spot" then
            toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectIsland == "Dark Area" then
            toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectIsland == "Flamingo Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -281.93707275390625, 306.130615234375, 609.280029296875))
        elseif _G.SelectIsland == "Flamingo Room" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                2284.912109375, 15.152034759521484, 905.48291015625))
        elseif _G.SelectIsland == "Green Zone" then
            toTarget(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectIsland == "Factory" then
            toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectIsland == "Colossuim" then
            toTarget(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.SelectIsland == "Zombie Island" then
            toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectIsland == "Two Snow Mountain" then
            toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectIsland == "Punk Hazard" then
            toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectIsland == "Cursed Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectIsland == "Ice Castle" then
            toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectIsland == "Forgotten Island" then
            toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectIsland == "Ussop Island" then
            toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectIsland == "Mini Sky Island" then
            Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.SelectIsland == "Great Tree" then
            toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectIsland == "Castle On The Sea" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -5075.50927734375, 314.5155029296875, -3150.0224609375))
        elseif _G.SelectIsland == "MiniSky" then
            Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectIsland == "Port Town" then
            toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.SelectIsland == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                5753.5478515625, 610.7880859375, -282.33172607421875))
        elseif _G.SelectIsland == "Floating Turtle" then
            toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectIsland == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -12468.5380859375, 375.0094299316406, -7554.62548828125))
        elseif _G.SelectIsland == "Haunted Castle" then
            toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectIsland == "Ice Cream Island" then
            toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectIsland == "Peanut Island" then
            toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectIsland == "Cake Island" then
            toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.SelectIsland == "Cocoa Island" then
            toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.SelectIsland == "Candy Island" then
            toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.SelectIsland == "Tiki Outpost" then
            toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        end
    end
})

Tabs.Teleport:AddButton({
    Title = "Dừng bay",
    Description = "",
    Callback = function()
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
})

--------------------------------------------------------------------------------------------------------------------------------------------
-- Fruit

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i, v in next, Remote_GetFruits do
    table.insert(Table_DevilFruitSniper, v.Name)
    if v.OnSale then
        table.insert(ShopDevilSell, v.Name)
    end
end
_G.SelectFruit = "Leopard-Leopard"

local DropdownFruit = Tabs.Fruit:AddDropdown("DropdownFruit", {
    Title = "Chọn Trái Ác Quỷ",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1
})

DropdownFruit:SetValue("...")

DropdownFruit:OnChanged(function(Value)
    _G.SelectFruit = Value
end)

local ToggleFruit = Tabs.Fruit:AddToggle("ToggleFruit", {
    Title = "Mua Trái ác quỷ",
    Description = "",
    Default = false
})
ToggleFruit:OnChanged(function(Value)
    _G.AutoBuyFruitSniper = Value
end)
Options.ToggleFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBuyFruitSniper then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit",
                    false)
            end
        end
    end)
end)

local ToggleStore = Tabs.Fruit:AddToggle("ToggleStore", {
    Title = "Cất Trái Ác Quỷ",
    Description = "",
    Default = false
})
ToggleStore:OnChanged(function(Value)
    _G.AutoStoreFruit = Value
end)
Options.ToggleStore:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rocket-Rocket",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Falcon",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("alcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ghost-Ghost",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Diamond-Diamond", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                "Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Barrier-Barrier", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                "Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buddha", game:GetService(
                            "Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spider-Spider",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Phoenix",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Pain-Pain",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Gravity-Gravity", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                "Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Control-Control", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                "Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Soul-Soul",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                                "Leopard-Leopard", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Leopard Fruit"))
                        end
                    end
                end
            end)
        end
        wait(0.3)
    end
end)

local ToggleRandomFruit = Tabs.Fruit:AddToggle("ToggleRandomFruit", {
    Title = "Random Trái Ác Quỷ",
    Description = "",
    Default = false
})
ToggleRandomFruit:OnChanged(function(Value)
    _G.Random_Auto = Value
end)
Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end
    end)
end)

local ToggleCollect = Tabs.Fruit:AddToggle("ToggleCollect", {
    Title = "Nhặt Trái Ác Quỷ",
    Description = "",
    Default = false
})
ToggleCollect:OnChanged(function(Value)
    _G.Tweenfruit = Value
end)
Options.ToggleCollect:SetValue(false)

spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
    end
end)

local Mastery = Tabs.Fruit:AddSection("Esp")

local ToggleEspPlayer = Tabs.Fruit:AddToggle("ToggleEspPlayer", {
    Title = "Định vị người chơi",
    Description = "",
    Default = false
})

ToggleEspPlayer:OnChanged(function(Value)
    ESPPlayer = Value
    UpdatePlayerChams()
end)
Options.ToggleEspPlayer:SetValue(false)

local ToggleEspFruit = Tabs.Fruit:AddToggle("ToggleEspFruit", {
    Title = "Định vị Trái",
    Description = "",
    Default = false
})

ToggleEspFruit:OnChanged(function(Value)
    DevilFruitESP = Value
    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
Options.ToggleEspFruit:SetValue(false)

local ToggleEspIsland = Tabs.Fruit:AddToggle("ToggleEspIsland", {
    Title = "Định vị đảo",
    Description = "",
    Default = false
})

ToggleEspIsland:OnChanged(function(Value)
    IslandESP = Value
    while IslandESP do
        wait()
        UpdateIslandESP()
    end
end)
Options.ToggleEspIsland:SetValue(false)

local ToggleEspFlower = Tabs.Fruit:AddToggle("ToggleEspFlower", {
    Title = "Định vị Hoa",
    Description = "",
    Default = false
})

ToggleEspFlower:OnChanged(function(Value)
    FlowerESP = Value
    UpdateFlowerChams()
end)
Options.ToggleEspFlower:SetValue(false)

spawn(function()
    while wait(2) do
        if FlowerESP then
            UpdateFlowerChams()
        end
        if DevilFruitESP then
            UpdateDevilChams()
        end
        if ChestESP then
            UpdateChestChams()
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)

local Chips = {"Flame", "Ice", "Quake", "Light", "Dark", "Spider", "Rumble", "Magma", "Buddha", "Sand", "Phoenix",
               "Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Chọn Chip",
    Description = "",
    Values = Chips,
    Multi = false,
    Default = 1
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {
    Title = "Mua Chip",
    Description = "",
    Default = false
})
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local args = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = SelectChip
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)

local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {
    Title = "Vào Raid",
    Description = "",
    Default = false
})
ToggleStart:OnChanged(function(Value)
    _G.Auto_Raid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main
                                                  .ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main
                                                  .ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {
    Title = "Giết Quái",
    Description = "",
    Default = false
})
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {
    Title = "Qua Đảo",
    Description = "",
    Default = false
})
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame *
                                  CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *
                                  CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *
                                  CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *
                                  CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *
                                  CFrame.new(0, 70, 100))
                    end
                end
            end)
        end
    end
end)

local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {
    Title = "Thức tỉnh V2",
    Description = "",
    Default = false
})
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)

local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {
    Title = "Lấy Trái Ít Bely",
    Description = "",
    Default = false
})
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Autofruit then

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rocket-Rocket"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spin-Spin"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Chop-Chop"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spring-Spring"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Bomb-Bomb"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Smoke-Smoke"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Spike-Spike"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Flame-Flame"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Falcon-Falcon"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ice-Ice"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Sand-Sand"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Dark-Dark"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Ghost-Ghost"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Diamond-Diamond"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Light-Light"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Rubber-Rubber"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                local args = {
                    [1] = "LoadFruit",
                    [2] = "Barrier-Barrier"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)

if Second_Sea then
    Tabs.Raid:AddButton({
        Title = "Chổ Tập Kích",
        Description = "",
        Callback = function()
            Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end
    })
elseif Third_Sea then
    Tabs.Raid:AddButton({
        Title = "Chổ Tập Kích",
        Description = "",
        Callback = function()
            Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238,
                4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
    })
end

local Mastery = Tabs.Raid:AddSection("Law Raid")

local ToggleLaw = Tabs.Raid:AddToggle("ToggleLaw", {
    Title = "Tự mua chip + Đánh boss law",
    Description = "",
    Default = false
})

ToggleLaw:OnChanged(function(Value)
    Auto_Law = Value
end)
Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and
                    not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and
                    not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                    not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip",
                        "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip",
                        "2")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.4) do
            if Auto_Law then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                    not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main
                                              .ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                    -- Click
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Law == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)

Tabs.Race:AddButton({
    Title = "Đền Thờ",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875,
            14895.3017578125, 102.62469482421875))
    end
})

Tabs.Race:AddButton({
    Title = "Cần Gạt",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875,
            14895.3017578125, 102.62469482421875))
        wait(0.5)
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})

Tabs.Race:AddButton({
    Title = "Npc Mua Bánh Răng",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875,
            14895.3017578125, 102.62469482421875))
        wait(0.5)
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})

local Mastery = Tabs.Race:AddSection("Auto Race")
Tabs.Race:AddButton({
    Title = "Tộc Của bạn",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875,
            14895.3017578125, 102.62469482421875))
        wait(0.5)
        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
            Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
            Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
            Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
            Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
            Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
            Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
        end
    end
})

local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {
    Title = "Hoàn thành Tộc quỷ + người",
    Description = "",
    Default = false
})
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)

local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {
    Title = "Tụ Động hoàn thành ải",
    Description = "",
    Default = false
})
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >
                            0 then
                            pcall(function()
                                repeat
                                    wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    for i, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name == "snowisland_Cylinder.081" then
                            BTPZ(v.CFrame * CFrame.new(0, 0, 0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    for i, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if v.Name == "HumanoidRootPart" then
                            Tween(v.CFrame * Pos)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Melee" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Blox Fruit" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)

                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Sword" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(0.5)
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Gun" then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >
                            0 then
                            pcall(function()
                                repeat
                                    wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "StartPoint" then
                            Tween(v.CFrame * CFrame.new(0, 10, 0))
                        end
                    end
                end
            end
        end
    end)
end)

local Mastery = Tabs.Race:AddSection("Tự Động Luyện TỘc")

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {
    Title = "Cày + Bật Tộc",
    Description = "",
    Default = false
})
ToggleAutoAcientQuest:OnChanged(function(Value)
    AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)
local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    AutoFarmAcient = false
                    toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or
                            v.Name == "Candy Rebel" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                bringmob = true
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                                bringmob = false
                            end
                        end
                    end
                else
                    toTarget(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmAcient then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
            end
        end)
    end
end)

local ToggleRandomBone = Tabs.Shop:AddToggle("ToggleRandomBone", {
    Title = "Đổi xương",
    Description = "",
    Default = false
})
ToggleRandomBone:OnChanged(function(Value)
    _G.AutoRandomBone = Value
end)
Options.ToggleRandomBone:SetValue(false)

spawn(function()
    while wait(0.0000000000000000000001) do
        if _G.AutoRandomBone then
            local args = {
                [1] = "Bones",
                [2] = "Buy",
                [3] = 1,
                [4] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

Tabs.Shop:AddButton({
    Title = "Mua nhảy liên tục",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
})

Tabs.Shop:AddButton({
    Title = "Mua haki vũ trang",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

Tabs.Shop:AddButton({
    Title = "Mua dịch chuyển (soru)",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})

Tabs.Shop:AddButton({
    Title = "Mua haki quan sát",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
})

local Mastery = Tabs.Shop:AddSection("Fighting Styles")

Tabs.Shop:AddButton({
    Title = "Mua black leg",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Tabs.Shop:AddButton({
    Title = "Mua electro",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua fishman karate",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua dragon claw",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua superhuman",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})
Tabs.Shop:AddButton({
    Title = "Death Step",
    Description = "Mua Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua sharkman karate",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua electric claw",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua dragon talon",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})
Tabs.Shop:AddButton({
    Title = "Mua godhuman",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

local Mastery = Tabs.Shop:AddSection("Vật Phẩm Khác")

Tabs.Shop:AddButton({
    Title = "Hoàn trả chỉ số",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})
Tabs.Shop:AddButton({
    Title = "Đổi tộc",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

Tabs.Misc:AddButton({
    Title = "tham gia lại máy chủ",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

Tabs.Misc:AddButton({
    Title = "Đổi máy chủ",
    Description = "",
    Callback = function()
        Hop()
    end
})

function Hop()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hoangnorpscripter/chiyeuminthu/main/uihopsever.lua"))()
    wait(6)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID ..
                                                                '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID ..
                                                                '/servers/Public?sortOrder=Asc&limit=100&cursor=' ..
                                                                foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService")
                            :TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

local Mastery = Tabs.Misc:AddSection("Đội")

Tabs.Misc:AddButton({
    Title = "Vào hải tặc",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})

Tabs.Misc:AddButton({
    Title = "Vào hải quân",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})

local Mastery = Tabs.Misc:AddSection("Mở Ui")

Tabs.Misc:AddButton({
    Title = "Mở cửa hàng trái",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Mở bảng haki",
    Description = "",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Mở bảng danh hiệu",
    Description = "",
    Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Mở bảng thức tỉnh chiêu",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
})

local Mastery = Tabs.Misc:AddSection("Khác")

local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {
    Title = "Tự động vào lại khi bị văng",
    Description = "",
    Default = true
})
ToggleRejoin:OnChanged(function(Value)
    _G.AutoRejoin = Value
end)

Options.ToggleRejoin:SetValue(true)
spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(
                child)
                if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and
                    child.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)

local Mastery = Tabs.Misc:AddSection("Kaitun Cap")

Tabs.Misc:AddButton({
    Title = "Hiện thị vật phẩm",
    Description = "",
    Callback = function()
        do
            local ui = game:GetService("CoreGui").RobloxGui.Modules.Profile:FindFirstChild("UILibrary")
            if ui then
                ui:Destroy()
            end
        end
        local UserInputService = game:GetService("UserInputService")
        local TweenService = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()

        do
            local ui = game:GetService("Lighting"):FindFirstChild("Blur")
            if ui then
                ui:Destroy()
            end
        end

        local Blur = Instance.new("BlurEffect")

        TweenService:Create(Blur, TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
            Size = 50
        }):Play()
        Blur.Parent = game.Lighting

        local UIStroke = Instance.new("UIStroke")
        local UICorner = Instance.new("UICorner")

        local ScreenGui = Instance.new("ScreenGui")
        local ImageButton = Instance.new("ImageButton")
        local RobloxButton = Enum.ButtonStyle.RobloxButton

        ScreenGui.Parent = game.CoreGui
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
        local Items = {}
        local RaityLevel = {"Mythical", "Legendary", "Rare", "Uncommon", "Common"}
        local RaityColor = {
            ["Common"] = Color3.fromRGB(179, 179, 179),
            ["Uncommon"] = Color3.fromRGB(92, 140, 211),
            ["Rare"] = Color3.fromRGB(140, 82, 255),
            ["Legendary"] = Color3.fromRGB(213, 43, 228),
            ["Mythical"] = Color3.fromRGB(238, 47, 50)
        }
        function GetRaity(color)
            for k, v in pairs(RaityColor) do
                if v == color then
                    return k
                end
            end
        end

        for k, v in pairs(Inventory) do
            Items[v.Name] = v
        end

        local total = #getupvalue(cac.UpdateRender, 4)
        local rac = {}
        local allitem = {}
        local total2 = 0
        while total2 < total do
            local i = 0
            while i < 25000 and total2 < total do
                game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame
                    .CanvasPosition = Vector2.new(0, i)
                for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content
                                      .ScrollingFrame.Frame:GetChildren()) do
                    if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible == true then
                        local vaihuhu = GetRaity(v.Background.BackgroundColor3)
                        if vaihuhu then
                            if not allitem[vaihuhu] then
                                allitem[vaihuhu] = {}
                            end
                            table.insert(allitem[vaihuhu], v:Clone())
                        end
                        total2 = total2 + 1
                        rac[v.ItemName.Text] = true
                    end
                end
                i = i + 20
            end
            wait()
        end
        function GetXY(vec)
            return vec * 100
        end

        local tvk = Instance.new("UIListLayout")
        tvk.FillDirection = Enum.FillDirection.Vertical
        tvk.SortOrder = 2
        tvk.Padding = UDim.new(0, 10)

        local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        Left.BackgroundTransparency = 1
        Left.Size = UDim2.new(.5, 0, 1, 0)
        tvk.Parent = Left

        local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        Right.BackgroundTransparency = 1
        Right.Size = UDim2.new(.5, 0, 1, 0)
        Right.Position = UDim2.new(.6, 0, 0, 0)
        tvk:Clone().Parent = Right
        for k, v in pairs(allitem) do
            local cac = Instance.new("Frame", Left)
            cac.BackgroundTransparency = 1
            cac.Size = UDim2.new(1, 0, 0, 0)
            cac.LayoutOrder = table.find(RaityLevel, k)

            local cac2 = Instance.new("Frame", Right)
            cac2.BackgroundTransparency = 1
            cac2.Size = UDim2.new(1, 0, 0, 0)
            cac2.LayoutOrder = table.find(RaityLevel, k)

            local tvk = Instance.new("UIGridLayout", cac)
            tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
            tvk.CellSize = UDim2.new(0, 70, 0, 70)
            tvk.FillDirectionMaxCells = 100
            tvk.FillDirection = Enum.FillDirection.Horizontal

            local ccc = tvk:Clone()
            ccc.Parent = cac2
            for k, v in pairs(v) do
                if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
                    if v.ItemLine2.Text ~= "Accessory" then
                        local bucac = v.ItemName:Clone()
                        bucac.BackgroundTransparency = 1
                        bucac.TextSize = 10
                        bucac.TextXAlignment = 2
                        bucac.TextYAlignment = 2
                        bucac.ZIndex = 5
                        bucac.Text = Items[v.ItemName.Text].Mastery
                        bucac.Size = UDim2.new(.5, 0, .5, 0)
                        bucac.Position = UDim2.new(.5, 0, .5, 0)
                        bucac.Parent = v
                    end
                    v.Parent = cac
                elseif v.ItemLine2.Text == "Blox Fruit" then
                    v.Parent = cac2
                end
            end
            cac.AutomaticSize = 2
            cac2.AutomaticSize = 2
        end
        local ListHuhu = {
            ["Superhuman"] = Vector2.new(3, 2),
            ["DeathStep"] = Vector2.new(4, 3),
            ["ElectricClaw"] = Vector2.new(2, 0),
            ["SharkmanKarate"] = Vector2.new(0, 0),
            ["DragonTalon"] = Vector2.new(1, 5)
        }
        local MeleeG = Instance.new("Frame", Left)
        MeleeG.BackgroundTransparency = 1
        MeleeG.Size = UDim2.new(1, 0, 0, 0)
        MeleeG.LayoutOrder = table.find(RaityLevel, k)
        MeleeG.AutomaticSize = 2
        MeleeG.LayoutOrder = 100
        local tvk = Instance.new("UIGridLayout", MeleeG)
        tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
        tvk.CellSize = UDim2.new(0, 70, 0, 70)
        tvk.FillDirectionMaxCells = 100
        tvk.FillDirection = Enum.FillDirection.Horizontal

        local cac = {"Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman"}
        for k, v in pairs(cac) do
            if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
                local huhu = Instance.new("ImageLabel", MeleeG)
                huhu.Image = "rbxassetid://16137232629"
                huhu.ImageRectSize = Vector2.new(100, 100)
                huhu.ImageRectOffset = ListHuhu[v] * 100
            end
        end
        function formatNumber(v)
            return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
        end

        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.AnchorPoint = Vector2.new(0.5, 0.5)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 1120, 0, 700)

        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.AnchorPoint = Vector2.new(0.5, 0.5)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 1150, 0, 750)
        local Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
        Name.Name = "Name"
        Name.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
        Name.Position = UDim2.new(0, 0, -1.5, 0)
        Name.Size = UDim2.new(1, 0, 1, 0)
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name.Text = game.Players.LocalPlayer.Name

        local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
        Fragments.Name = "FragmentsCheck"
        Fragments.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
        Fragments.Position = UDim2.new(0, 0, -0.75, 0)
        Fragments.Size = UDim2.new(1, 0, 1, 0)
        Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        local args = {
            [1] = "getAwakenedAbilities"
        }

        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.48, 10, 0.908, 2)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Size = UDim2.new(1, 0, 0.22, 0)

        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.RaceEnergy.Visible = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled.Visible = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
        end)
        for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
            if v:IsA("ImageButton") then
                v:Destroy()
            end
        end
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
        end)
    end
})

local Mastery = Tabs.Misc:AddSection("Ngày")

Tabs.Misc:AddButton({
    Title = "Xóa xương mù",
    Description = "",
    Callback = function()
        NoFog()
    end
})
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

if First_Sea or Second_Sea then
    local Mastery = Tabs.Hop:AddSection("Sea 3 làm ơn!!!")
end

if Third_Sea then
    local ToggleFindMoon = Tabs.Hop:AddToggle("ToggleFindMoon", {
        Title = "Tìm trăng tròn",
        Description = "",
        Default = false
    })
    ToggleFindMoon:OnChanged(function(Value)
        _G.AutoFindMoon = Value
    end)
    Options.ToggleFindMoon:SetValue(false)

    spawn(function()
        while wait() do
            if _G.AutoFindMoon then
                if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=16137232629" or
                    game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=16137232629" then
                    wait(2.0)
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=16137232629" then
                    
                    Hop()
                    Fluent:Notify({
                        Title = "YTB: Cat|Quy Hub",
                        Content = "Turn Off Find Full Moon...",
                        SubContent = "", -- Optional
                        Duration = 5 -- Set to nil to make the notification not disappear
                    })
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=16137232629" then
                    
                    Hop()
                    Fluent:Notify({
                        Title = "YTB: Cat|Quy Hub",
                        Content = "Hop...",
                        SubContent = "", -- Optional
                        Duration = 5 -- Set to nil to make the notification not disappear
                    })
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=16137232629" then
                    
                    Hop()
                    Fluent:Notify({
                        Title = "YTB: Cat|Quy Hub",
                        Content = "Hop...",
                        SubContent = "", -- Optional
                        Duration = 5 -- Set to nil to make the notification not disappear
                    })
                else
                    
                    Hop()
                end
            end
        end
    end)

    local ToggleMirageIsland = Tabs.Hop:AddToggle("ToggleMirageIsland", {
        Title = "Tìm đảo bí ẩn",
        Description = "",
        Default = false
    })
    ToggleMirageIsland:OnChanged(function(Value)
        _G.FindMirageIsland = Value
    end)
    Options.ToggleMirageIsland:SetValue(false)

    spawn(function()
        while wait() do
            if _G.FindMirageIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or
                    game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    if HighestPointRealCFrame and
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude >
                        10 then
                        Tween(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                    end
                elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or
                    not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    Hop()
                end
            end
        end
    end)
end

local SettingFarm = Tabs.Setting:AddSection("Farming")

local ToggleBringMob = Tabs.Setting:AddToggle("ToggleBringMob", {
    Title = "Gom Quái",
    Description = "",
    Default = true
})
ToggleBringMob:OnChanged(function(Value)
    _G.BringMob = Value
end)
Options.ToggleBringMob:SetValue(true)
task.spawn(function()
    while task.wait() do
        if _G.BringMob and bringmob then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == MonFarm and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                        350 then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = FarmPos
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while true do
        wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
            return true
        end
        return false
    end
end

local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {
    Title = "Di Chuyển Dạng Reset",
    Description = "",
    Default = false
})
ToggleBypassTP:OnChanged(function(Value)
    BypassTP = Value
end)
Options.ToggleBypassTP:SetValue(false)

local ToggleRemove = Tabs.Setting:AddToggle("ToggleRemove", {
    Title = "Ẩn Dame Đánh Quái",
    Description = "",
    Default = true
})
ToggleRemove:OnChanged(function(Value)
    _G.RemoveDameText = Value
end)
Options.ToggleRemove:SetValue(true)

spawn(function()
    while wait() do
        if _G.RemoveDameText then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)

local ToggleRemoveNotify = Tabs.Setting:AddToggle("ToggleRemoveNotify", {
    Title = "Xoá Hết Thông báo",
    Description = "",
    Default = false
})
ToggleRemoveNotify:OnChanged(function(Value)
    RemoveNotify = Value
end)
Options.ToggleRemoveNotify:SetValue(false)

spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)

local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {
    Title = "Màn hình Trắng (giảm lag)",
    Description = "",
    Default = false
})
ToggleWhite:OnChanged(function(Value)
    _G.WhiteScreen = Value
    if _G.WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif _G.WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)
Options.ToggleWhite:SetValue(false)

local SKill = Tabs.Setting:AddSection("Skill Mastery")
local ToggleZ = Tabs.Setting:AddToggle("ToggleZ", {
    Title = "Kĩ Năng Z",
    Description = "",
    Default = true
})
ToggleZ:OnChanged(function(Value)
    SkillZ = Value
end)
Options.ToggleZ:SetValue(true)

local ToggleX = Tabs.Setting:AddToggle("ToggleX", {
    Title = "Kĩ Năng X",
    Description = "",
    Default = true
})
ToggleX:OnChanged(function(Value)
    SkillX = Value
end)
Options.ToggleX:SetValue(true)

local ToggleC = Tabs.Setting:AddToggle("ToggleC", {
    Title = "Kĩ Năng C",
    Description = "",
    Default = true
})
ToggleC:OnChanged(function(Value)
    SkillC = Value
end)
Options.ToggleC:SetValue(true)

local ToggleV = Tabs.Setting:AddToggle("ToggleV", {
    Title = "Kĩ Năng V",
    Description = "",
    Default = true
})
ToggleV:OnChanged(function(Value)
    SkillV = Value
end)
Options.ToggleV:SetValue(true)

local ToggleF = Tabs.Setting:AddToggle("ToggleF", {
    Title = "Kĩ Năng F",
    Description = "",
    Default = false
})
ToggleF:OnChanged(function(Value)
    SkillF = Value
end)
Options.ToggleF:SetValue(false)

local Pos = Tabs.Setting:AddSection("Khoảng Cách Farm")

local SliderPosX = Tabs.Setting:AddSlider("SliderPosX", {
    Title = "Hướng X",
    Description = "",
    Default = 0,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
        posX = Value
    end
})
SliderPosX:OnChanged(function(Value)
    posX = Value
end)
SliderPosX:SetValue(0)

local SliderPosY = Tabs.Setting:AddSlider("SliderPosY", {
    Title = "Hướng Y",
    Description = "",
    Default = 30,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
        posY = Value
    end
})
SliderPosY:OnChanged(function(Value)
    posY = Value
end)
SliderPosY:SetValue(30)


local SliderPosZ = Tabs.Setting:AddSlider("SliderPosZ", {
    Title = "Hướng Z",
    Description = "",
    Default = 0,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
        posZ = Value
    end
})
SliderPosZ:OnChanged(function(Value)
    posZ = Value
end)
SliderPosZ:SetValue(0)

local Input = Tabs.Hop:AddInput("Input", {
    Title = "Join JobId",
    Description = "jobId",
    Default = "Default",
    Placeholder = "pls input JobId",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
})

Input:OnChanged(function()
    print("Input", Input.Value)
    local a = '"' .. Input.Value .. '"'
    if First_Sea then
        game:GetService("TeleportService"):TeleportToPlaceInstance(2753915549, a, game:GetService("Players").LocalPlayer)
    elseif Second_Sea then
        game:GetService("TeleportService"):TeleportToPlaceInstance(4442272183, a, game:GetService("Players").LocalPlayer)
    elseif Third_Sea then     
        game:GetService("TeleportService"):TeleportToPlaceInstance(7449423635, a, game:GetService("Players").LocalPlayer)           
    end
end)

local Farmchet = Tabs.Misc:AddButton({
    Title = "Chest Farm",
    Description = "this is other Chest Farm Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hoangnorpscripter/chiyeuminthu/main/lonmechest.lua"))()
    end
})

local ulr = Tabs.Webhook:AddInput("Input", {
    Title = "Webhook Url",
    Description = "url",
    Default = "Default",
    Placeholder = "Input Url webhook here",
    Numeric = false, -- Only allows numbers
    Finished = false,
    
})
local Kaitun = Tabs.Kaitun:AddToggle("Kaitun", 
{
    Title = "Kaitun Mode", 
    Description = "Bro this is demo",
    Default = false
})

Kaitun:OnChanged(function(start)
    _G.Start_Kaitun = start
    kaitun()
end)

-- kaitun

function kaitun()

    -- Admin Config --

    local Level_Max = 2450

    ------------------

    _G.Bring_Mob = false
    if _G.Config then
        if _G.Settings.Main["Auto Farm"] then _G.StartFarm = true end
        if _G.Settings.Main["Auto Saber"] then _G.Start_Saber = true end
        if _G.Settings.Main["Auto Pole"] then _G.Start_Pole = true end
        if _G.Settings.Main["Auto New World"] then
            _G.Auto_New_World = true
        end
        if _G.Settings.Main["Auto Bartilo Quest"] then
            _G.Auto_Bartilo_Quest = true
        end
        if _G.Settings.Main["Auto Rengoku"] then _G.AutoRengoku = true end
        if _G.Settings.Main["Auto Go To Fruit"] then _G.Grab_Fruit = true end
        if _G.Settings.Main["Store Fruit"] then _G.StoreFruit = true end
        if _G.Settings.Main["Open Flamingo Access"] then
            _G.Open_Flamingo_Access = true
        end
        if _G.Settings.Main["Midnight Blade"] then
            _G.Midnight_Blade = true
        end
        if _G.Settings.Main["Auto Factory Farm"] then
            _G.Auto_Factory_Farm = true
        end
        if _G.Settings.Main["Thire World"] then
            _G.Start_GoTo_Thire_World = true
        end

        if _G.Settings.Main["Auto Yama"] then _G.Auto_Yama = true end

        if _G.Settings.Main["Auto Tushita"] then _G.Auto_Tushita = true end
        if _G.Settings.Main["Auto ElectricClaw"] then
            _G.Auto_Electric_Claw = true
        end
        if _G.Settings.Main["Auto Super Human"] then
            _G.Auto_Superhuman = true
        end
        if _G.Settings.Main["Auto Farm Mastery Sword All"] then
            _G.Auto_Farm_Mastery_Sword = true
        end
        if _G.Settings.Main["Buy Fruit"] then
            _G.Auto_Buy_Devil_Fruit = true
        end
        if _G.Settings.Main["Auto Soul Guitar"] then
            _G.Auto_Soul_Guitar = true
        end
    end

    if game.PlaceId == 2753915549 then
        W1 = true
    elseif game.PlaceId == 4442272183 then
        W2 = true
    elseif game.PlaceId == 7449423635 then
        W3 = true
    end

    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild(
        "ChooseTeam") then
        repeat
            wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild(
                "Main").ChooseTeam.Visible == true then
                if _G.Team == "Pirate" then
                    for i, v in pairs(getconnections(
                                          game:GetService("Players").LocalPlayer
                                              .PlayerGui.Main.ChooseTeam
                                              .Container.Pirates.Frame
                                              .ViewportFrame.TextButton
                                              .Activated)) do
                        v.Function()
                    end
                elseif _G.Team == "Marine" then
                    for i, v in pairs(getconnections(
                                          game:GetService("Players").LocalPlayer
                                              .PlayerGui.Main.ChooseTeam
                                              .Container.Marines.Frame
                                              .ViewportFrame.TextButton
                                              .Activated)) do
                        v.Function()
                    end
                else
                    for i, v in pairs(getconnections(
                                          game:GetService("Players").LocalPlayer
                                              .PlayerGui.Main.ChooseTeam
                                              .Container.Pirates.Frame
                                              .ViewportFrame.TextButton
                                              .Activated)) do
                        v.Function()
                    end
                end
            end
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
    end

    local EnemySpawns = Instance.new("Folder", workspace)
    EnemySpawns.Name = "EnemySpawns"

    for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
        if v:IsA("Part") then
            local EnemySpawnsX2 = v:Clone()
            local result = string.gsub(v.Name, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")
            EnemySpawnsX2.Name = result4
            EnemySpawnsX2.Parent = workspace.EnemySpawns
            EnemySpawnsX2.Anchored = true
        end
    end
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
            print(v.HumanoidRootPart.Parent)
            local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
            local result = string.gsub(v.Name, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")

            print(result4)
            EnemySpawnsX2.Name = result4
            EnemySpawnsX2.Parent = workspace.EnemySpawns
            EnemySpawnsX2.Anchored = true
        end
    end
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
            local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
            local result = string.gsub(v.Name, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")

            print(result4)
            EnemySpawnsX2.Name = result4
            EnemySpawnsX2.Parent = workspace.EnemySpawns
            EnemySpawnsX2.Anchored = true
        end
    end

    if game:IsLoaded() then
        pcall(function()
            repeat
                wait()
                game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
                game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
            until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild(
                "Death") or
                not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild(
                    "Respawn")
        end)
    end

    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            task.wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent =
                game.Players.LocalPlayer.Backpack
            task.wait(.1)
            _G.NotAutoEquip = false
        end
    end

    ------------ // AutoUpdate \\ ------------

    local function QuestCheck()
        local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
        if Lvl >= 1 and Lvl <= 9 then
            if tostring(game.Players.LocalPlayer.Team) == "Marines" then
                MobName = "Trainee [Lv. 5]"
                QuestName = "MarineQuest"
                QuestLevel = 1
                Mon = "Trainee"
                NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585,
                                         -0.744724929, -3.97967455e-08,
                                         -0.667371571, 4.32403588e-08, 1,
                                         -1.07884304e-07, 0.667371571,
                                         -1.09201515e-07, -0.744724929)
            elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                MobName = "Bandit [Lv. 5]"
                Mon = "Bandit"
                QuestName = "BanditQuest1"
                QuestLevel = 1
                NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162,
                                         -0.95466274, 7.29721794e-09,
                                         0.297689587, 1.05190106e-08, 1,
                                         9.22064114e-09, -0.297689587,
                                         1.19340022e-08, -0.95466274)
            end
            return {
                [1] = QuestLevel,
                [2] = NPCPosition,
                [3] = MobName,
                [4] = QuestName,
                [5] = LevelRequire,
                [6] = Mon,
                [7] = MobCFrame
            }
        end

        if Lvl >= 210 and Lvl <= 249 then
            MobName = "Dangerous Prisoner [Lv. 210]"
            QuestName = "PrisonerQuest"
            QuestLevel = 2
            Mon = "Dangerous Prisoner"
            NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514,
                                     -0.0894274712, -5.00292918e-09,
                                     -0.995993316, 1.60817859e-09, 1,
                                     -5.16744869e-09, 0.995993316,
                                     -2.06384709e-09, -0.0894274712)
            local matchingCFrames = {}
            local result = string.gsub(MobName, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")

            for i, v in pairs(game.workspace.EnemySpawns:GetChildren()) do
                if v.Name == result4 then
                    table.insert(matchingCFrames, v.CFrame)
                end
                MobCFrame = matchingCFrames
            end
            return {
                [1] = QuestLevel,
                [2] = NPCPosition,
                [3] = MobName,
                [4] = QuestName,
                [5] = LevelRequire,
                [6] = Mon,
                [7] = MobCFrame
            }
        end

        -- game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        local GuideModule = require(
                                game:GetService("ReplicatedStorage").GuideModule)
        local Quests = require(game:GetService("ReplicatedStorage").Quests)
        for i, v in pairs(GuideModule["Data"]["NPCList"]) do
            for i1, v1 in pairs(v["Levels"]) do
                if Lvl >= v1 then
                    if not LevelRequire then LevelRequire = 0 end
                    if v1 > LevelRequire then
                        NPCPosition = i["CFrame"]
                        QuestLevel = i1
                        LevelRequire = v1
                    end
                    if #v["Levels"] == 3 and QuestLevel == 3 then
                        NPCPosition = i["CFrame"]
                        QuestLevel = 2
                        LevelRequire = v["Levels"][2]
                    end
                end
            end
        end
        if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
            MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504,
                                   0.893533468, 3.95251609e-09, 0.448996574,
                                   -2.34327455e-08, 1, 3.78297464e-08,
                                   -0.448996574, -4.43233645e-08, 0.893533468)
            if _G.StartFarm and (MobCFrame.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                return
            end
        end

        if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
            MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504,
                                   0.893533468, 3.95251609e-09, 0.448996574,
                                   -2.34327455e-08, 1, 3.78297464e-08,
                                   -0.448996574, -4.43233645e-08, 0.893533468)
            if _G.StartFarm and (MobCFrame.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                return
            end
        end
        for i, v in pairs(Quests) do
            for i1, v1 in pairs(v) do
                if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                    QuestName = i
                    for i2, v2 in pairs(v1["Task"]) do
                        MobName = i2
                        Mon =
                            string.split(i2, " [Lv. " .. v1["LevelReq"] .. "]")[1]
                    end
                end
            end
        end
        if QuestName == "MarineQuest2" then
            QuestName = "MarineQuest2"
            QuestLevel = 1
            MobName = "Chief Petty Officer [Lv. 120]"
            Mon = "Chief Petty Officer"
            LevelRequire = 120
        elseif QuestName == "ImpelQuest" then
            QuestName = "PrisonerQuest"
            QuestLevel = 2
            MobName = "Dangerous Prisoner [Lv. 190]"
            Mon = "Dangerous Prisoner"
            LevelRequire = 210
            NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594,
                                     0.0175017118, 0, 0.999846935, 0, 1, 0,
                                     -0.999846935, 0, 0.0175017118)
        elseif QuestName == "SkyExp1Quest" then
            if QuestLevel == 1 then
                NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643,
                                         0.996191859, -0, -0.0871884301, 0, 1,
                                         -0, 0.0871884301, 0, 0.996191859)
            elseif QuestLevel == 2 then
                NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196,
                                         -0.422592998, 0, 0.906319618, 0, 1, 0,
                                         -0.906319618, 0, -0.422592998)
            end
        elseif QuestName == "Area2Quest" and QuestLevel == 2 then
            QuestName = "Area2Quest"
            QuestLevel = 1
            MobName = "Swan Pirate [Lv. 775]"
            Mon = "Swan Pirate"
            LevelRequire = 775
        end
        MobName = MobName:sub(1, #MobName)
        if not MobName:find("Lv") then
            for i, v in
                pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                MonLV = string.match(v.Name, "%d+")
                if v.Name:find(MobName) and #v.Name > #MobName and
                    tonumber(MonLV) <= Lvl + 50 then
                    MobName = v.Name
                end
            end
        end
        if not MobName:find("Lv") then
            for i, v in
                pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                MonLV = string.match(v.Name, "%d+")
                if v.Name:find(MobName) and #v.Name > #MobName and
                    tonumber(MonLV) <= Lvl + 50 then
                    MobName = v.Name
                    Mon = a
                end
            end
        end

        local matchingCFrames = {}
        local result = string.gsub(MobName, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")

        for i, v in pairs(game.workspace.EnemySpawns:GetChildren()) do
            if v.Name == result4 then
                table.insert(matchingCFrames, v.CFrame)
            end
            MobCFrame = matchingCFrames
        end

        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame,
            [8] = MonQ,
            [9] = MobCFrameNuber
        }
    end

    -- // Tween \\ --

    function toposition(Point)
        TweeSpeed = 275
        local LocalPlayer = game.Players.LocalPlayer
        TweenPlay = (Point.Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .Position).Magnitude
        pcall(function()
            tot = game:GetService("TweenService"):Create(
                      LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(
                          TweenPlay / TweeSpeed, Enum.EasingStyle.Linear),
                      {CFrame = Point})
        end);
        tot:Play()

        if TweenPlay <= 200 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end

        if LocalPlayer.Character.Humanoid.Sit == true then
            LocalPlayer.Character.Humanoid.Sit = false
        end

        if _G.StopTween == true then
            tot:Cancel();
            _G.Clip = false
        end
        if _G.StopTween then
            tot:Cancel()
            BringMobFarm = false
            UseSkillGun = false
            UseSkill = false
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            tot:Play()
        elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            tot:Cancel()
            BringMobFarm = false
            UseSkillGun = false
            UseSkill = false
            wait(0.5)
        end
    end

    function StopTween(target)
        if not target then
            _G.StopTween = true
            _G.StertScript = false
            task.wait()
            toposition(game:GetService("Players").LocalPlayer.Character
                           .HumanoidRootPart.CFrame)
            task.wait()
            BringMobFarm = false
            UseSkillGun = false
            UseSkill = false
            toposition(game:GetService("Players").LocalPlayer.Character
                           .HumanoidRootPart.CFrame)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "AbandonQuest")
            _G.StopTween = false
            _G.StertScript = false
            _G.Clip = false
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                "BodyClip") then
                game:GetService("Players").LocalPlayer.Character
                    .HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end
    end

    function TPPlayer(Point)
        TweeSpeed = 300
        local LocalPlayer = game.Players.LocalPlayer
        TweenPlay = (Point.Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .Position).Magnitude
        local Dis = (Point.Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .Position).Magnitude
        pcall(function()
            tot = game:GetService("TweenService"):Create(
                      LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(
                          TweenPlay / TweeSpeed, Enum.EasingStyle.Linear),
                      {CFrame = Point})
        end);
        tot:Play()
        if TweenPlay >= 1200 then
            _G.StopTween = true
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                             CFrame.new(
                                                                                 0,
                                                                                 50,
                                                                                 0)
            wait(.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
            wait(.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                             CFrame.new(
                                                                                 0,
                                                                                 50,
                                                                                 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            _G.Clip = false
            _G.StopTween = false
        elseif TweenPlay <= 300 then
            tot:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
            wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                             CFrame.new(
                                                                                 0,
                                                                                 30,
                                                                                 0)
        end

        if Dis <= 350 then
            tot:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
            wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                             CFrame.new(
                                                                                 0,
                                                                                 30,
                                                                                 0)
        end

        if _G.StopTween == true then
            tot:Cancel();
            _G.Clip = false
        end
        if _G.StopTween then
            tot:Cancel()
            BringMobFarm = false
            UseSkillGun = false
            UseSkill = false
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            tot:Play()
        elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            tot:Cancel()
            BringMobFarm = false
            UseSkillGun = false
            UseSkill = false
        end
    end

    getgenv().TP = function(Pos)
        Distance = (Pos.Position -
                       game:GetService("Players").LocalPlayer.Character
                           .HumanoidRootPart.Position).Magnitude
        if Distance < 250 then
            Speed = 225
        elseif Distance >= 1000 then
            Speed = 150
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}):Play()
        _G.Clip = true
        wait(Distance / Speed)
        _G.Clip = false
        return
    end

    -- // Bypass \\ --

    function Bypass(Point)
        toposition(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait(1.5)
        _G.StopTween = true
        _G.StertScript = false

        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
            "AbandonQuest")
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                         CFrame.new(
                                                                             0,
                                                                             50,
                                                                             0)
        wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                         CFrame.new(
                                                                             0,
                                                                             50,
                                                                             0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point *
                                                                         CFrame.new(
                                                                             900,
                                                                             900,
                                                                             900)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
            "AbandonQuest")

        _G.StopTween = false
        _G.StertScript = false
        _G.Clip = false
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
            "BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                "BodyClip"):Destroy()
        end
        _G.Clip = false
    end

    -- // Check Sword \\ --

    function Check_Sword(Sword_Name)
        for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer(
                            "getInventory")) do
            if (v.Type == "Sword") then
                if v.Name == Sword_Name then return true end
            end
        end
    end

    -- Soul Guitar
    function Check_Gun(Gun_Name)
        for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer(
                            "getInventory")) do
            if (v.Type == "Gun") then
                if v.Name == Gun_Name then return true end
            end
        end
    end

    local function Check_Material(Material_Name)
        for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer(
                            "getInventory")) do
            if v.Type == "Material" then
                if v.Name == Material_Name then return v.Count end
            end
        end
        return 0
    end

    ---------------------

    spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Start_Kaitun then
                for _, v in pairs(
                                game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser'
                    :Button1Down(Vector2.new(1280, 672))
            end
        end)
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun then
                    if not game:GetService("Players").LocalPlayer.Character
                        .HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                        Noclip.Velocity = Vector3.new(0, 0, 0)
                    end
                else
                    game:GetService("Players").LocalPlayer.Character
                        .HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end)
        end
    end)

    local UserInputService = game:GetService("UserInputService")
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local TweenService = game:GetService("TweenService")
    local tween = game:service "TweenService"
    local RunService = game:GetService("RunService")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local GuiService = game:GetService("GuiService")

    local function tablefound(ta, object)
        for i, v in pairs(ta) do if v == object then return true end end
        return false
    end

    local ActualTypes = {
        RoundFrame = "ImageLabel",
        Shadow = "ImageLabel",
        Circle = "ImageLabel",
        CircleButton = "ImageButton",
        Frame = "Frame",
        Label = "TextLabel",
        Button = "TextButton",
        SmoothButton = "ImageButton",
        Box = "TextBox",
        ScrollingFrame = "ScrollingFrame",
        Menu = "ImageButton",
        NavBar = "ImageButton"
    }

    local Properties = {
        RoundFrame = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554237731",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(3, 3, 297, 297)
        },
        SmoothButton = {
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554237731",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(3, 3, 297, 297)
        },
        Shadow = {
            Name = "Shadow",
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554236805",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(23, 23, 277, 277),
            Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
            Position = UDim2.fromOffset(-15, -15)
        },
        Circle = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554831670"
        },
        CircleButton = {
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Image = "http://www.roblox.com/asset/?id=5554831670"
        },
        Frame = {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.fromScale(1, 1)
        },
        Label = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5, 0),
            Size = UDim2.fromScale(1, 1) - UDim2.fromOffset(5, 0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        Button = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5, 0),
            Size = UDim2.fromScale(1, 1) - UDim2.fromOffset(5, 0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        Box = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5, 0),
            Size = UDim2.fromScale(1, 1) - UDim2.fromOffset(5, 0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        ScrollingFrame = {
            BackgroundTransparency = 1,
            ScrollBarThickness = 0,
            CanvasSize = UDim2.fromScale(0, 0),
            Size = UDim2.fromScale(1, 1)
        },
        Menu = {
            Name = "More",
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5555108481",
            Size = UDim2.fromOffset(20, 20),
            Position = UDim2.fromScale(1, 0.5) - UDim2.fromOffset(25, 10)
        },
        NavBar = {
            Name = "SheetToggle",
            Image = "http://www.roblox.com/asset/?id=5576439039",
            BackgroundTransparency = 1,
            Size = UDim2.fromOffset(20, 20),
            Position = UDim2.fromOffset(5, 5),
            AutoButtonColor = false
        }
    }

    local Types = {
        "RoundFrame", "Shadow", "Circle", "CircleButton", "Frame", "Label",
        "Button", "SmoothButton", "Box", "ScrollingFrame", "Menu", "NavBar"
    }

    function FindType(String)
        for _, Type in next, Types do
            if Type:sub(1, #String):lower() == String:lower() then
                return Type
            end
        end
        return false
    end

    local Objects = {}

    function Objects.new(Type)
        local TargetType = FindType(Type)
        if TargetType then
            local NewImage = Instance.new(ActualTypes[TargetType])
            if Properties[TargetType] then
                for Property, Value in next, Properties[TargetType] do
                    NewImage[Property] = Value
                end
            end
            return NewImage
        else
            return Instance.new(Type)
        end
    end

    local function GetXY(GuiObject)
        local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
        local Px, Py =
            math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max),
            math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
        return Px / Max, Py / May
    end

    local function CircleAnim(GuiObject, EndColour, StartColour)
        local PX, PY = GetXY(GuiObject)
        local Circle = Objects.new("Shadow")
        Circle.Size = UDim2.fromScale(0, 0)
        Circle.Position = UDim2.fromScale(PX, PY)
        Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
        Circle.ZIndex = 200
        Circle.Parent = GuiObject
        local Size = GuiObject.AbsoluteSize.X
        TweenService:Create(Circle, TweenInfo.new(0.5), {
            Position = UDim2.fromScale(PX, PY) -
                UDim2.fromOffset(Size / 2, Size / 2),
            ImageTransparency = 1,
            ImageColor3 = EndColour,
            Size = UDim2.fromOffset(Size, Size)
        }):Play()
        spawn(function()
            wait(0.5)
            Circle:Destroy()
        end)
    end

    local UIConfig = {Bind = Enum.KeyCode.LeftControl}

    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = 0.2
        local StartPosition = nil

        local function Update(input)
            local Delta = input.Position - DragStart
            local pos = UDim2.new(StartPosition.X.Scale,
                                  StartPosition.X.Offset + Delta.X,
                                  StartPosition.Y.Scale,
                                  StartPosition.Y.Offset + Delta.Y)
            local Tween = TweenService:Create(object, TweenInfo.new(0.2),
                                              {Position = pos})
            Tween:Play()
        end

        topbarobject.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        Dragging = false
                    end
                end)
            end
        end)

        topbarobject.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                DragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == DragInput and Dragging then Update(input) end
        end)
    end

    if game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
        :FindFirstChild("Quarterly Hub Kaitun") then
        local Main = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild(
                         "Modules"):FindFirstChild("Quarterly Hub Kaitun").Main

        Main:TweenSize(UDim2.new(0, 600, 0, 0), "Out", "Back", 0.4, true)
        wait(0.05)
        game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
            :FindFirstChild("Quarterly Hub Kaitun"):Destroy()
    end

    local QuarterlyHubKaitun = Instance.new("ScreenGui")

    QuarterlyHubKaitun.Name = "RinMeka Hub (Kaitun version)"
    QuarterlyHubKaitun.Parent = game.CoreGui:WaitForChild("RobloxGui")
                                    :WaitForChild("Modules")
    QuarterlyHubKaitun.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    library = {}
    function library:Createlibrary()
        local Main = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Top_2225 = Instance.new("Frame")
        local Text1 = Instance.new("TextLabel")
        local Text2 = Instance.new("TextLabel")
        local Top2 = Instance.new("Frame")
        local LogoBackground = Instance.new("ImageLabel")
        local Logo = Instance.new("ImageLabel")
        local Label = Instance.new("Frame")
        local Name = Instance.new("TextLabel")
        local Hub = Instance.new("TextLabel")
        local PlayerUIButton = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local Labe2l = Instance.new("Frame")
        local Buttom = Instance.new("Frame")
        local Labe3 = Instance.new("Frame")
        local Start = Instance.new("Frame")
        local Button11 = Instance.new("TextButton")
        local ToggleMain = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local Click = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Name_2 = Instance.new("TextLabel")
        local PlayerUIMain = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local PlayerUIMain2 = Instance.new("Frame")
        local UICorner_6 = Instance.new("UICorner")
        local PlayerIcon = Instance.new("ImageLabel")
        local UICorner_7 = Instance.new("UICorner")
        local MainMoney = Instance.new("TextLabel")
        local Labepdw = Instance.new("Frame")
        local BeliValue = Instance.new("TextLabel")
        local FragmentsValue = Instance.new("TextLabel")
        local NameValue = Instance.new("TextLabel")
        local MoonPnj = Instance.new("ImageLabel")
        local UICorner_8 = Instance.new("UICorner")
        local MainMoon = Instance.new("TextLabel")
        local Labepdw_2 = Instance.new("Frame")
        local BoneValue = Instance.new("TextLabel")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIGridLayout = Instance.new("UIGridLayout")
        local MainIsland = Instance.new("TextLabel")
        local MainIsland_2 = Instance.new("TextLabel")

        Main.Name = "Main"
        Main.Parent = QuarterlyHubKaitun
        Main.AnchorPoint = Vector2.new(0.5, 0.5)
        Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Main.BorderSizePixel = 2
        Main.Draggable = true
        Main.Position = UDim2.new(0.300000012, 0, 0.5, 0)
        Main.Size = UDim2.new(0, 600, 0, 600)
        Main.BorderColor3 = Color3.fromRGB(0, 255, 0)

        UICorner.CornerRadius = UDim.new(0, 0)
        UICorner.Parent = Main

        Main.Size = UDim2.new(0, 600, 0, 2)
        wait(0.1)
        Main:TweenSize(UDim2.new(0, 600, 0, 600), "Out", "Back", 0.4, true)

        Top_2225.Name = "Top_2225"
        Top_2225.Parent = Main
        Top_2225.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Top_2225.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Top_2225.BorderSizePixel = 0
        Top_2225.Size = UDim2.new(0, 600, 0, 41)

        Text1.Name = "Text1"
        Text1.Parent = Top_2225
        Text1.AnchorPoint = Vector2.new(0, 0.5)
        Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text1.BackgroundTransparency = 1.000
        Text1.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text1.BorderSizePixel = 0
        Text1.Position = UDim2.new(0.0399999991, 0, 0.5, 0)
        Text1.Size = UDim2.new(0, 97, 0, 30)
        Text1.Font = Enum.Font.FredokaOne
        Text1.Text = "Quarterly"
        Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text1.TextScaled = true
        Text1.TextSize = 14.000
        Text1.TextWrapped = true
        Text1.TextXAlignment = Enum.TextXAlignment.Left

        Text2.Name = "Text2"
        Text2.Parent = Top_2225
        Text2.AnchorPoint = Vector2.new(0, 0.5)
        Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text2.BackgroundTransparency = 1.000
        Text2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text2.BorderSizePixel = 0
        Text2.Position = UDim2.new(0.215000004, 0, 0.5, 0)
        Text2.Size = UDim2.new(0, 97, 0, 29)
        Text2.Font = Enum.Font.FredokaOne
        Text2.Text = "Hub"
        Text2.TextColor3 = Color3.fromRGB(4, 255, 0)
        Text2.TextScaled = true
        Text2.TextSize = 14.000
        Text2.TextWrapped = true
        Text2.TextXAlignment = Enum.TextXAlignment.Left

        Top2.Name = "Top2"
        Top2.Parent = Main
        Top2.BackgroundColor3 = Color3.fromRGB(0, 5, 0)
        Top2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Top2.BorderSizePixel = 0
        Top2.Position = UDim2.new(0.0350000001, 0, 0.0683333352, 0)
        Top2.Size = UDim2.new(0, 553, 0, 190)

        LogoBackground.Name = "LogoBackground"
        LogoBackground.Parent = Top2
        LogoBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LogoBackground.BackgroundTransparency = 1.000
        LogoBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
        LogoBackground.BorderSizePixel = 0
        LogoBackground.Position = UDim2.new(0.0759493634, 0, -0.131578952, 0)
        LogoBackground.Size = UDim2.new(0, 212, 0, 215)
        LogoBackground.Image = "rbxassetid://14572696504"
        LogoBackground.ImageColor3 = Color3.fromRGB(0, 25, 0)

        Logo.Name = "Logo"
        Logo.Parent = Top2
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Logo.BorderSizePixel = 0
        Logo.Position = UDim2.new(0.108499095, 0, 0, 0)
        Logo.Size = UDim2.new(0, 176, 0, 170)
        Logo.Image = "rbxassetid://14572696504"

        Label.Name = "Label"
        Label.Parent = Top2
        Label.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
        Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Label.BorderSizePixel = 0
        Label.Position = UDim2.new(0.421338141, 0, 0.184210524, 0)
        Label.Size = UDim2.new(0, 3, 0, 100)

        Name.Name = "Name"
        Name.Parent = Top2
        Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name.BackgroundTransparency = 1.000
        Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Name.BorderSizePixel = 0
        Name.Position = UDim2.new(0.535262227, 0, 0.184210524, 0)
        Name.Size = UDim2.new(0, 200, 0, 50)
        Name.Font = Enum.Font.FredokaOne
        Name.Text = "Quarterly"
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name.TextScaled = true
        Name.TextSize = 14.000
        Name.TextWrapped = true

        Hub.Name = "Hub"
        Hub.Parent = Top2
        Hub.AnchorPoint = Vector2.new(0, 0.5)
        Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hub.BackgroundTransparency = 1.000
        Hub.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Hub.BorderSizePixel = 0
        Hub.Position = UDim2.new(0.535072386, 0, 0.606578946, 0)
        Hub.Size = UDim2.new(0, 200, 0, 39)
        Hub.Font = Enum.Font.FredokaOne
        Hub.Text = "Hub | Kaitun One Click"
        Hub.TextColor3 = Color3.fromRGB(4, 255, 0)
        Hub.TextScaled = true
        Hub.TextSize = 14.000
        Hub.TextWrapped = true
        Hub.TextXAlignment = Enum.TextXAlignment.Left

        PlayerUIButton.Name = "PlayerUIButton"
        PlayerUIButton.Parent = Top2
        PlayerUIButton.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
        PlayerUIButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        PlayerUIButton.BorderSizePixel = 0
        PlayerUIButton.Position = UDim2.new(0.535262227, 0, 0.736842096, 0)
        PlayerUIButton.Size = UDim2.new(0, 200, 0, 30)
        PlayerUIButton.Font = Enum.Font.FredokaOne
        PlayerUIButton.Text = "Player UI : On"
        PlayerUIButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        PlayerUIButton.TextSize = 19.000
        PlayerUIButtond = "On"
        PlayerUIButton.MouseButton1Click:Connect(function()
            if PlayerUIButtond == "On" then
                PlayerUIButton.Text = "Player UI : OFF"
                TweenService:Create(PlayerUIMain, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out), {
                    Position = UDim2.new(1.04166663, 0, -1.5, 0)
                }):Play()
                TweenService:Create(PlayerUIMain2, TweenInfo.new(0.6,
                                                                 Enum.EasingStyle
                                                                     .Quad,
                                                                 Enum.EasingDirection
                                                                     .Out), {
                    Position = UDim2.new(1.04166663, 0, 1.5 * 2, 0)
                }):Play()
                wait(0.2)
                TweenService:Create(Main, TweenInfo.new(0.6,
                                                        Enum.EasingStyle.Quad,
                                                        Enum.EasingDirection.Out),
                                    {Position = UDim2.new(0.5, 0, 0.5, 0)})
                    :Play()
                PlayerUIButtond = "OFF"
            else
                PlayerUIButton.Text = "Player UI : On"
                TweenService:Create(Main, TweenInfo.new(0.6,
                                                        Enum.EasingStyle.Quad,
                                                        Enum.EasingDirection.Out),
                                    {Position = UDim2.new(0.3, 0, 0.5, 0)})
                    :Play()
                wait(0.3)
                TweenService:Create(PlayerUIMain2, TweenInfo.new(0.6,
                                                                 Enum.EasingStyle
                                                                     .Quad,
                                                                 Enum.EasingDirection
                                                                     .Out), {
                    Position = UDim2.new(1.04166663, 0, 0.521666646, 0)
                }):Play()
                TweenService:Create(PlayerUIMain, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out),
                                    {Position = UDim2.new(1.04166663, 0, 0, 0)})
                    :Play()
                wait(0.2)
                PlayerUIButtond = "On"
            end
        end)

        MakeDraggable(Top_2225, Main)

        UICorner_2.Parent = PlayerUIButton

        Labe2l.Name = "Labe2l"
        Labe2l.Parent = Main
        Labe2l.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
        Labe2l.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Labe2l.BorderSizePixel = 0
        Labe2l.Position = UDim2.new(0.0366666652, 0, 0.49333334, 0)
        Labe2l.Size = UDim2.new(0, 550, 0, 2)

        Buttom.Name = "Buttom"
        Buttom.Parent = Main
        Buttom.BackgroundColor3 = Color3.fromRGB(0, 5, 0)
        Buttom.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Buttom.BorderSizePixel = 0
        Buttom.Position = UDim2.new(0.0416666679, 0, 0.49666667, 0)
        Buttom.Size = UDim2.new(0, 549, 0, 284)

        Labe3.Name = "Labe3"
        Labe3.Parent = Buttom
        Labe3.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
        Labe3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Labe3.BorderSizePixel = 0
        Labe3.Position = UDim2.new(-0.00910741277, 0, 0.957746506, 0)
        Labe3.Size = UDim2.new(0, 550, 0, 2)

        PlayerUIMain.Name = "PlayerUIMain"
        PlayerUIMain.Parent = Main
        PlayerUIMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        PlayerUIMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
        PlayerUIMain.BorderSizePixel = 2
        PlayerUIMain.Position = UDim2.new(1.04166663, 0, 0, 0)
        PlayerUIMain.Size = UDim2.new(0, 585, 0, 300)
        PlayerUIMain.BorderColor3 = Color3.fromRGB(0, 255, 0)

        UICorner_5.CornerRadius = UDim.new(0, 0)
        UICorner_5.Parent = PlayerUIMain

        PlayerUIMain2.Name = "PlayerUIMain2"
        PlayerUIMain2.Parent = Main
        PlayerUIMain2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        PlayerUIMain2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        PlayerUIMain2.BorderSizePixel = 2
        PlayerUIMain2.Position = UDim2.new(1.04166663, 0, 0.521666646, 0)
        PlayerUIMain2.Size = UDim2.new(0, 585, 0, 287)
        PlayerUIMain2.BorderColor3 = Color3.fromRGB(0, 255, 0)

        UICorner_6.CornerRadius = UDim.new(0, 0)
        UICorner_6.Parent = PlayerUIMain2

        UI = "Open"
        UserInputService.InputBegan:Connect(function(Keyinput)
            if Keyinput.KeyCode == UIConfig.Bind then
                if UI == "Open" then
                    if PlayerUIButtond == "OFF" then
                        TweenService:Create(Main, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out), {
                            Position = UDim2.new(0.5 - 1.5, 0, 0.5, 0)
                        }):Play()
                        wait(0.2)
                    else
                        TweenService:Create(PlayerUIMain, TweenInfo.new(0.6,
                                                                        Enum.EasingStyle
                                                                            .Quad,
                                                                        Enum.EasingDirection
                                                                            .Out),
                                            {
                            Position = UDim2.new(1.04166663, 0, -1.5, 0)
                        }):Play()
                        TweenService:Create(PlayerUIMain2, TweenInfo.new(0.6,
                                                                         Enum.EasingStyle
                                                                             .Quad,
                                                                         Enum.EasingDirection
                                                                             .Out),
                                            {
                            Position = UDim2.new(1.04166663, 0, 1.5, 0)
                        }):Play()
                        wait(0.2)
                        TweenService:Create(Main, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out), {
                            Position = UDim2.new(-1.5, 0, 0.5, 0)
                        }):Play()
                        wait(0.2)
                    end
                    UI = "OFF"
                else
                    Dragging = false
                    if PlayerUIButtond == "OFF" then
                        TweenService:Create(Main, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out), {
                            Position = UDim2.new(0.5, 0, 0.5, 0)
                        }):Play()
                        wait(0.2)
                    else
                        TweenService:Create(Main, TweenInfo.new(0.6,
                                                                Enum.EasingStyle
                                                                    .Quad,
                                                                Enum.EasingDirection
                                                                    .Out), {
                            Position = UDim2.new(0.3, 0, 0.5, 0)
                        }):Play()
                        wait(0.3)
                        TweenService:Create(PlayerUIMain2, TweenInfo.new(0.6,
                                                                         Enum.EasingStyle
                                                                             .Quad,
                                                                         Enum.EasingDirection
                                                                             .Out),
                                            {
                            Position = UDim2.new(1.04166663, 0, 0.521666646, 0)
                        }):Play()
                        TweenService:Create(PlayerUIMain, TweenInfo.new(0.6,
                                                                        Enum.EasingStyle
                                                                            .Quad,
                                                                        Enum.EasingDirection
                                                                            .Out),
                                            {
                            Position = UDim2.new(1.04166663, 0, 0, 0)
                        }):Play()
                        wait(0.2)
                    end
                    UI = "Open"
                end
            end
        end)

        function AddToggle(Value, callback)

            Start.Name = "Start"
            Start.Parent = Buttom
            Start.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Start.BackgroundTransparency = 1.000
            Start.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Start.BorderSizePixel = 0
            Start.Position = UDim2.new(0.00728597445, 0, 0.323943675, 0)
            Start.Size = UDim2.new(0, 534, 0, 100)

            Button11.Name = "Button11"
            Button11.Parent = Start
            Button11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Button11.BackgroundTransparency = 1.000
            Button11.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button11.BorderSizePixel = 0
            Button11.Position = UDim2.new(-0.0172120277, 0, 0.0933801234, 0)
            Button11.Size = UDim2.new(0, 542, 0, 80)
            Button11.Font = Enum.Font.SourceSans
            Button11.Text = ""
            Button11.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button11.TextSize = 14.000

            ToggleMain.Name = "ToggleMain"
            ToggleMain.Parent = Start
            ToggleMain.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            ToggleMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleMain.BorderSizePixel = 0
            ToggleMain.Position = UDim2.new(0.269662857, 0, 0.100000001, 0)
            ToggleMain.Size = UDim2.new(0, 254, 0, 80)

            UICorner_3.Parent = ToggleMain

            Click.Name = "Click"
            Click.Parent = ToggleMain
            Click.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Click.BorderSizePixel = 0
            Click.Position = UDim2.new(0, 150, 0.150000006, 0)
            Click.Size = UDim2.new(0, 80, 0, 56)

            UICorner_4.Parent = Click
            Tgo = false

            if Value == true then
                Tgo = true
                pcall(callback, true)
                TweenService:Create(Click, TweenInfo.new(0.4,
                                                         Enum.EasingStyle.Quad,
                                                         Enum.EasingDirection
                                                             .Out), {
                    Position = UDim2.new(0, 30, 0.150000006, 0)
                }):Play()
                TweenService:Create(Click, TweenInfo.new(0.4,
                                                         Enum.EasingStyle.Quad,
                                                         Enum.EasingDirection
                                                             .Out), {
                    BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                }):Play()
                Tgo = true
            end

            Button11.MouseButton1Click:Connect(function()
                if Tgo == false then
                    Tgo = true
                    pcall(callback, true)
                    TweenService:Create(Click, TweenInfo.new(0.4,
                                                             Enum.EasingStyle
                                                                 .Quad,
                                                             Enum.EasingDirection
                                                                 .Out), {
                        Position = UDim2.new(0, 30, 0.150000006, 0)
                    }):Play()
                    TweenService:Create(Click, TweenInfo.new(0.4,
                                                             Enum.EasingStyle
                                                                 .Quad,
                                                             Enum.EasingDirection
                                                                 .Out), {
                        BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    }):Play()
                else
                    Tgo = false
                    pcall(callback, false)
                    TweenService:Create(Click, TweenInfo.new(0.4,
                                                             Enum.EasingStyle
                                                                 .Quad,
                                                             Enum.EasingDirection
                                                                 .Out), {
                        Position = UDim2.new(0, 150, 0.150000006, 0)
                    }):Play()
                    TweenService:Create(Click, TweenInfo.new(0.4,
                                                             Enum.EasingStyle
                                                                 .Quad,
                                                             Enum.EasingDirection
                                                                 .Out), {
                        BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    }):Play()
                end
            end)

            Name_2.Name = "Name"
            Name_2.Parent = Buttom
            Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name_2.BackgroundTransparency = 1.000
            Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Name_2.BorderSizePixel = 0
            Name_2.Position = UDim2.new(0.318504453, 0, 0.177168295, 0)
            Name_2.Size = UDim2.new(0, 200, 0, 31)
            Name_2.Font = Enum.Font.FredokaOne
            Name_2.Text = "Start"
            Name_2.TextColor3 = Color3.fromRGB(39, 39, 39)
            Name_2.TextScaled = true
            Name_2.TextSize = 14.000
            Name_2.TextWrapped = true

            PlayerIcon.Name = "PlayerIcon"
            PlayerIcon.Parent = PlayerUIMain2
            PlayerIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PlayerIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
            PlayerIcon.BorderSizePixel = 0
            PlayerIcon.Position = UDim2.new(0.0102564106, 0, 0.0348432064, 0)
            PlayerIcon.Size = UDim2.new(0, 50, 0, 50)
            PlayerIcon.Image =
                "https://www.roblox.com/headshot-thumbnail/image?userId=" ..
                    game.Players.LocalPlayer.UserId ..
                    "&width=420&height=420&format=png"

            UICorner_7.CornerRadius = UDim.new(0, 100)
            UICorner_7.Parent = PlayerIcon

            MainMoney.Name = "MainMoney"
            MainMoney.Parent = PlayerUIMain2
            MainMoney.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainMoney.BackgroundTransparency = 1.000
            MainMoney.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MainMoney.BorderSizePixel = 0
            MainMoney.Position = UDim2.new(0.225641027, 0, 0, 0)
            MainMoney.Size = UDim2.new(0, 185, 0, 25)
            MainMoney.Font = Enum.Font.FredokaOne
            MainMoney.Text = "( Beli and Fragments  )"
            MainMoney.TextColor3 = Color3.fromRGB(85, 85, 85)
            MainMoney.TextSize = 14.000

            Labepdw.Name = "Labepdw"
            Labepdw.Parent = PlayerUIMain2
            Labepdw.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
            Labepdw.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Labepdw.BorderSizePixel = 0
            Labepdw.Position = UDim2.new(0.108461559, 0, 0.222996518, 0)
            Labepdw.Size = UDim2.new(0, 323, 0, 2)

            BeliValue.Name = "BeliValue"
            BeliValue.Parent = PlayerUIMain2
            BeliValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BeliValue.BackgroundTransparency = 1.000
            BeliValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            BeliValue.BorderSizePixel = 0
            BeliValue.Position = UDim2.new(0.121367522, 0, 0.147441804, 0)
            BeliValue.Size = UDim2.new(0, 98, 0, 16)
            BeliValue.Font = Enum.Font.FredokaOne
            BeliValue.Text = "$Beli : 999M"
            BeliValue.TextColor3 = Color3.fromRGB(13, 255, 0)
            BeliValue.TextScaled = true
            BeliValue.TextSize = 14.000
            BeliValue.TextWrapped = true
            BeliValue.TextXAlignment = Enum.TextXAlignment.Left

            spawn(function()
                local player = game:GetService("Players").LocalPlayer

                while wait() do
                    local beliValue = player.Data.Beli.Value
                    local formattedBeli = ""

                    if beliValue >= 1e12 then
                        formattedBeli = string.format("%.1fT", beliValue / 1e12)
                    elseif beliValue >= 1e9 then
                        formattedBeli = string.format("%.1fB", beliValue / 1e9)
                    elseif beliValue >= 1e6 then
                        formattedBeli = string.format("%.1fM", beliValue / 1e6)
                    elseif beliValue >= 1e3 then
                        formattedBeli = string.format("%.1fk", beliValue / 1e3)
                    else
                        formattedBeli = tostring(beliValue)
                    end
                    BeliValue.Text = "$Beli : " .. formattedBeli
                end
            end)

            FragmentsValue.Name = "FragmentsValue"
            FragmentsValue.Parent = PlayerUIMain2
            FragmentsValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            FragmentsValue.BackgroundTransparency = 1.000
            FragmentsValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            FragmentsValue.BorderSizePixel = 0
            FragmentsValue.Position = UDim2.new(0.423931628, 0, 0.147441804, 0)
            FragmentsValue.Size = UDim2.new(0, 138, 0, 16)
            FragmentsValue.Font = Enum.Font.FredokaOne
            FragmentsValue.Text = "$Fragments : 999M"
            FragmentsValue.TextColor3 = Color3.fromRGB(158, 1, 255)
            FragmentsValue.TextScaled = true
            FragmentsValue.TextSize = 14.000
            FragmentsValue.TextWrapped = true
            FragmentsValue.TextXAlignment = Enum.TextXAlignment.Right

            spawn(function()
                while wait() do
                    local beliValue = game:GetService("Players").LocalPlayer
                                          .Data.Fragments.Value
                    local formattedBeli = ""

                    if beliValue >= 1e12 then
                        formattedBeli = string.format("%.1fT", beliValue / 1e12)
                    elseif beliValue >= 1e9 then
                        formattedBeli = string.format("%.1fB", beliValue / 1e9)
                    elseif beliValue >= 1e6 then
                        formattedBeli = string.format("%.1fM", beliValue / 1e6)
                    elseif beliValue >= 1e3 then
                        formattedBeli = string.format("%.1fk", beliValue / 1e3)
                    else
                        formattedBeli = tostring(beliValue)
                    end
                    FragmentsValue.Text = "$Fragments : " .. formattedBeli
                end
            end)

            NameValue.Name = "NameValue"
            NameValue.Parent = PlayerUIMain2
            NameValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameValue.BackgroundTransparency = 1.000
            NameValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            NameValue.BorderSizePixel = 0
            NameValue.Position = UDim2.new(0.108461559, 0, 0.241518453, 0)
            NameValue.Size = UDim2.new(0, 321, 0, 15)
            NameValue.Font = Enum.Font.FredokaOne
            NameValue.Text = "Name : " .. game.Players.LocalPlayer.Name
            NameValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            NameValue.TextScaled = true
            NameValue.TextSize = 14.000
            NameValue.TextWrapped = true

            MoonPnj.Name = "MoonPnj"
            MoonPnj.Parent = PlayerUIMain2
            MoonPnj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MoonPnj.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MoonPnj.BorderSizePixel = 0
            MoonPnj.BackgroundTransparency = 1
            MoonPnj.Position = UDim2.new(0.758974373, 0, 0.0348432064, 0)
            MoonPnj.Size = UDim2.new(0, 100, 0, 100)
            MoonPnj.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

            spawn(function()
                while wait() do
                    MoonPnj.Image = game:GetService("Lighting").Sky
                                        .MoonTextureId
                end
            end)

            UICorner_8.Parent = MoonPnj

            MainMoon.Name = "MainMoon"
            MainMoon.Parent = PlayerUIMain2
            MainMoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainMoon.BackgroundTransparency = 1.000
            MainMoon.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MainMoon.BorderSizePixel = 0
            MainMoon.Position = UDim2.new(0.685470104, 0, 0.397212535, 0)
            MainMoon.Size = UDim2.new(0, 185, 0, 12)
            MainMoon.Font = Enum.Font.FredokaOne
            MainMoon.Text = "( Moon Stats )"
            MainMoon.TextColor3 = Color3.fromRGB(85, 85, 85)
            MainMoon.TextScaled = true
            MainMoon.TextSize = 14.000
            MainMoon.TextWrapped = true

            Labepdw_2.Name = "Labepdw"
            Labepdw_2.Parent = PlayerUIMain2
            Labepdw_2.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
            Labepdw_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Labepdw_2.BorderSizePixel = 0
            Labepdw_2.Position = UDim2.new(0.108000003, 0, 0.400000006, 0)
            Labepdw_2.Size = UDim2.new(0, 323, 0, 2)

            BoneValue.Name = "BoneValue"
            BoneValue.Parent = PlayerUIMain2
            BoneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BoneValue.BackgroundTransparency = 1.000
            BoneValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            BoneValue.BorderSizePixel = 0
            BoneValue.Position = UDim2.new(0.107692309, 0, 0.325142145, 0)
            BoneValue.Size = UDim2.new(0, 323, 0, 16)
            BoneValue.Font = Enum.Font.FredokaOne
            BoneValue.Text = "Bone : 999 🦴"
            BoneValue.TextColor3 = Color3.fromRGB(255, 170, 0)
            BoneValue.TextScaled = true
            BoneValue.TextSize = 14.000
            BoneValue.TextWrapped = true

            local function RunBone()
                for i, v in pairs(
                                game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer(
                                    "getInventory")) do
                    if v.Type == "Material" then
                        if v.Name == "Bones" then
                            BoneValue.Text = "Bone : " .. v.Count
                        end
                    end
                end
            end

            spawn(function() while wait() do RunBone() end end)

            ScrollingFrame.Parent = PlayerUIMain2
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position = UDim2.new(0.418803424, 0, 0.484320551, 0)
            ScrollingFrame.Size = UDim2.new(0, 141, 0, 123)
            ScrollingFrame.ScrollBarThickness = 2

            spawn(function()
                while wait() do
                    game:GetService("Players").LocalPlayer.PlayerGui.Main
                        .FruitInventory.Position = UDim2.new(60, 0, 60, 0)
                    game:GetService("Players").LocalPlayer.PlayerGui.Main
                        .FruitInventory.Visible = true
                    wait(0.2)
                    for _, Clone_1 in pairs(
                                          game:GetService("Players").LocalPlayer
                                              .PlayerGui.Main.FruitInventory
                                              .Container.Stored.ScrollingFrame:GetChildren()) do
                        if Clone_1:IsA("Frame") then
                            local Clone_Fruit = Clone_1:Clone()
                            print(Clone_Fruit)
                            if not game:GetService("CoreGui"):WaitForChild(
                                "RobloxGui"):WaitForChild("Modules")
                                :WaitForChild("Quarterly Hub Kaitun").Main
                                .PlayerUIMain2.ScrollingFrame:FindFirstChild(
                                Clone_Fruit.Name) then
                                Clone_Fruit.Parent =
                                    game:GetService("CoreGui"):WaitForChild(
                                        "RobloxGui"):WaitForChild("Modules")
                                        :WaitForChild("Quarterly Hub Kaitun").Main
                                        .PlayerUIMain2.ScrollingFrame
                                Clone_Fruit.Position = UDim2.new(0, 0, 0, 0)
                            end
                        end
                    end
                end
            end)

            UIGridLayout.Parent = ScrollingFrame
            UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIGridLayout.CellSize = UDim2.new(0, 100, 0, 100)

            MainIsland.Name = "MainIsland"
            MainIsland.Parent = PlayerUIMain2
            MainIsland.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainIsland.BackgroundTransparency = 1.000
            MainIsland.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MainIsland.BorderSizePixel = 0
            MainIsland.Position = UDim2.new(0.0957264975, 0, 0.484320551, 0)
            MainIsland.Size = UDim2.new(0, 185, 0, 12)
            MainIsland.Font = Enum.Font.FredokaOne
            MainIsland.Text = "( Moon Mirage IsLand )"
            MainIsland.TextColor3 = Color3.fromRGB(85, 85, 85)
            MainIsland.TextScaled = true
            MainIsland.TextSize = 14.000
            MainIsland.TextWrapped = true

            MainIsland_2.Name = "MainIsland"
            MainIsland_2.Parent = PlayerUIMain2
            MainIsland_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainIsland_2.BackgroundTransparency = 1.000
            MainIsland_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MainIsland_2.BorderSizePixel = 0
            MainIsland_2.Position = UDim2.new(0.0957264975, 0, 0.581881523, 0)
            MainIsland_2.Size = UDim2.new(0, 185, 0, 41)
            MainIsland_2.Font = Enum.Font.FredokaOne
            MainIsland_2.Text = "🔴"
            MainIsland_2.TextColor3 = Color3.fromRGB(85, 85, 85)
            MainIsland_2.TextScaled = true
            MainIsland_2.TextSize = 14.000
            MainIsland_2.TextWrapped = true

            spawn(function()
                while wait() do
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                        "Mirage Island") then
                        MainIsland_2.Text = "🟢"
                    else
                        MainIsland_2.Text = "🔴"
                    end
                end
            end)

            local Page = Instance.new("ScrollingFrame")
            local Left = Instance.new("ScrollingFrame")
            local Right = Instance.new("ScrollingFrame")
            local UIListLayout_5 = Instance.new("UIListLayout")
            local UIPadding_5 = Instance.new("UIPadding")

            Page.Name = "Page"
            Page.Parent = PlayerUIMain
            Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Page.BackgroundTransparency = 1.000
            Page.Size = UDim2.new(0, 585, 0, 270)
            Page.ScrollBarThickness = 0
            Page.CanvasSize = UDim2.new(0, 0, 0, 0)

            Left.Name = "Left"
            Left.Parent = Page
            Left.Active = true
            Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Left.BackgroundTransparency = 10
            Left.Size = UDim2.new(0, 284, 0, 270)
            Left.ScrollBarThickness = 0
            Left.CanvasSize = UDim2.new(0, 0, 0, 0)

            Right.Name = "Right"
            Right.Parent = Page
            Right.Active = true
            Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Right.BackgroundTransparency = 10
            Right.Size = UDim2.new(0, 284, 0, 270)
            Right.ScrollBarThickness = 0
            Right.CanvasSize = UDim2.new(0, 0, 0, 0)

            local LeftList = Instance.new("UIListLayout")
            local RightList = Instance.new("UIListLayout")

            LeftList.Parent = Left
            LeftList.SortOrder = Enum.SortOrder.LayoutOrder
            LeftList.Padding = UDim.new(0, 5)

            RightList.Parent = Right
            RightList.SortOrder = Enum.SortOrder.LayoutOrder
            RightList.Padding = UDim.new(0, 5)

            UIListLayout_5.Parent = Page
            UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_5.Padding = UDim.new(0, 13)

            UIPadding_5.Parent = Page

            local function GetType(value)
                if value == 1 or value == "Left" then
                    return Left
                elseif value == 2 or value == "Right" then
                    return Right
                else
                    return Left
                end
            end

            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    Right.CanvasSize = UDim2.new(0, 0, 0,
                                                 RightList.AbsoluteContentSize.Y +
                                                     5)
                    Left.CanvasSize = UDim2.new(0, 0, 0,
                                                LeftList.AbsoluteContentSize.Y +
                                                    5)
                end)
            end)

            local Create = {Sections = {}}

            function Create.Sections:CreateSection(options)
                local Name = options.Name
                local side = options.Side

                if side == nil then return Left end

                local Section = Instance.new("Frame")
                local UICorner_5 = Instance.new("UICorner")
                local Top_2 = Instance.new("Frame")
                local Line = Instance.new("Frame")
                local Sectionname = Instance.new("TextLabel")
                local SectionContainer = Instance.new("Frame")
                local SectionContainer_2 = Instance.new("Frame")
                local UIListLayout_2 = Instance.new("UIListLayout")
                local UIPadding_2 = Instance.new("UIPadding")

                Section.Name = "Section"
                Section.Parent = GetType(side)
                Section.BackgroundColor3 = Color3.fromRGB(0, 0, 10)
                Section.ClipsDescendants = true
                Section.Transparency = 0.1
                Section.Size = UDim2.new(1, 0, 0, 40)

                UICorner_5.CornerRadius = UDim.new(0, 5)
                UICorner_5.Parent = Section

                Top_2.Name = "Top"
                Top_2.Parent = Section
                Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Top_2.BackgroundTransparency = 1.000
                Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Top_2.Size = UDim2.new(0, 238, 0, 31)

                Line.Name = "Line"
                Line.Parent = Top_2
                Line.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                Line.BorderSizePixel = 0
                Line.Size = UDim2.new(0, 274, 0, 1)

                Sectionname.Name = "Sectionname"
                Sectionname.Parent = Top_2
                Sectionname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sectionname.BackgroundTransparency = 1.000
                Sectionname.Position = UDim2.new(0.0591227226, 0, 0.0222222228,
                                                 0)
                Sectionname.Size = UDim2.new(0, 224, 0, 24)
                Sectionname.Font = Enum.Font.GothamBold
                Sectionname.Text = Name
                Sectionname.TextColor3 = Color3.fromRGB(0, 255, 0)
                Sectionname.TextSize = 12.000
                Sectionname.TextTransparency = 0
                Sectionname.TextXAlignment = Enum.TextXAlignment.Left

                SectionContainer.Name = "SectionContainer"
                SectionContainer.Parent = Top_2
                SectionContainer.BackgroundColor3 =
                    Color3.fromRGB(255, 255, 255)
                SectionContainer.BackgroundTransparency = 1.000
                SectionContainer.BorderSizePixel = 0
                SectionContainer.Position = UDim2.new(0, 0, 0.796416223, 0)
                SectionContainer.Size = UDim2.new(0, 239, 0, 270)

                SectionContainer_2.Name = "SectionContainer_2"
                SectionContainer_2.Parent = Top_2
                SectionContainer_2.BackgroundColor3 =
                    Color3.fromRGB(255, 255, 255)
                SectionContainer_2.BackgroundTransparency = 1.000
                SectionContainer_2.BorderSizePixel = 0
                SectionContainer_2.Position = UDim2.new(0, 0, 0.796416223, 0)
                SectionContainer_2.Size = UDim2.new(0, 239, 0, 270)

                UIListLayout_2.Parent = SectionContainer
                UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_2.Padding = UDim.new(0, 15)

                UIPadding_2.Parent = SectionContainer
                UIPadding_2.PaddingLeft = UDim.new(0, 5)

                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize")
                    :Connect(function()
                        Section.Size = UDim2.new(1, 0, 0,
                                                 UIListLayout_2.AbsoluteContentSize
                                                     .Y + 35)
                    end)

                local Function_Tabel = {functionitem = {}}
                function Function_Tabel.functionitem:AddLabel(options)
                    local text = options.Name
                    local Flag = options.Flag

                    local textas = {}
                    local Label = Instance.new("Frame")
                    local Text = Instance.new("TextLabel")
                    Label.Name = text
                    Label.Parent = SectionContainer
                    Label.AnchorPoint = Vector2.new(0.5, 0.5)
                    Label.BackgroundTransparency = 1.000
                    Label.Size = UDim2.new(0, 265, 0, 30)

                    Text.Name = text
                    Text.Parent = Label
                    Text.AnchorPoint = Vector2.new(0.5, 0.5)
                    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text.BackgroundTransparency = 1.000
                    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Text.Size = UDim2.new(0, 53, 0, 150)
                    Text.ZIndex = 16
                    Text.Font = Enum.Font.GothamBold
                    Text.Text = text
                    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Text.TextSize = 12.000

                    function textas:Set(newtext)
                        Text.Text = newtext
                    end
                    return textas
                end
                return Function_Tabel.functionitem
            end
            return Create.Sections
        end
    end

    Code = {
        "EXP_5B", "CONTROL", "UPDATE11", "XMASEXP", "1BILLION", "ShutDownFix2",
        "UPD14", "STRAWHATMAINE", "TantaiGaming", "Colosseum", "Axiore",
        "Sub2Daigrock", "Sky Island 3", "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123", "THEGREATACE", "Fountain City", "BIGNEWS",
        "FUDD10", "SUB2GAMERROBOT_EXP1", "UPD15", "2BILLION", "UPD16",
        "3BVISITS", "fudd10_v2", "Starcodeheo", "Magicbus", "JCWK", "Bluxxy",
        "Sub2Fer999", "Enyu_is_Pro"
    }

    local Page = AddToggle(_G.Start_Kaitun, function(value)
        _G.Start_Kaitun = value

        if _G.Config == false then
            _G.Start_Saber = value
            _G.StartFarm = value
            _G.Start_Pole = value
            _G.Auto_New_World = value
            _G.Auto_Bartilo_Quest = value
            _G.AutoRengoku = value
            _G.Grab_Fruit = value
            _G.StoreFruit = value
            _G.AutoFarmBossAll = value
            _G.Open_Flamingo_Access = value
            _G.Midnight_Blade = value
            _G.Auto_Factory_Farm = value
            _G.Start_GoTo_Thire_World = value
            _G.Auto_Yama = value
            _G.Auto_Tushita = value
            _G.Auto_Superhuman = value
            _G.Auto_Electric_Claw = value
            _G.Auto_Farm_Mastery_Sword = value
            _G.Auto_Buy_Devil_Fruit = value
            _G.Auto_Soul_Guitar = value
        end
        if value == true then
            if _G.Settings.Main["Auto Farm"] and _G.Auto_Dungeon_Superhuman ==
                nil then _G.StartFarm = value end
            if _G.Settings.Main["Auto Saber"] then
                _G.Start_Saber = true
            end
            if _G.Settings.Main["Auto Pole"] then
                _G.Start_Pole = true
            end
            if _G.Settings.Main["Auto New World"] then
                _G.Auto_New_World = true
            end
            if _G.Settings.Main["Auto Bartilo Quest"] then
                _G.Auto_Bartilo_Quest = true
            end
            if _G.Settings.Main["Auto Rengoku"] then
                _G.AutoRengoku = true
            end
            if _G.Settings.Main["Auto Go To Fruit"] then
                _G.Grab_Fruit = true
            end
            if _G.Settings.Main["Store Fruit"] then
                _G.StoreFruit = true
            end
            if _G.Settings.Main["Open Flamingo Access"] then
                _G.Open_Flamingo_Access = true
            end
            if _G.Settings.Main["Midnight Blade"] then
                _G.Midnight_Blade = true
            end
            if _G.Settings.Main["Auto Factory Farm"] then
                _G.Auto_Factory_Farm = true
            end
            if _G.Settings.Main["Thire World"] then
                _G.Start_GoTo_Thire_World = true
            end
            if _G.Settings.Main["Auto Tushita"] then
                _G.Auto_Tushita = true
            end
            if _G.Settings.Main["Auto Yama"] then _G.Auto_Yama = true end
            if _G.Settings.Main["Auto ElectricClaw"] then
                _G.Auto_Electric_Claw = true
            end
            if _G.Settings.Main["Auto Super Human"] then
                _G.Auto_Superhuman = true
            end
            if _G.Settings.Main["Auto Farm Mastery Sword All"] then
                _G.Auto_Farm_Mastery_Sword = true
            end
            if _G.Settings.Main["Buy Fruit"] then
                _G.Auto_Buy_Devil_Fruit = true
            end
            if _G.Settings.Main["Auto Soul Guitar"] then
                _G.Auto_Soul_Guitar = true
            end
        end

        if value == false then
            if _G.Settings.Main["Auto Farm"] then
                _G.StartFarm = false
            end
            if _G.Settings.Main["Auto Saber"] then
                _G.Start_Saber = false
            end
            if _G.Settings.Main["Auto Pole"] then
                _G.Start_Pole = false
            end
            if _G.Settings.Main["Auto New World"] then
                _G.Auto_New_World = false
            end
            if _G.Settings.Main["Auto Bartilo Quest"] then
                _G.Auto_Bartilo_Quest = false
            end
            if _G.Settings.Main["Auto Rengoku"] then
                _G.AutoRengoku = false
            end
            if _G.Settings.Main["Auto Go To Fruit"] then
                _G.Grab_Fruit = false
            end
            if _G.Settings.Main["Store Fruit"] then
                _G.StoreFruit = false
            end
            if _G.Settings.Main["Open Flamingo Access"] then
                _G.Open_Flamingo_Access = false
            end
            if _G.Settings.Main["Midnight Blade"] then
                _G.Midnight_Blade = false
            end
            if _G.Settings.Main["Auto Factory Farm"] then
                _G.Auto_Factory_Farm = false
            end
            if _G.Settings.Main["Thire World"] then
                _G.Start_GoTo_Thire_World = false
            end
            if _G.Settings.Main["Auto Tushita"] then
                _G.Auto_Tushita = false
            end
            if _G.Settings.Main["Auto Yama"] then
                _G.Auto_Yama = false
            end
            if _G.Settings.Main["Auto ElectricClaw"] then
                _G.Auto_Electric_Claw = false
            end
            if _G.Settings.Main["Auto Super Human"] then
                _G.Auto_Superhuman = false
            end
            if _G.Settings.Main["Auto Farm Mastery Sword All"] then
                _G.Auto_Farm_Mastery_Sword = false
            end
            if _G.Settings.Main["Buy Fruit"] then
                _G.Auto_Buy_Devil_Fruit = false
            end
            if _G.Settings.Main["Auto Soul Guitar"] then
                _G.Auto_Soul_Guitar = false
            end
        end

        StopTween(_G.Start_Kaitun)
    end)

    function EquipWeaponSword()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Sword" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(
                                                                        v.Name)) then
                    EquipWeapon(v.Name)
                end
            end
        end
    end

    local User = Page:CreateSection({Name = "User", Side = "Left"})

    local PlayersName = User:AddLabel({
        Name = "Players Name : " .. game.Players.LocalPlayer.Name
    })

    local HealthUser = User:AddLabel({Name = ""})

    function Health()
        HealthUser:Set("Health : " ..
                           game.Players.LocalPlayer.Character.Humanoid.Health)
    end

    spawn(function()
        pcall(function()
            while true do
                wait()
                Health()
            end
        end)
    end)

    local Race = User:AddLabel({Name = ""})

    function Races()
        Race:Set("Race : " .. game.Players.LocalPlayer.Data.Race.Value)
    end

    spawn(function()
        pcall(function()
            while true do
                wait()
                Races()
            end
        end)
    end)

    local Level = User:AddLabel({Name = ""})

    function Levels()
        Level:Set("Level : " .. game.Players.LocalPlayer.Data.Level.Value)
    end

    spawn(function()
        pcall(function()
            while true do
                wait()
                Levels()
            end
        end)
    end)

    local Kaitun = Page:CreateSection({Name = "Mains", Side = "Right"})

    local Level_S = Kaitun:AddLabel({Name = ""})

    spawn(function()
        pcall(function()
            while true do
                wait()
                if _G.Start_Kaitun then
                    Level_S:Set("Stats Farm : ✅")
                else
                    Level_S:Set("Stats Farm : ❌")
                end
            end
        end)
    end)

    local Level_SD = Kaitun:AddLabel({Name = "Stats : "})

    local Level_SDD = Kaitun:AddLabel({Name = "Stats Melee : "})

    local Fruit_Spawn = Kaitun:AddLabel({Name = "Stats Fruit Spawn : ❌"})

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Start_Kaitun and _G.Grab_Fruit and _G.Thire_World == nil then
                    for i, v in
                        pairs(game:GetService("Workspace"):GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            if v:IsA("Tool") then
                                Fruit_Spawn:Set("Stats Fruit Spawn : ✅")
                                Level_SD:Set("Stats : Go To Fruit ✅")
                                _G.StartFarm = false
                                if (v.Handle.CFrame.Position -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude >=
                                    1500 then
                                    Bypass(v.Handle.CFrame *
                                               CFrame.new(0, 50, 0))
                                    wait(0.2)
                                    toposition(v.Handle.CFrame)
                                    if (v.Handle.CFrame.Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 then
                                        wait(0.5)
                                        _G.StartFarm = true
                                    end
                                else
                                    toposition(v.Handle.CFrame)
                                    if (v.Handle.CFrame.Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 then
                                        wait(0.5)
                                        _G.StartFarm = true
                                    end
                                end
                                toposition(v.Handle.CFrame)
                                firetouchinterest(
                                    game.Players.LocalPlayer.Character
                                        .HumanoidRootPart, v.Handle, 0)
                            end
                        elseif not string.find(v.Name, "Fruit") and
                            not (_G.Auto_Bartilo_Quest or _G.AutoRengoku or
                                _G.Start_Saber or _G.Start_Pole or _G.Auto_Yama) then
                            Fruit_Spawn:Set("Stats Fruit Spawn : ❌")
                            _G.StartFarm = true
                        else
                            Fruit_Spawn:Set("Stats Fruit Spawn : ❌")
                        end
                    end
                end
            end
        end)
    end)

    local SetCFarme = 1
    local function GetIsLand(...)
        local RealtargetPos = {...}
        local targetPos = RealtargetPos[1]
        local RealTarget
        if type(targetPos) == "vector" then
            RealTarget = targetPos
        elseif type(targetPos) == "userdata" then
            RealTarget = targetPos.Position
        elseif type(targetPos) == "number" then
            RealTarget = CFrame.new(unpack(RealtargetPos))
            RealTarget = RealTarget.p
        end

        local ReturnValue
        local CheckInOut = math.huge;
        if game.Players.LocalPlayer.Team then
            for i, v in pairs(
                            game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(
                                tostring(game.Players.LocalPlayer.Team))
                                :GetChildren()) do
                local ReMagnitude =
                    (RealTarget - v:GetModelCFrame().p).Magnitude;
                if ReMagnitude < CheckInOut then
                    CheckInOut = ReMagnitude;
                    ReturnValue = v.Name
                end
            end
            if ReturnValue then return ReturnValue end
        end
    end
    function GetCake_CFrame_Mon()
        local targetMonsters = {
            "Baking Staff [Lv. 2250]", "Head Baker [Lv. 2275]",
            "Cake Guard [Lv. 2225]", "Cookie Crafter [Lv. 2200]"
        }
        local enemySpawns = workspace.EnemySpawns:GetChildren()
        local randomSpawnIndex = math.random(1, #enemySpawns)
        local selectedSpawn = enemySpawns[randomSpawnIndex]

        for _, _v1 in pairs(targetMonsters) do
            local result = string.gsub(_v1, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")
            local monQName = result4

            if selectedSpawn.Name == result4 then
                return selectedSpawn.CFrame
            end
        end
    end
    function InMyNetWork(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                500 then return true end
            return false
        end
    end
    spawn(function()
        while true do
            wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",
                                  math.huge)
            end
        end
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.StartFarm and _G.Bring_Mob and
                    BringMobFarm then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if not string.find(v.Name, "Boss") and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            500 then
                            if InMyNetWork(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size =
                                    Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer,
                                                  "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
            local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main
                               .Quest
            pcall(function()
                if _G.Start_Kaitun and _G.StartFarm then
                    if MyLevel < Level_Max then
                        Level_SD:Set("Stats : Farm ✅")
                    end
                    if _G.GoGat and (MyLevel >= 15 and MyLevel <= 300) then
                        if MyLevel >= 15 and MyLevel <= 300 then
                            Start_KaitunFast()
                        end
                    elseif MyLevel >= Level_Max then
                        Level_SD:Set("Stats : Farm Sword Mastery ✅")
                        for i, v in pairs(
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer("getInventory")) do
                            if type(v) == "table" then
                                if v.Type == "Sword" then
                                    if tonumber(v.Mastery) >= 1 and
                                        tonumber(v.Mastery) < 600 then
                                        Name = v.Name
                                        Mastery = v.Mastery
                                        if tonumber(v.Mastery) >= 1 and
                                            tonumber(v.Mastery) < 600 then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild(
                                                Name) or
                                                game.Players.LocalPlayer
                                                    .Character:FindFirstChild(
                                                    Name) then
                                                if game.Workspace.Enemies:FindFirstChild(
                                                    "Baking Staff [Lv. 2250]") or
                                                    game.Workspace.Enemies:FindFirstChild(
                                                        "Head Baker [Lv. 2275]") or
                                                    game.Workspace.Enemies:FindFirstChild(
                                                        "Cake Guard [Lv. 2225]") or
                                                    game.Workspace.Enemies:FindFirstChild(
                                                        "Cookie Crafter [Lv. 2200]") then
                                                    for i, v in pairs(
                                                                    game:GetService(
                                                                        "Workspace").Enemies:GetChildren()) do
                                                        if (v.Name ==
                                                            "Baking Staff [Lv. 2250]" or
                                                            v.Name ==
                                                            "Head Baker [Lv. 2275]" or
                                                            v.Name ==
                                                            "Cake Guard [Lv. 2225]" or
                                                            v.Name ==
                                                            "Cookie Crafter [Lv. 2200]") and
                                                            v.Humanoid.Health >
                                                            0 then
                                                            repeat
                                                                wait()
                                                                PosMon =
                                                                    v.HumanoidRootPart
                                                                        .CFrame
                                                                EquipWeaponSword()
                                                                v.HumanoidRootPart
                                                                    .Size =
                                                                    Vector3.new(
                                                                        60, 60,
                                                                        60)
                                                                BringMobFarm =
                                                                    true
                                                                toposition(
                                                                    v.HumanoidRootPart
                                                                        .CFrame *
                                                                        CFrame.new(
                                                                            0,
                                                                            30,
                                                                            5))
                                                            until _G.Start_Kaitun ==
                                                                false or
                                                                not v.Parent or
                                                                v.Humanoid
                                                                    .Health <= 0
                                                        end
                                                    end
                                                else
                                                    BringMobFarm = false
                                                    toposition(
                                                        GetCake_CFrame_Mon() *
                                                            CFrame.new(0, 30, 5))
                                                    wait(0.5)
                                                end
                                            else
                                                game:GetService(
                                                    "ReplicatedStorage").Remotes
                                                    .CommF_:InvokeServer(
                                                    "LoadItem", Name)
                                            end
                                        elseif v.Mastery > 599 then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild(
                                                Name) or
                                                game.Players.LocalPlayer
                                                    .Character:FindFirstChild(
                                                    Name) then
                                            else
                                                game:GetService(
                                                    "ReplicatedStorage").Remotes
                                                    .CommF_:InvokeServer(
                                                    "LoadItem", Name)
                                            end
                                        end
                                        break
                                    else
                                        Level_SD:Set(
                                            "Stats : Not Have Sword Mastery < 600 ❌")
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "SetSpawnPoint")
                        if game.ReplicatedStorage:FindFirstChild(
                            "Cake Prince [Lv. 2300] [Raid Boss]") or
                            game:GetService("Workspace").Enemies:FindFirstChild(
                                "Cake Prince [Lv. 2300] [Raid Boss]") or
                            game.ReplicatedStorage:FindFirstChild(
                                "Dough King [Lv. 2300] [Raid Boss]") or
                            game:GetService("Workspace").Enemies:FindFirstChild(
                                "Dough King [Lv. 2300] [Raid Boss]") then
                            if not game:GetService("Workspace").Enemies:FindFirstChild(
                                "Cake Prince [Lv. 2300] [Raid Boss]") then
                                for _, x in pairs(
                                                game.ReplicatedStorage:GetChildren()) do
                                    if x.Name ==
                                        "Cake Prince [Lv. 2300] [Raid Boss]" or
                                        x.Name ==
                                        "Dough King [Lv. 2300] [Raid Boss]" then
                                        if (x.HumanoidRootPart.CFrame.Position -
                                            game:GetService("Players").LocalPlayer
                                                .Character.HumanoidRootPart
                                                .Position).Magnitude > 1000 then
                                            wait(1.5)
                                            toposition(
                                                CFrame.new(-2145.89722,
                                                           70.0088272,
                                                           -12399.6016,
                                                           0.99999702,
                                                           1.58276379e-08,
                                                           0.00245277886,
                                                           -1.57982978e-08, 1,
                                                           -1.19813057e-08,
                                                           -0.00245277886,
                                                           1.19425199e-08,
                                                           0.99999702))
                                            return
                                        end
                                    end
                                end
                            end
                            for i, v in pairs(
                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name ==
                                    "Cake Prince [Lv. 2300] [Raid Boss]" then
                                    if v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            if (v.HumanoidRootPart.CFrame
                                                .Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude > 1000 then
                                                toposition(CFrame.new(
                                                               -2145.89722,
                                                               70.0088272,
                                                               -12399.6016,
                                                               0.99999702,
                                                               1.58276379e-08,
                                                               0.00245277886,
                                                               -1.57982978e-08,
                                                               1,
                                                               -1.19813057e-08,
                                                               -0.00245277886,
                                                               1.19425199e-08,
                                                               0.99999702))
                                                return
                                            end
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Size =
                                                Vector3.new(60, 60, 60)
                                            BringMobFarm = true
                                            toposition(
                                                v.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 30, 5))
                                            if (v.HumanoidRootPart.CFrame
                                                .Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude <= 50 then
                                            end
                                            sethiddenproperty(game.Players
                                                                  .LocalPlayer,
                                                              "SimulationRadius",
                                                              math.huge)
                                        until not _G.StartFarm or not v.Parent or
                                            v.Humanoid.Health <= 0
                                    end
                                else
                                    for _, x in pairs(
                                                    game.ReplicatedStorage:GetChildren()) do
                                        if x.Name ==
                                            "Cake Prince [Lv. 2300] [Raid Boss]" or
                                            x.Name ==
                                            "Dough King [Lv. 2300] [Raid Boss]" then
                                            if (x.HumanoidRootPart.CFrame
                                                .Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude > 1000 then
                                                toposition(CFrame.new(
                                                               -2145.89722,
                                                               70.0088272,
                                                               -12399.6016,
                                                               0.99999702,
                                                               1.58276379e-08,
                                                               0.00245277886,
                                                               -1.57982978e-08,
                                                               1,
                                                               -1.19813057e-08,
                                                               -0.00245277886,
                                                               1.19425199e-08,
                                                               0.99999702))
                                                return
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            for i, v in pairs(
                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Boss") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (QuestCheck()[2].Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <
                                    2000 then
                                    repeat
                                        task.wait()
                                        v.HumanoidRootPart.Size = Vector3.new(
                                                                      60, 60, 60)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        BringMobFarm = true
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.Transparency = 1
                                        if (v.HumanoidRootPart.CFrame.Position -
                                            game:GetService("Players").LocalPlayer
                                                .Character.HumanoidRootPart
                                                .Position).Magnitude >= 3000 then
                                            Bypass(
                                                v.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 30, 5))
                                            return
                                        end
                                        toposition(
                                            v.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 30, 5))

                                        if not _G.Start_Kaitun or
                                            not _G.Start_KaitunO or
                                            _G.Start_Kaitun or _G.Start_KaitunO then

                                        end
                                    until not _G.StartFarm or not v.Parent or
                                        v.Humanoid.Health <= 0 or
                                        not v:FindFirstChild("HumanoidRootPart")
                                else
                                    if QuestC.Visible == true then
                                        if (QuestCheck()[2].Position -
                                            game:GetService("Players").LocalPlayer
                                                .Character.HumanoidRootPart
                                                .Position).Magnitude >= 3000 then
                                            Bypass(QuestCheck()[2])
                                        end
                                        if game:GetService("Workspace").Enemies:FindFirstChild(
                                            QuestCheck()[3]) then
                                            for i, v in
                                                pairs(game:GetService(
                                                          "Workspace").Enemies:GetChildren()) do
                                                if v.Name == QuestCheck()[3] then
                                                    if v:FindFirstChild(
                                                        "Humanoid") and
                                                        v:FindFirstChild(
                                                            "HumanoidRootPart") and
                                                        v.Humanoid.Health > 0 then
                                                        repeat
                                                            task.wait()
                                                            if not string.find(
                                                                game:GetService(
                                                                    "Players").LocalPlayer
                                                                    .PlayerGui
                                                                    .Main.Quest
                                                                    .Container
                                                                    .QuestTitle
                                                                    .Title.Text,
                                                                QuestCheck()[6]) then
                                                                game:GetService(
                                                                    "ReplicatedStorage").Remotes
                                                                    .CommF_:InvokeServer(
                                                                    "AbandonQuest")
                                                            else
                                                                PosMon =
                                                                    v.HumanoidRootPart
                                                                        .CFrame
                                                                v.HumanoidRootPart
                                                                    .Size =
                                                                    Vector3.new(
                                                                        60, 60,
                                                                        60)
                                                                v.HumanoidRootPart
                                                                    .CanCollide =
                                                                    false
                                                                v.Humanoid
                                                                    .WalkSpeed =
                                                                    0
                                                                v.Head
                                                                    .CanCollide =
                                                                    false
                                                                BringMobFarm =
                                                                    true
                                                                EquipWeapon(
                                                                    _G.Select_Weapon)
                                                                v.HumanoidRootPart
                                                                    .Transparency =
                                                                    1
                                                                toposition(
                                                                    v.HumanoidRootPart
                                                                        .CFrame *
                                                                        CFrame.new(
                                                                            0,
                                                                            30,
                                                                            5))

                                                                if not _G.Start_Kaitun or
                                                                    not _G.Start_KaitunO or
                                                                    _G.Start_Kaitun or
                                                                    _G.Start_KaitunO then

                                                                end
                                                            end
                                                        until not _G.StartFarm or
                                                            not v.Parent or
                                                            v.Humanoid.Health <=
                                                            0 or QuestC.Visible ==
                                                            false or
                                                            not v:FindFirstChild(
                                                                "HumanoidRootPart")
                                                    end
                                                end
                                            end
                                        else
                                            UnEquipWeapon(_G.Select_Weapon)
                                            toposition(
                                                QuestCheck()[7][SetCFarme] *
                                                    CFrame.new(0, 30, 5))
                                            if (QuestCheck()[7][SetCFarme]
                                                .Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude <= 50 then
                                                if SetCFarme == nil or SetCFarme ==
                                                    '' then
                                                    SetCFarme = 1
                                                    print(SetCFarme)
                                                elseif SetCFarme >=
                                                    #QuestCheck()[7] then
                                                    SetCFarme = 1
                                                    print(SetCFarme)
                                                end
                                                SetCFarme = SetCFarme + 1

                                                print(SetCFarme)
                                                wait(0.5)
                                            end
                                        end
                                    else
                                        wait(0.5)
                                        if game:GetService("Players").LocalPlayer
                                            .Data.LastSpawnPoint.Value ==
                                            tostring(
                                                GetIsLand(QuestCheck()[7][1])) then
                                            game:GetService('ReplicatedStorage').Remotes
                                                .CommF_:InvokeServer(
                                                "StartQuest", QuestCheck()[4],
                                                QuestCheck()[1])
                                            wait(0.5)
                                            toposition(
                                                QuestCheck()[7][1] *
                                                    CFrame.new(0, 30, 20))
                                        else
                                            if (QuestCheck()[2].Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude >= 3000 then
                                                Bypass(QuestCheck()[2])
                                            else
                                                repeat
                                                    wait()
                                                    toposition(QuestCheck()[2])
                                                until (QuestCheck()[2].Position -
                                                    game:GetService("Players").LocalPlayer
                                                        .Character
                                                        .HumanoidRootPart
                                                        .Position).Magnitude <=
                                                    20 or not _G.StartFarm
                                            end
                                            repeat
                                                wait()
                                                toposition(QuestCheck()[2])
                                            until (QuestCheck()[2].Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude <= 20 or
                                                not _G.StartFarm
                                            if (QuestCheck()[2].Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude <= 1 then
                                                BringMobFarm = false
                                                wait(0.2)
                                                game:GetService(
                                                    'ReplicatedStorage').Remotes
                                                    .CommF_:InvokeServer(
                                                    "StartQuest",
                                                    QuestCheck()[4],
                                                    QuestCheck()[1])
                                                wait(0.5)
                                                toposition(
                                                    QuestCheck()[7][1] *
                                                        CFrame.new(0, 30, 20))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    _G.ChackPlayer = 0
    _G.ChackPlayer2 = _G.ChackPlayer
    function Start_KaitunFast()
        Level_SD:Set("Stats : Farm Fast ✅")
        local PlayersAll = game.Players:GetPlayers()
        local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
        local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main
                          .Quest.Container.QuestTitle.Title.Text
        local Player = string.split(quest, " ")[2]
        getgenv().SelectPly = string.split(quest, " ")[2]
        pcall(function()
            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
            local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main
                               .Quest
            CFrameMon = CFrame.new(-4837.64258, 850.10199, -1840.58374,
                                   -0.430530697, -4.42848638e-08, -0.90257591,
                                   -3.08042516e-08, 1, -3.43712756e-08,
                                   0.90257591, 1.30052875e-08, -0.430530697)

            if MyLevel >= 15 and MyLevel <= 69 then
                BringMobFarm55 = false
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "God's Guard [Lv. 450]" then
                        if v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("AbandonQuest")
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                BringMobFarm55 = true
                                EquipWeapon(_G.Select_Weapon)
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.Size =
                                    Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                toposition(
                                    v.HumanoidRootPart.CFrame *
                                        CFrame.new(0, 30, 5))
                                if not _G.Start_Kaitun or not _G.Start_KaitunO or
                                    _G.Start_Kaitun or _G.Start_KaitunO or
                                    _G.SuperFastAttack then end
                            until not v.Parent or not _G.Start_Kaitun or
                                v.Humanoid.Health < 0
                        end
                    else
                        BringMobFarm55 = false
                        if _G.Start_Kaitun and (CFrameMon.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                .Position).Magnitude > 500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance", Vector3.new(-4607.82275,
                                                               872.54248,
                                                               -1667.55688))
                        end
                        toposition(CFrameMon)
                    end
                end
            elseif MyLevel >= 70 and MyLevel <= 309 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    .Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "PlayerHunter")
                end
                if QuestC.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "PlayerHunter")
                elseif QuestC.Visible == true then
                    if string.find(quest, "Defeat") then
                        if game.Players[getgenv().SelectPly].Data.Level.Value >=
                            20 and
                            game.Players[getgenv().SelectPly].Data.Level.Value <=
                            MyLevel * 5 then
                            repeat
                                task.wait()
                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                    "HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("Buso")
                                end
                                if game:GetService("Players").LocalPlayer
                                    .PlayerGui.Main.PvpDisabled.Visible == true then
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("EnablePvp")
                                end
                                EquipWeapon(_G.Select_Weapon)

                                TPPlayer(
                                    game:GetService("Players")[getgenv().SelectPly]
                                        .Character.HumanoidRootPart.CFrame *
                                        CFrame.new(0, 0, 5))

                                game:GetService("Players")[getgenv().SelectPly]
                                    .Character.HumanoidRootPart.Size =
                                    Vector3.new(120, 120, 120)

                                game:service('VirtualInputManager')
                                    :SendKeyEvent(true, "X", false, game)
                                game:service('VirtualInputManager')
                                    :SendKeyEvent(false, "X", false, game)

                                game:service('VirtualInputManager')
                                    :SendKeyEvent(true, "Z", false, game)
                                game:service('VirtualInputManager')
                                    :SendKeyEvent(false, "Z", false, game)

                                if not _G.Start_Kaitun or not _G.Start_KaitunO or
                                    _G.Start_Kaitun or _G.Start_KaitunO or
                                    _G.SuperFastAttack then end
                            until game.Players[getgenv().SelectPly].Character
                                .Humanoid.Health <= 0 or
                                not game.Players[getgenv().SelectPly].Character
                                    .Humanoid.Health or not Start_KaitunFast()
                            _G.GoGat = false
                            _G.KillPlayerQ = true
                            if not game.Players:FindFirstChild(Player) then
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("PlayerHunter")
                            end
                        else
                            for i, v in pairs(PlayersAll) do
                                if v.Data.Level.Value >= 20 and
                                    v.Data.Level.Value <= PlayerLevel * 5 then
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("PlayerHunter")
                                    print(v)
                                else
                                    _G.ChackPlayer = _G.ChackPlayer + 1
                                    if _G.ChackPlayer >= 12 then
                                        _G.GoGat = false
                                    else
                                        print("Chack Player " .. _G.ChackPlayer)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end

    local Time = Kaitun:AddLabel({Name = ""})

    function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
        local Hour = math.floor(GameTime / (60 ^ 2)) % 24
        local Minute = math.floor(GameTime / (60 ^ 1)) % 60
        local Second = math.floor(GameTime / (60 ^ 0)) % 60
        Time:Set(Hour .. " Hr(s) " .. Minute .. " Min(s) " .. Second ..
                     " Sec(s) ")
    end

    spawn(function()
        pcall(function()
            while true do
                wait()
                UpdateTime()
            end
        end)
    end)

    local Race_Stast = Kaitun:AddLabel({Name = "Race Stast V2 : "})

    spawn(function()
        pcall(function()
            while true do
                wait()
                if game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild(
                    "Evolved") then
                    Race_Stast:Set("Race Stast V2 : ✅")
                else
                    Race_Stast:Set("Race Stast V2 : ❌")
                end
            end
        end)
    end)

    local Melee = Page:CreateSection({Name = "Fighting Style", Side = "Left"})

    local Superhuman = Melee:AddLabel({Name = "❌ | Superhuman"})

    local DeathStep = Melee:AddLabel({Name = "❌ | Death Step"})

    local SharkmanKarate = Melee:AddLabel({Name = "❌ | Sharkman Karate"})

    local ElectricClaw = Melee:AddLabel({Name = "❌ | Electric Claw"})

    local DragonTalon = Melee:AddLabel({Name = "❌ | Dragon Talon"})

    local GodHuman = Melee:AddLabel({Name = "❌ | God Human"})

    task.spawn(function()
        while task.wait() do

            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuySuperhuman", true) == 1 then
                Superhuman:Set("✅ | Superhuman")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuyDeathStep", true) == 1 then
                DeathStep:Set("✅ | Death Step")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuySharkmanKarate", true) == 1 then
                SharkmanKarate:Set("✅ | Sharkman Karate")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuyElectricClaw", true) == 1 then
                ElectricClaw:Set("✅ | Electric Claw")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuyDragonTalon", true) == 1 then
                DragonTalon:Set("✅ | Dragon Talon")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuyGodhuman", true) == 1 then
                GodHuman:Set("✅ | God Human")
            end
        end
    end)

    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet(
                                                       'https://games.roblox.com/v1/games/' ..
                                                           PlaceID ..
                                                           '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet(
                                                       'https://games.roblox.com/v1/games/' ..
                                                           PlaceID ..
                                                           '/servers/Public?sortOrder=Asc&limit=100&cursor=' ..
                                                           foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and
                Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i, v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _, Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        task.wait()
                        pcall(function()
                            task.wait()
                            game:GetService("TeleportService")
                                :TeleportToPlaceInstance(PlaceID, ID,
                                                         game.Players
                                                             .LocalPlayer)
                        end)
                        task.wait(4)
                    end
                end
            end
        end
        function Teleport()
            while task.wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then TPReturner() end
                end)
            end
        end
        Teleport()
    end

    local Quests = Page:CreateSection({Name = "Quest", Side = "Left"})

    local BartiloQuest = Quests:AddLabel({Name = "❌ | Bartilo"})

    local DonSwanQuest = Quests:AddLabel({Name = "❌ | Dow Swan"})

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and W2 and _G.Open_Flamingo_Access and
                    _G._G.Start_Kaitun == nil and
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "GetUnlockables").FlamingoAccess == nil and
                    game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                    FruitPrice = {}
                    FruitStore = {}
                    for i, v in next, game.ReplicatedStorage:WaitForChild(
                                    "Remotes").CommF_:InvokeServer("GetFruits") do
                        if v.Price >= 1000000 then
                            table.insert(FruitPrice, v.Name)
                        end
                    end
                    for i, v in pairs(
                                    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "getInventoryFruits")) do
                        for _, x in pairs(v) do
                            if _ == "Name" then
                                table.insert(FruitStore, x)
                            end
                        end
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "Cousin", "Buy")
                    for _, y in pairs(FruitPrice) do
                        for _, z in pairs(FruitStore) do
                            if y == z and
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("GetUnlockables")
                                    .FlamingoAccess == nil then
                                _G.StartFarm = false
                                _G.StoreFruit = false
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild(
                                    FruitStore) then
                                    Level_SD:Set(
                                        "Stats : Open Flamingo Access ✅")
                                    local args = {
                                        [1] = "LoadFruit",
                                        [2] = tostring(y)
                                    }

                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer(unpack(args))
                                else
                                    local args = {[1] = "TalkTrevor", [2] = "1"}

                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer(unpack(args))
                                    local args = {[1] = "TalkTrevor", [2] = "2"}

                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer(unpack(args))
                                    local args = {[1] = "TalkTrevor", [2] = "3"}

                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer(unpack(args))
                                end
                            end
                        end
                    end
                    local args = {[1] = "TalkTrevor", [2] = "1"}

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        unpack(args))
                    local args = {[1] = "TalkTrevor", [2] = "2"}

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        unpack(args))
                    local args = {[1] = "TalkTrevor", [2] = "3"}

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        unpack(args))
                    wait(0.1)
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "GetUnlockables").FlamingoAccess ~= nil then
                        _G.StoreFruit = true
                        _G.Open_Flamingo_Access = false
                    end
                end
            end)
        end
    end)

    local KillDonSwan = Quests:AddLabel({Name = "❌ | Kill Don Sawn"})

    local Phoenix = Quests:AddLabel({Name = "❌ | Phoenix Awaken"})

    local Kenhaki = Quests:AddLabel({Name = "❌ | Quest Observation Haki V2"})

    task.spawn(function()
        while task.wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BartiloQuestProgress", "Bartilo") == 3 then
                BartiloQuest:Set("✅ | Bartilo Quest")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "GetUnlockables").FlamingoAccess == nil then
            else
                DonSwanQuest:Set("✅ | Don Swan Quest")
            end
            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                "ZQuestProgress", "Check") == 1 then
                KillDonSwan:Set("✅ | Kill Don Swan")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "SickScientist", "Heal") == 1 then
                Phoenix:Set("✅ | Phoenix Awaken")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "CitizenQuestProgress", "Citizen") == 3 then
                Kenhaki:Set("✅ | Quest Observation Haki V2")
            end
        end
    end)

    local Swordx = Page:CreateSection({Name = "Legendary Sword", Side = "Left"})

    local TrueTripleKatana =
        Swordx:AddLabel({Name = "❌ | True Triple Katana"})

    local Shisui = Swordx:AddLabel({Name = "❌ | Shisui"})

    local Wando = Swordx:AddLabel({Name = "❌ | Wando"})

    local Saddi = Swordx:AddLabel({Name = "❌ | Saddi"})

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if Check_Sword("Shisui") then
                    Shisui:Set("✅ | Shisui")
                end
                if Check_Sword("Saddi") then
                    Saddi:Set("✅ |: Saddi")
                end
                if Check_Sword("Wando") then
                    Wando:Set("✅ | Wando")
                end
                if Check_Sword("True Triple Katana") then
                    TrueTripleKatana:Set("✅ | True Triple Katana")
                end
            end)
        end
    end)

    local SwordReal = Page:CreateSection({Name = "Sword", Side = "Left"})

    local Saber = SwordReal:AddLabel({Name = "❌ | Saber"})

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Start_Saber and
                    game.Players.LocalPlayer.Data.Level.Value >= 200 and
                    Check_Sword("Saber") == nil and W1 then
                    _G.StartFarm = false
                end
            end)
        end
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Start_Saber and
                    game.Players.LocalPlayer.Data.Level.Value >= 200 and
                    Check_Sword("Saber") == nil and W1 then
                    _G.StartFarm = false
                    Level_SD:Set("Stats : Saber")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "AbandonQuest")
                    if game:GetService("Workspace").Map.Jungle.Final.Part
                        .Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates
                            .Door.Transparency == 0 then
                            if (CFrame.new(-1480.06018, 47.9773636, 4.53454018,
                                           -0.386713833, 1.11673025e-07,
                                           0.922199786, 7.96717785e-08, 1,
                                           -8.76847395e-08, -0.922199786,
                                           3.95643944e-08, -0.386713833)
                                .Position -
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude <= 100 then
                                toposition(
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.CFrame)
                                task.wait(1)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = game:GetService(
                                                                   "Workspace").Map
                                                                   .Jungle
                                                                   .QuestPlates
                                                                   .Plate1
                                                                   .Button
                                                                   .CFrame
                                task.wait(1)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = game:GetService(
                                                                   "Workspace").Map
                                                                   .Jungle
                                                                   .QuestPlates
                                                                   .Plate2
                                                                   .Button
                                                                   .CFrame
                                task.wait(1)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = game:GetService(
                                                                   "Workspace").Map
                                                                   .Jungle
                                                                   .QuestPlates
                                                                   .Plate3
                                                                   .Button
                                                                   .CFrame
                                task.wait(1)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = game:GetService(
                                                                   "Workspace").Map
                                                                   .Jungle
                                                                   .QuestPlates
                                                                   .Plate4
                                                                   .Button
                                                                   .CFrame
                                task.wait(1)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = game:GetService(
                                                                   "Workspace").Map
                                                                   .Jungle
                                                                   .QuestPlates
                                                                   .Plate5
                                                                   .Button
                                                                   .CFrame
                                task.wait(1)
                            end
                            local CFrameSaber =
                                CFrame.new(-1480.06018, 47.9773636, 4.53454018,
                                           -0.386713833, 1.11673025e-07,
                                           0.922199786, 7.96717785e-08, 1,
                                           -8.76847395e-08, -0.922199786,
                                           3.95643944e-08, -0.386713833)
                            if _G.Start_Kaitun and _G.Start_Saber and
                                (CFrameSaber.Position -
                                    game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position).Magnitude >
                                1200 then
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("AbandonQuest")
                                toposition(CFrameSaber)
                            end
                            toposition(CFrameSaber)
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part
                                .Transparency == 0 then
                                if game:GetService("Players").LocalPlayer
                                    .Backpack:FindFirstChild("Torch") or
                                    game.Players.LocalPlayer.Character:FindFirstChild(
                                        "Torch") then
                                    EquipWeapon("Torch")
                                    toposition(
                                        CFrame.new(1113.7229, 5.04679585,
                                                   4350.33691, -0.541527212,
                                                   5.27007726e-09, 0.840683222,
                                                   8.74004868e-08, 1,
                                                   5.00303372e-08, -0.840683222,
                                                   1.00568911e-07, -0.541527212))
                                    UnEquipWeapon("Torch")
                                    EquipWeapon("Torch")
                                    task.wait(0.5)
                                else
                                    toposition(
                                        CFrame.new(-1610.56824, 12.1773882,
                                                   162.830322, -0.907543361,
                                                   -2.88120088e-08,
                                                   -0.419958383,
                                                   -4.66550922e-08, 1,
                                                   3.22163096e-08, 0.419958383,
                                                   4.88308949e-08, -0.907543361))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("ProQuestProgress",
                                                         "SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "GetCup")
                                    task.wait(0.5)
                                    EquipWeapon("Cup")
                                    task.wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "FillCup",
                                                             game:GetService(
                                                                 "Players").LocalPlayer
                                                                 .Character.Cup)
                                    task.wait(0)
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "ProQuestProgress", "RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "RichSon") == 0 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(
                                            "Mob Leader [Lv. 120] [Boss]") or
                                            game:GetService("ReplicatedStorage")
                                                :FindFirstChild(
                                                    "Mob Leader [Lv. 120] [Boss]") then
                                            for i, v in
                                                pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name ==
                                                    "Mob Leader [Lv. 120] [Boss]" then
                                                    if v:FindFirstChild(
                                                        "Humanoid") and
                                                        v:FindFirstChild(
                                                            "HumanoidRootPart") and
                                                        v.Humanoid.Health > 0 then
                                                        repeat
                                                            task.wait()
                                                            EquipWeapon(
                                                                _G.Select_Weapon)
                                                            v.HumanoidRootPart
                                                                .CanCollide =
                                                                false
                                                            v.Humanoid.WalkSpeed =
                                                                0
                                                            v.Head.CanCollide =
                                                                false
                                                            v.HumanoidRootPart
                                                                .Size =
                                                                Vector3.new(100,
                                                                            100,
                                                                            100)
                                                            v.HumanoidRootPart
                                                                .Transparency =
                                                                1
                                                            EquipWeapon(
                                                                _G.Select_Weapon)
                                                            toposition(
                                                                v.HumanoidRootPart
                                                                    .CFrame *
                                                                    CFrame.new(
                                                                        0, 35, 5))
                                                            if not _G.FastAttack or
                                                                not _G.FastAttackO or
                                                                _G.FastAttack or
                                                                _G.FastAttackO or
                                                                _G.SuperFastAttack then
                                                                game:GetService 'VirtualUser'
                                                                    :CaptureController()
                                                                game:GetService 'VirtualUser'
                                                                    :Button1Down(
                                                                        Vector2.new(
                                                                            1280,
                                                                            672))
                                                            end
                                                        until v.Humanoid.Health <=
                                                            0 or _G.AutoSaber ==
                                                            false
                                                    end
                                                else
                                                    for i, v in pairs(
                                                                    game:GetService(
                                                                        "ReplicatedStorage")
                                                                        :GetChildren()) do
                                                        if v.Name ==
                                                            "Mob Leader [Lv. 120] [Boss]" then
                                                            toposition(
                                                                v.HumanoidRootPart
                                                                    .CFrame *
                                                                    CFrame.new(
                                                                        0, 35, 5))
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ProQuestProgress",
                                                             "RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "ProQuestProgress", "RichSon")
                                        task.wait(0.5)
                                        EquipWeapon("Relic")
                                        task.wait(0.5)
                                        toposition(
                                            CFrame.new(-1406.37512, 29.9773273,
                                                       4.45027685, 0.877344251,
                                                       -3.82776442e-08,
                                                       0.479861468,
                                                       4.93218133e-09, 1,
                                                       7.07504668e-08,
                                                       -0.479861468,
                                                       -5.9705755e-08,
                                                       0.877344251))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(
                            "Saber Expert [Lv. 200] [Boss]") or
                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                "Saber Expert [Lv. 200] [Boss]") then
                            for i, v in pairs(
                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(
                                                                      60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        toposition(
                                            v.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 30, 5))
                                        if not _G.FastAttack or
                                            not _G.FastAttackO or _G.FastAttack or
                                            _G.FastAttackO or _G.SuperFastAttack then
                                            game:GetService 'VirtualUser'
                                                :CaptureController()
                                            game:GetService 'VirtualUser'
                                                :Button1Down(Vector2.new(1280,
                                                                         672))
                                        end
                                    until v.Humanoid.Health <= 0 or _G.AutoSaber ==
                                        false
                                    _G.Start_Saber = false
                                    _G.StartFarm = true
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "ProQuestProgress", "PlaceRelic")
                                    end
                                else
                                    toposition(game:GetService(
                                                   "ReplicatedStorage")
                                                   :FindFirstChild(
                                                       "Saber Expert [Lv. 200] [Boss]").HumanoidRootPart
                                                   .CFrame *
                                                   CFrame.new(0, 30, 5))
                                end
                            end
                        else
                            repeat
                                task.wait()
                                _G.Start_Saber = false
                                _G.StartFarm = true
                            until _G.Start_Saber == true or
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Saber Expert [Lv. 200] [Boss]")
                            _G.Start_Saber = true
                            _G.StartFarm = false
                        end
                    end
                elseif _G.Start_Kaitun and _G.Start_Saber and
                    Check_Sword("Saber") == true then
                    _G.Start_Saber = false
                end
            end)
        end
    end)

    local Rengoku = SwordReal:AddLabel({Name = "❌ | Rengoku"})

    local SetCFarmeBoneS = 1
    function GetBone_CFrame_Mon()
        local matchingCFrames = {}
        local Mon = {"Snow Lurker [Lv. 1375]", "Arctic Warrior [Lv. 1350]"}

        for _, Mon in ipairs(Mon) do
            local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+",
                                                                        "")
                               :gsub("%s+", "")

            for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
                if v.Name == result then
                    table.insert(matchingCFrames, v.CFrame)
                end
            end
        end

        return matchingCFrames
    end
    spawn(function()
        pcall(function()
            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
            while wait() do
                if _G.Start_Kaitun and _G.AutoRengoku and Check_Sword("Rengoku") ==
                    nil then
                    if MyLevel >= 958 then
                        _G.StartFarm = false
                        _G.Grab_Fruit = false
                        Level_SD:Set("Stats : Rengoku")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "AbandonQuest")
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Hidden Key") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Hidden Key") then
                            EquipWeapon("Hidden Key")
                            toposition(CFrame.new(6571.1201171875,
                                                  299.23028564453,
                                                  -6967.841796875))
                            wait(5)
                            _G.StartFarm = true
                            _G.Grab_Fruit = true
                            _G.AutoRengoku = false
                        elseif game:GetService("Workspace").Enemies:FindFirstChild(
                            "Snow Lurker [Lv. 1375]") or
                            game:GetService("Workspace").Enemies:FindFirstChild(
                                "Arctic Warrior [Lv. 1350]") then
                            for i, v in pairs(
                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name ==
                                    "Arctic Warrior [Lv. 1350]") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        _G.Grab_Fruit = false
                                        Level_SD:Set("Stats : Rengoku")
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(
                                                                      50, 50, 50)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        toposition(
                                            v.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 30, 7))
                                        if not _G.FastAttack or
                                            not _G.FastAttackO or _G.FastAttack or
                                            _G.FastAttackO or _G.SuperFastAttack then
                                        end
                                        BringMobFarm556 = true
                                    until game:GetService("Players").LocalPlayer
                                        .Backpack:FindFirstChild("Hidden Key") or
                                        _G.AutoRengoku == false or not v.Parent or
                                        v.Humanoid.Health <= 0
                                    BringMobFarm556 = false
                                end
                            end
                        else
                            BringMobFarm556 = false
                            if (GetBone_CFrame_Mon()[SetCFarmeBoneS].Position -
                                game:GetService("Players").LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude >=
                                1500 then
                                Bypass(GetBone_CFrame_Mon()[SetCFarmeBoneS])
                            else
                                toposition(GetBone_CFrame_Mon()[SetCFarmeBoneS])
                            end
                            if (GetBone_CFrame_Mon()[SetCFarmeBoneS].Position -
                                game:GetService("Players").LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude <= 50 then
                                if SetCFarmeBoneS == nil or SetCFarmeBoneS == '' then
                                    SetCFarmeBoneS = 1
                                elseif SetCFarmeBoneS >= #GetBone_CFrame_Mon() then
                                    SetCFarmeBoneS = 1
                                end
                                SetCFarmeBoneS = SetCFarmeBoneS + 1

                                print(SetCFarmeBoneS)
                                wait(0.5)
                            end
                        end
                    end
                elseif _G.Start_Kaitun and _G.AutoRengoku and
                    Check_Sword("Rengoku") == true then
                    _G.AutoRengoku = false
                end
            end
        end)
    end)

    local MidnightBlade = SwordReal:AddLabel({Name = "❌ | Midnight Blade"})

    spawn(function()
        while wait() do
            local MyLevel = game.Players.localPlayer.Data.Level.value
            if _G.Start_Kaitun and _G.Midnight_Blade then
                pcall(function()
                    if MyLevel >= 1349 and Check_Sword("Midnight Blade") == nil then
                        _G.Grab_Fruit = false
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "Ectoplasm", "Check") <= 100 then
                            _G.StartFarm = false
                            if game:GetService("Workspace").Enemies:FindFirstChild(
                                "Ship Deckhand [Lv. 1250]") or
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Ship Engineer [Lv. 1275]") or
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Ship Steward [Lv. 1300]") or
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Ship Officer [Lv. 1325]") then
                                if (CFrame.new(911.35827636719, 125.95812988281,
                                               33159.5390625).Position -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude >=
                                    1500 then
                                    Bypass(
                                        CFrame.new(911.35827636719,
                                                   125.95812988281,
                                                   33159.5390625))
                                    repeat
                                        wait()
                                        Bypass(
                                            CFrame.new(911.35827636719,
                                                       125.95812988281,
                                                       33159.5390625))
                                    until (CFrame.new(911.35827636719,
                                                      125.95812988281,
                                                      33159.5390625).Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 or not _G.Start_Kaitun
                                end
                                for i, v in pairs(
                                                game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(v.Name, "Ship") then
                                        repeat
                                            task.wait()
                                            if string.find(v.Name, "Ship") then
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.CanCollide =
                                                    false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size =
                                                    Vector3.new(50, 50, 50)
                                                if AttackRandomType == 1 then
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))
                                                elseif AttackRandomType == 2 then
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(40, 30, 0))
                                                elseif AttackRandomType == 3 then
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30,
                                                                       -40))
                                                else
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))
                                                end
                                                if not _G.FastAttack or
                                                    not _G.FastAttackO or
                                                    _G.FastAttack or
                                                    _G.FastAttackO or
                                                    _G.SuperFastAttack then end
                                                PosMon = v.HumanoidRootPart
                                                             .CFrame
                                                BringMobFarm565 = true
                                            else
                                                BringMobFarm565 = false
                                                toposition(CFrame.new(
                                                               911.35827636719,
                                                               125.95812988281,
                                                               33159.5390625))
                                            end
                                        until _G.Midnight_Blade == false or
                                            not v.Parent or v.Humanoid.Health <=
                                            0
                                    end
                                end
                            else
                                BringMobFarm565 = false
                                if (CFrame.new(911.35827636719, 125.95812988281,
                                               33159.5390625).Position -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude >=
                                    1500 then
                                    Bypass(
                                        CFrame.new(911.35827636719,
                                                   125.95812988281,
                                                   33159.5390625))
                                    repeat
                                        wait()
                                        Bypass(
                                            CFrame.new(911.35827636719,
                                                       125.95812988281,
                                                       33159.5390625))
                                    until (CFrame.new(911.35827636719,
                                                      125.95812988281,
                                                      33159.5390625).Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 or not _G.Start_Kaitun
                                else
                                    repeat
                                        wait()
                                        toposition(
                                            CFrame.new(911.35827636719,
                                                       125.95812988281,
                                                       33159.5390625))
                                    until (CFrame.new(911.35827636719,
                                                      125.95812988281,
                                                      33159.5390625).Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 or not _G.Start_Kaitun
                                end
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes
                            .CommF_:InvokeServer("Ectoplasm", "Check") >= 100 and
                            Check_Sword("Midnight Blade") == nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "Ectoplasm", "BuyCheck", 3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "Ectoplasm", "Buy", 3)
                            _G.Grab_Fruit = true
                            wait(1.5)
                            _G.Midnight_Blade = false
                            wait(2.5)
                            _G.StartFarm = true
                        end
                    elseif Check_Sword("Midnight Blade") == true then
                        _G.Midnight_Blade = false
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "Ectoplasm", "Check") >= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "Ectoplasm", "BuyCheck", 3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "Ectoplasm", "Buy", 3)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Bring_Mob and BringMobFarm565 then
                    for i, v in pairs(
                                    game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Ship Deckhand [Lv. 1250]" or v.Name ==
                            "Ship Engineer [Lv. 1275]" or v.Name ==
                            "Ship Steward [Lv. 1300]" or v.Name ==
                            "Ship Officer [Lv. 1325]") and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            250 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer,
                                              "SimulationRadius", math.huge)
                        end
                    end
                end
            end)
        end
    end)

    local DragonTrident = SwordReal:AddLabel({Name = "❌ | Dragon Trident"})

    local Yama = SwordReal:AddLabel({Name = "❌ | Yama"})

    local Yama_All_Mon = {
        ["Mon Quest"] = {
            "Diablo [Lv. 1750]", "Deandre [Lv. 1750]", "Urban [Lv. 1750]"
        },
        ["Mon"] = {"Diablo", "Deandre", "Urban"},
        ["Item"] = "God's Chalice"
    }

    spawn(function()
        while wait() do
            if _G.Start_Kaitun and _G.Auto_Yama then
                pcall(function()
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "EliteHunter", "Progress") >= 30 then
                        fireclickdetector(
                            game:GetService("Workspace").Map.Waterfall
                                .SealedKatana.Handle.ClickDetector)
                    else
                        local QuestUI = game:GetService("Players").LocalPlayer
                                            .PlayerGui.Main.Quest
                        for _, _l1 in ipairs(Yama_All_Mon["Mon Quest"]) do
                            for _, l in ipairs(Yama_All_Mon["Mon"]) do
                                if QuestUI.Visible == true and _G.StartFarm ~=
                                    true then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(
                                        _l1) or
                                        game:GetService("ReplicatedStorage")
                                            :FindFirstChild(_l1) then
                                        for _, _v1 in
                                            pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if _v1.Name == _l1 then
                                                if _v1:FindFirstChild("Humanoid") and
                                                    _v1:FindFirstChild(
                                                        "HumanoidRootPart") and
                                                    _v1.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        _v1.HumanoidRootPart
                                                            .Size = Vector3.new(
                                                                        60, 60,
                                                                        60)
                                                        _v1.HumanoidRootPart
                                                            .CanCollide = false
                                                        _v1.Head.CanCollide =
                                                            false
                                                        BringMobFarm = true
                                                        EquipWeapon(
                                                            _G.Select_Weapon)
                                                        _v1.HumanoidRootPart
                                                            .Transparency = 1
                                                        toposition(
                                                            _v1.HumanoidRootPart
                                                                .CFrame *
                                                                CFrame.new(0,
                                                                           30, 5))
                                                        -- AutoHaki()
                                                        if (_v1.HumanoidRootPart
                                                            .CFrame.Position -
                                                            game:GetService(
                                                                "Players").LocalPlayer
                                                                .Character
                                                                .HumanoidRootPart
                                                                .Position).Magnitude <=
                                                            50 then end
                                                    until not _G.Auto_Yama or
                                                        _v1.Humanoid.Health <= 0 or
                                                        not _v1.Parent
                                                end
                                            else
                                                if (game:GetService(
                                                    "ReplicatedStorage")
                                                    :FindFirstChild(_l1).HumanoidRootPart
                                                    .CFrame.Position -
                                                    game:GetService("Players").LocalPlayer
                                                        .Character
                                                        .HumanoidRootPart
                                                        .Position).Magnitude >
                                                    2000 then
                                                    Bypass(game:GetService(
                                                               "ReplicatedStorage")
                                                               :FindFirstChild(
                                                                   _l1).HumanoidRootPart
                                                               .CFrame)
                                                    return
                                                end
                                                toposition(game:GetService(
                                                               "ReplicatedStorage")
                                                               :FindFirstChild(
                                                                   _l1).HumanoidRootPart
                                                               .CFrame *
                                                               CFrame.new(0, 30,
                                                                          5))
                                            end
                                        end
                                    end
                                else
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(
                                        Yama_All_Mon["Item"]) or
                                        game.Players.LocalPlayer.Character:FindFirstChild(
                                            Yama_All_Mon["Item"]) then
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "requestEntrance", Vector3.new(
                                                -12471.169921875,
                                                374.94024658203, -7551.677734375))
                                        _G.Auto_Yama = false
                                        return
                                    else
                                        if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                            "EliteHunter") ==
                                            "I don't have anything for you right now. Come back later." and
                                            not (game:GetService("Workspace").Enemies:FindFirstChild(
                                                _l1) or
                                                game:GetService(
                                                    "ReplicatedStorage")
                                                    :FindFirstChild(_l1)) then
                                            _G.StartFarm = true
                                        else
                                            _G.StartFarm = false
                                            game:GetService("ReplicatedStorage").Remotes
                                                .CommF_:InvokeServer(
                                                "EliteHunter")
                                            if (game:GetService(
                                                "ReplicatedStorage")
                                                :FindFirstChild(_l1).HumanoidRootPart
                                                .CFrame.Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude > 2000 then
                                                Bypass(game:GetService(
                                                           "ReplicatedStorage")
                                                           :FindFirstChild(_l1).HumanoidRootPart
                                                           .CFrame)
                                                return
                                            end
                                            toposition(game:GetService(
                                                           "ReplicatedStorage")
                                                           :FindFirstChild(_l1).HumanoidRootPart
                                                           .CFrame *
                                                           CFrame.new(0, 30, 5))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local Tushita = SwordReal:AddLabel({Name = "❌ | Tushita"})

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Tushita and _G.Start_Kaitun and
                    Check_Sword("Tushita") == nil then
                    if game:GetService("Workspace").Map.Turtle.TushitaGate:GetChildren()[2]
                        .Transparency == 1 or
                        game:GetService("Workspace").Map.Turtle.TushitaGate:GetChildren()[1]
                            .Transparency == 1 then
                        _G.StartFarm = false
                        _G.Auto_Yama = false
                        if #game:GetService("Workspace").Enemies:GetChildren() >
                            0 then
                            if game:GetService("Workspace").Enemies:FindFirstChild(
                                "Longma [Lv. 2000] [Boss]") or
                                game:GetService("ReplicatedStorage")
                                    :FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                for _, v in pairs(
                                                game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Longma [Lv. 2000] [Boss]" and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            v.HumanoidRootPart.Size =
                                                Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.CanCollide =
                                                false
                                            v.Head.CanCollide = false
                                            BringMobFarm = true
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Transparency = 1
                                            toposition(
                                                v.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 30, 5))
                                            if (v.HumanoidRootPart.CFrame
                                                .Position -
                                                game:GetService("Players").LocalPlayer
                                                    .Character.HumanoidRootPart
                                                    .Position).Magnitude <= 50 then

                                            end
                                        until not _G.Auto_Tushita or
                                            not v.Humanoid.Health <= 0 or
                                            not v.Parent
                                    else
                                        if (game:GetService("ReplicatedStorage")
                                            :FindFirstChild(
                                                "Longma [Lv. 2000] [Boss]").HumanoidRootPart
                                            .CFrame.Position -
                                            game:GetService("Players").LocalPlayer
                                                .Character.HumanoidRootPart
                                                .Position).Magnitude > 2000 then
                                            Bypass(game:GetService(
                                                       "ReplicatedStorage")
                                                       :FindFirstChild(
                                                           "Longma [Lv. 2000] [Boss]").HumanoidRootPart
                                                       .CFrame *
                                                       CFrame.new(0, 30, 5))
                                            return
                                        end
                                        toposition(game:GetService(
                                                       "ReplicatedStorage")
                                                       :FindFirstChild(
                                                           "Longma [Lv. 2000] [Boss]").HumanoidRootPart
                                                       .CFrame *
                                                       CFrame.new(0, 30, 5))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(
                            "rip_indra True Form [Lv. 5000] [Raid Boss]") or
                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                "rip_indra True Form [Lv. 5000] [Raid Boss]") then
                            _G.StartFarm = false
                            _G.Auto_Yama = false
                            if game:GetService("Players").LocalPlayer.Data
                                .LastSpawnPoint.Value == tostring(
                                GetIsLand(
                                    CFrame.new(-13274.528320313,
                                               531.82073974609, -7579.22265625))) then
                                wait(1)
                                repeat
                                    toposition(CFrame.new(-10752, 417, -9366))
                                    wait()
                                until not _G.Auto_Holy_Torch or
                                    (game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position -
                                        Vector3.new(-10752, 417, -9366)).Magnitude <=
                                    1
                                wait(1)
                                repeat
                                    toposition(CFrame.new(-11672, 334, -9474))
                                    wait()
                                until not _G.Auto_Holy_Torch or
                                    (game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position -
                                        Vector3.new(-11672, 334, -9474)).Magnitude <=
                                    1
                                wait(1)
                                repeat
                                    toposition(CFrame.new(-12132, 521, -10655))
                                    wait()
                                until not _G.Auto_Holy_Torch or
                                    (game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position -
                                        Vector3.new(-12132, 521, -10655)).Magnitude <=
                                    1
                                wait(1)
                                repeat
                                    toposition(CFrame.new(-13336, 486, -6985))
                                    wait()
                                until not _G.Auto_Holy_Torch or
                                    (game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position -
                                        Vector3.new(-13336, 486, -6985)).Magnitude <=
                                    1
                                wait(1)
                                repeat
                                    toposition(CFrame.new(-13489, 332, -7925))
                                    wait()
                                until not _G.Auto_Holy_Torch or
                                    (game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position -
                                        Vector3.new(-13489, 332, -7925)).Magnitude <=
                                    1
                            else
                                if (CFrame.new(5148.03613, 162.352493,
                                               910.548218, 0, 0, -1, 0, 1, 0, 1,
                                               0, 0).Position -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude >
                                    2000 then
                                    Bypass(
                                        CFrame.new(5148.03613, 162.352493,
                                                   910.548218, 0, 0, -1, 0, 1,
                                                   0, 1, 0, 0))
                                    return
                                end
                                toposition(
                                    CFrame.new(5148.03613, 162.352493,
                                               910.548218, 0, 0, -1, 0, 1, 0, 1,
                                               0, 0))
                                wait(2.5)
                                return
                            end
                        end
                    end
                else
                    if not _G.Auto_Yama then
                        _G.StartFarm = true
                    end
                    _G.Auto_Tushita = false
                end
            end)
        end
    end)

    local BuddySword = SwordReal:AddLabel({Name = "❌ | Buddy Sword"})

    local Canvander = SwordReal:AddLabel({Name = "❌ | Canvander"})

    local SpikeyTrident = SwordReal:AddLabel({Name = "❌ | wSpikey Trident"})

    local HallowScythe = SwordReal:AddLabel({Name = "❌ | Hallow Scythe"})

    local DarkDagger = SwordReal:AddLabel({Name = "❌ | Dark Dagger"})

    local CursedDualKatana = SwordReal:AddLabel({
        Name = "❌ | Cursed Dual Katana"
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if Check_Sword("Saber") then
                    Saber:Set("✅ | Saber")
                end
                if Check_Sword("Rengoku") then
                    Rengoku:Set("✅ | Rengoku")
                end
                if Check_Sword("Midnight Blade") then
                    MidnightBlade:Set("✅ | Midnight Blade")
                end
                if Check_Sword("Dragon Trident") then
                    DragonTrident:Set("✅ | Dragon Trident")
                end
                if Check_Sword("Yama") then
                    Yama:Set("✅ | Yama")
                end
                if Check_Sword("Buddy Sword") then
                    BuddySword:Set("✅ | Buddy Sword")
                end
                if Check_Sword("Canvander") then
                    Canvander:Set("✅ | Canvander")
                end
                if Check_Sword("Spikey Trident") then
                    SpikeyTrident:Set("✅ | Spikey Trident")
                end
                if Check_Sword("Hallow Scythe") then
                    HallowScythe:Set("✅ | Hallow Scythe")
                end
                if Check_Sword("Dark Dagger") then
                    DarkDagger:Set("✅ | Dark Dagger")
                end
                if Check_Sword("Tushita") then
                    Tushita:Set("✅ | Tushita")
                end
                if Check_Sword("Cursed Dual Katana") then
                    CursedDualKatana:Set("✅ | Cursed Dual Katana")
                end
            end)
        end
    end)

    local Gun = Page:CreateSection({Name = "Gun", Side = "Right"})

    local Kabucha = Gun:AddLabel({Name = "❌ | Kabucha Gun"})

    local AcidumRifle = Gun:AddLabel({Name = "❌ | Acidum Rifle"})

    spawn(function()
        while wait() do
            if _G.Auto_Factory_Farm and _G.Start_Kaitun and W2 then
                pcall(function()
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        _G.StartFarm = false
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if _G.FactoryCore and v.Name == "Core" and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    ----AutoHaki()
                                    EquipWeapon(_G.Select_Weapon)
                                    toposition(
                                        v.HumanoidRootPart.CFrame *
                                            CFrame.new(0, 10, 10))
                                    game:GetService 'VirtualUser'
                                        :CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(
                                        Vector2.new(1280, 672))
                                until not _G.FactoryCore or v.Humanoid.Health <=
                                    0 or _G.Auto_Factory_Farm == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") and
                        game.ReplicatedStorage:FindFirstChild("Core")
                            :FindFirstChild("Humanoid") then
                        if (CFrame.new(502.7349853515625, 143.0749053955078,
                                       -379.078125).Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart
                                .Position).Magnitude > 2000 then
                            Bypass(CFrame.new(502.7349853515625,
                                              143.0749053955078, -379.078125))
                        else
                            toposition(CFrame.new(502.7349853515625,
                                                  143.0749053955078, -379.078125))
                        end
                    else
                        if (not _G.AutoRengoku and _G.AutoRengoku == nil) and
                            _G._G.Start_Kaitun == nil and _G.Thire_World == nil and
                            W2 then _G.StartFarm = true end
                    end
                end)
            end
        end
    end)

    local BizarreRifle = Gun:AddLabel({Name = "❌ | Bizarre Rifle"})

    local SoulGuitar = Gun:AddLabel({Name = "❌ | Soul Guitar"})

    function getTrophies(Amount)
        for i, v in pairs(game:GetService("Workspace").Map["Haunted Castle"]
                              .Trophies.Quest:GetChildren()) do
            if v.Handle.Orientation then
                local NameTro = tonumber(tostring(v.Name:match("%d+")))
                if tonumber(Amount) == tonumber(NameTro) then
                    if tonumber(v.Handle.Orientation.Y) == 90 or
                        tonumber(v.Handle.Orientation.Y) == -90 then
                        return {"A", 180, -180}
                    elseif tonumber(v.Handle.Orientation.Y) == 0 or
                        tonumber(v.Handle.Orientation.Y) == 180 then
                        return {"B", -90, 90}
                    end
                end
            end
        end
    end

    function InMyNetWork2(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                750 then return true end
            return false
        end
    end
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringNormal and BringMobFarmGuitar then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        PositionMon = 750
                        if not string.find(v.Name, "Boss") and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            PositionMon then
                            if InMyNetWork2(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size =
                                    Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer,
                                                  "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    local Number2 = 1
    local BoneTabel = {
        ["Mon"] = {
            "Reborn Skeleton [Lv. 1975]", "Demonic Soul [Lv. 2025]",
            "Living Zombie [Lv. 2000]", "Posessed Mummy [Lv. 2050]"
        },
        ["Boss"] = {"Soul Reaper [Lv. 2100] [Raid Boss]"},
        ["Item"] = "Hallow Essence"
    }

    local SetCFarmeBone = 1
    function GetBone_CFrame_Mon()
        local matchingCFrames = {}
        for _, Mon in ipairs(BoneTabel["Mon"]) do
            local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+",
                                                                        "")
                               :gsub("%s+", "")
            for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
                if v.Name == result then
                    table.insert(matchingCFrames, v.CFrame)
                end
            end
        end
        return matchingCFrames
    end
    _G.Poo = 1500
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Soul_Guitar and _G.Start_Kaitun and
                    game.Players.localPlayer.Data.Level.value >= 2300 and
                    Check_Gun("Soul Guitar") == nil then
                    local data = game:GetService("ReplicatedStorage").Remotes
                                     .CommF_:InvokeServer(
                                     "GuitarPuzzleProgress", "Check")
                    if data == nil then
                        if game:GetService("Lighting").Sky.MoonTextureId ==
                            "http://www.roblox.com/asset/?id=9709149431" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "gravestoneEvent", 2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "gravestoneEvent", 2, true)
                            _G.StartFarm = false
                        elseif data == nil then
                            return
                        end
                    end
                    for i, v in pairs(data) do
                        if i == "Swamp" then
                            if v == false then
                                _G.StartFarm = false
                                if game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Living Zombie [Lv. 2000]") then
                                    for i, v in
                                        pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Living Zombie [Lv. 2000]" then
                                            if v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild(
                                                    "HumanoidRootPart") and
                                                v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    PosMon = CFrame.new(
                                                                 -10164.7588,
                                                                 138.652451,
                                                                 5935.78418,
                                                                 -0.999782741,
                                                                 -8.01260214e-08,
                                                                 -0.0208426975,
                                                                 -7.95026338e-08,
                                                                 1,
                                                                 -3.07377839e-08,
                                                                 0.0208426975,
                                                                 -2.90740569e-08,
                                                                 -0.999782741)
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(60, 60, 60)
                                                    BringMobFarmGuitar = true
                                                    toposition(CFrame.new(
                                                                   -10164.7588,
                                                                   138.652451,
                                                                   5935.78418,
                                                                   -0.999782741,
                                                                   -8.01260214e-08,
                                                                   -0.0208426975,
                                                                   -7.95026338e-08,
                                                                   1,
                                                                   -3.07377839e-08,
                                                                   0.0208426975,
                                                                   -2.90740569e-08,
                                                                   -0.999782741) *
                                                                   CFrame.new(0,
                                                                              30,
                                                                              5))
                                                until not _G.Auto_Soul_Guitar or
                                                    v.Humanoid.Health <= 0 or
                                                    not v.Parent or
                                                    v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    toposition(
                                        CFrame.new(-10164.7588, 138.652451,
                                                   5935.78418, -0.999782741,
                                                   -8.01260214e-08,
                                                   -0.0208426975,
                                                   -7.95026338e-08, 1,
                                                   -3.07377839e-08,
                                                   0.0208426975,
                                                   -2.90740569e-08, -0.999782741))
                                end
                            else
                                for _i, _v in pairs(data) do
                                    if _i == "Gravestones" then
                                        if _v == false then
                                            _G.StartFarm = false
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard7.Left
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard6.Left
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard5.Left
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard4
                                                                  .Right
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard3.Left
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard2
                                                                  .Right
                                                                  .ClickDetector)
                                            wait(0.2)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Haunted Castle"]
                                                                  .Placard1
                                                                  .Right
                                                                  .ClickDetector)
                                        else
                                            for _i1, _v1 in pairs(data) do
                                                if _i1 == "Ghost" then
                                                    if _v1 == false then
                                                        _G.StartFarm = false
                                                        game:GetService(
                                                            "ReplicatedStorage").Remotes
                                                            .CommF_:InvokeServer(
                                                            "GuitarPuzzleProgress",
                                                            "Ghost")
                                                        game:GetService(
                                                            "ReplicatedStorage").Remotes
                                                            .CommF_:InvokeServer(
                                                            "GuitarPuzzleProgress",
                                                            "Ghost", true)
                                                    else
                                                        for _i2, _v2 in pairs(
                                                                            data) do
                                                            if _i2 == "Trophies" then
                                                                if _v2 == false then
                                                                    _G.StartFarm =
                                                                        false
                                                                    repeat
                                                                        wait()
                                                                        fireclickdetector(
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment2:FindFirstChild(
                                                                                "ClickDetector"))
                                                                    until game:GetService(
                                                                        "Workspace").Map["Haunted Castle"]
                                                                        .Tablet
                                                                        .Segment2
                                                                        .Line
                                                                        .Position
                                                                        .Y ==
                                                                        -1000 or
                                                                        not _G.Auto_Soul_Guitar
                                                                    repeat
                                                                        wait()
                                                                        fireclickdetector(
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment5:FindFirstChild(
                                                                                "ClickDetector"))
                                                                    until game:GetService(
                                                                        "Workspace").Map["Haunted Castle"]
                                                                        .Tablet
                                                                        .Segment5
                                                                        .Line
                                                                        .Position
                                                                        .Y ==
                                                                        -1000 or
                                                                        not _G.Auto_Soul_Guitar
                                                                    repeat
                                                                        wait()
                                                                        fireclickdetector(
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment6:FindFirstChild(
                                                                                "ClickDetector"))
                                                                    until game:GetService(
                                                                        "Workspace").Map["Haunted Castle"]
                                                                        .Tablet
                                                                        .Segment6
                                                                        .Line
                                                                        .Position
                                                                        .Y ==
                                                                        -1000 or
                                                                        not _G.Auto_Soul_Guitar
                                                                    repeat
                                                                        wait()
                                                                        fireclickdetector(
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment8:FindFirstChild(
                                                                                "ClickDetector"))
                                                                    until game:GetService(
                                                                        "Workspace").Map["Haunted Castle"]
                                                                        .Tablet
                                                                        .Segment8
                                                                        .Line
                                                                        .Position
                                                                        .Y ==
                                                                        -1000 or
                                                                        not _G.Auto_Soul_Guitar
                                                                    repeat
                                                                        wait()
                                                                        fireclickdetector(
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment9:FindFirstChild(
                                                                                "ClickDetector"))
                                                                    until game:GetService(
                                                                        "Workspace").Map["Haunted Castle"]
                                                                        .Tablet
                                                                        .Segment9
                                                                        .Line
                                                                        .Position
                                                                        .Y ==
                                                                        -1000 or
                                                                        not _G.Auto_Soul_Guitar
                                                                    if getTrophies(
                                                                        1)[1] then
                                                                        repeat
                                                                            wait()
                                                                            fireclickdetector(
                                                                                game:GetService(
                                                                                    "Workspace").Map["Haunted Castle"]
                                                                                    .Tablet
                                                                                    .Segment1:FindFirstChild(
                                                                                    "ClickDetector"))
                                                                        until game:GetService(
                                                                            "Workspace").Map["Haunted Castle"]
                                                                            .Tablet
                                                                            .Segment1
                                                                            .Line
                                                                            .Rotation
                                                                            .Z ==
                                                                            getTrophies(
                                                                                1)[2] or
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment1
                                                                                .Line
                                                                                .Rotation
                                                                                .Z ==
                                                                            getTrophies(
                                                                                1)[3] or
                                                                            not _G.Auto_Soul_Guitar or
                                                                            game:GetService(
                                                                                "ReplicatedStorage").Remotes
                                                                                .CommF_:InvokeServer(
                                                                                "GuitarPuzzleProgress",
                                                                                "Check")
                                                                                .Trophies ==
                                                                            true
                                                                    end
                                                                    if getTrophies(
                                                                        2)[1] then
                                                                        repeat
                                                                            wait()
                                                                            fireclickdetector(
                                                                                game:GetService(
                                                                                    "Workspace").Map["Haunted Castle"]
                                                                                    .Tablet
                                                                                    .Segment3:FindFirstChild(
                                                                                    "ClickDetector"))
                                                                        until game:GetService(
                                                                            "Workspace").Map["Haunted Castle"]
                                                                            .Tablet
                                                                            .Segment3
                                                                            .Line
                                                                            .Rotation
                                                                            .Z ==
                                                                            getTrophies(
                                                                                2)[2] or
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment3
                                                                                .Line
                                                                                .Rotation
                                                                                .Z ==
                                                                            getTrophies(
                                                                                1)[3] or
                                                                            not _G.Auto_Soul_Guitar or
                                                                            game:GetService(
                                                                                "ReplicatedStorage").Remotes
                                                                                .CommF_:InvokeServer(
                                                                                "GuitarPuzzleProgress",
                                                                                "Check")
                                                                                .Trophies ==
                                                                            true
                                                                    end
                                                                    if getTrophies(
                                                                        3)[1] then
                                                                        repeat
                                                                            wait()
                                                                            fireclickdetector(
                                                                                game:GetService(
                                                                                    "Workspace").Map["Haunted Castle"]
                                                                                    .Tablet
                                                                                    .Segment4:FindFirstChild(
                                                                                    "ClickDetector"))
                                                                        until game:GetService(
                                                                            "Workspace").Map["Haunted Castle"]
                                                                            .Tablet
                                                                            .Segment4
                                                                            .Line
                                                                            .Rotation
                                                                            .Z ==
                                                                            getTrophies(
                                                                                3)[2] or
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment4
                                                                                .Line
                                                                                .Rotation
                                                                                .Z ==
                                                                            getTrophies(
                                                                                1)[3] or
                                                                            not _G.Auto_Soul_Guitar or
                                                                            game:GetService(
                                                                                "ReplicatedStorage").Remotes
                                                                                .CommF_:InvokeServer(
                                                                                "GuitarPuzzleProgress",
                                                                                "Check")
                                                                                .Trophies ==
                                                                            true
                                                                    end
                                                                    if getTrophies(
                                                                        4)[1] then
                                                                        repeat
                                                                            wait()
                                                                            fireclickdetector(
                                                                                game:GetService(
                                                                                    "Workspace").Map["Haunted Castle"]
                                                                                    .Tablet
                                                                                    .Segment7:FindFirstChild(
                                                                                    "ClickDetector"))
                                                                        until game:GetService(
                                                                            "Workspace").Map["Haunted Castle"]
                                                                            .Tablet
                                                                            .Segment7
                                                                            .Line
                                                                            .Rotation
                                                                            .Z ==
                                                                            getTrophies(
                                                                                4)[2] or
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment7
                                                                                .Line
                                                                                .Rotation
                                                                                .Z ==
                                                                            getTrophies(
                                                                                1)[3] or
                                                                            not _G.Auto_Soul_Guitar or
                                                                            game:GetService(
                                                                                "ReplicatedStorage").Remotes
                                                                                .CommF_:InvokeServer(
                                                                                "GuitarPuzzleProgress",
                                                                                "Check")
                                                                                .Trophies ==
                                                                            true
                                                                    end
                                                                    if getTrophies(
                                                                        5)[1] then
                                                                        repeat
                                                                            wait()
                                                                            fireclickdetector(
                                                                                game:GetService(
                                                                                    "Workspace").Map["Haunted Castle"]
                                                                                    .Tablet
                                                                                    .Segment10:FindFirstChild(
                                                                                    "ClickDetector"))
                                                                        until game:GetService(
                                                                            "Workspace").Map["Haunted Castle"]
                                                                            .Tablet
                                                                            .Segment10
                                                                            .Line
                                                                            .Rotation
                                                                            .Z ==
                                                                            getTrophies(
                                                                                5)[2] or
                                                                            game:GetService(
                                                                                "Workspace").Map["Haunted Castle"]
                                                                                .Tablet
                                                                                .Segment10
                                                                                .Line
                                                                                .Rotation
                                                                                .Z ==
                                                                            getTrophies(
                                                                                1)[3] or
                                                                            not _G.Auto_Soul_Guitar or
                                                                            game:GetService(
                                                                                "ReplicatedStorage").Remotes
                                                                                .CommF_:InvokeServer(
                                                                                "GuitarPuzzleProgress",
                                                                                "Check")
                                                                                .Trophies ==
                                                                            true
                                                                    end
                                                                else
                                                                    for _i3, _v3 in
                                                                        pairs(
                                                                            data) do
                                                                        if _i3 ==
                                                                            "Pipes" then
                                                                            if _v3 ==
                                                                                false then
                                                                                _G.StartFarm =
                                                                                    false
                                                                                repeat
                                                                                    task.wait()
                                                                                    toposition(
                                                                                        CFrame.new(
                                                                                            -9628.02734375,
                                                                                            6.13064432144165,
                                                                                            6157.47802734375))
                                                                                until not _G.Auto_Soul_Guitar or
                                                                                    (CFrame.new(
                                                                                        -9628.02734375,
                                                                                        6.13064432144165,
                                                                                        6157.47802734375)
                                                                                        .Position -
                                                                                        game:GetService(
                                                                                            "Players").LocalPlayer
                                                                                            .Character
                                                                                            .HumanoidRootPart
                                                                                            .Position).Magnitude <=
                                                                                    10
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part10
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part10
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part10
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part8
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part6
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part6
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part4
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part4
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part4
                                                                                        .ClickDetector)
                                                                                wait()
                                                                                fireclickdetector(
                                                                                    game:GetService(
                                                                                        "Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                                                                        .ColorFloor
                                                                                        .Model
                                                                                        .Part3
                                                                                        .ClickDetector)
                                                                            else
                                                                                for 
                                                                                    _i4,
                                                                                    _v4 in
                                                                                    pairs(
                                                                                        data) do
                                                                                    if _i4 ==
                                                                                        "CraftedOnce" then
                                                                                        if _v4 ==
                                                                                            false then
                                                                                            _G.StartFarm =
                                                                                                false
                                                                                            if Check_Material(
                                                                                                "Bones") <
                                                                                                500 and
                                                                                                W3 then
                                                                                                for 
                                                                                                    _,
                                                                                                    _Boss in
                                                                                                    ipairs(
                                                                                                        BoneTabel["Boss"]) do
                                                                                                    local 
                                                                                                        _Item =
                                                                                                        BoneTabel["Item"]
                                                                                                    if game:GetService(
                                                                                                        "Workspace").Enemies:FindFirstChild(
                                                                                                        _Boss) or
                                                                                                        game:GetService(
                                                                                                            "ReplicatedStorage")
                                                                                                            :FindFirstChild(
                                                                                                                _Boss) then
                                                                                                        for 
                                                                                                            _,
                                                                                                            _v1 in
                                                                                                            pairs(
                                                                                                                game:GetService(
                                                                                                                    "Workspace").Enemies:GetChildren()) do
                                                                                                            if _v1.Name ==
                                                                                                                _Boss then
                                                                                                                if _v1:FindFirstChild(
                                                                                                                    "Humanoid") and
                                                                                                                    _v1:FindFirstChild(
                                                                                                                        "HumanoidRootPart") and
                                                                                                                    _v1.Humanoid
                                                                                                                        .Health >
                                                                                                                    0 then
                                                                                                                    repeat
                                                                                                                        wait()
                                                                                                                        EquipWeapon(
                                                                                                                            _G.Select_Weapon)
                                                                                                                        _v1.HumanoidRootPart
                                                                                                                            .Size =
                                                                                                                            Vector3.new(
                                                                                                                                60,
                                                                                                                                60,
                                                                                                                                60)
                                                                                                                        BringMobFarm =
                                                                                                                            true
                                                                                                                        toposition(
                                                                                                                            _v1.HumanoidRootPart
                                                                                                                                .CFrame *
                                                                                                                                CFrame.new(
                                                                                                                                    0,
                                                                                                                                    30,
                                                                                                                                    5))
                                                                                                                        if (_v1.HumanoidRootPart
                                                                                                                            .CFrame
                                                                                                                            .Position -
                                                                                                                            game:GetService(
                                                                                                                                "Players").LocalPlayer
                                                                                                                                .Character
                                                                                                                                .HumanoidRootPart
                                                                                                                                .Position).Magnitude <=
                                                                                                                            50 then
                                                                                                                            game:GetService("VirtualUser")
                                                                                                                                :CaptureController()
                                                                                                                            game:GetService(
                                                                                                                                "VirtualUser")
                                                                                                                                :Button1Down(
                                                                                                                                    Vector2.new(
                                                                                                                                        1280,
                                                                                                                                        672))
                                                                                                                        end
                                                                                                                    until not _G.Auto_Soul_Guitar or
                                                                                                                        v.Humanoid
                                                                                                                            .Health <=
                                                                                                                        0 or
                                                                                                                        not v.Parent or
                                                                                                                        v.Humanoid
                                                                                                                            .Health <=
                                                                                                                        0
                                                                                                                    BringMobFarm =
                                                                                                                        false
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    else
                                                                                                        if game:GetService(
                                                                                                            "Players").LocalPlayer
                                                                                                            .Backpack:FindFirstChild(
                                                                                                            _Item) or
                                                                                                            game:GetService(
                                                                                                                "Players").LocalPlayer
                                                                                                                .Character:FindFirstChild(
                                                                                                                _Item) then
                                                                                                            EquipWeapon(
                                                                                                                _Item)
                                                                                                            toposition(
                                                                                                                workspace.Map["Haunted Castle"]
                                                                                                                    .Summoner
                                                                                                                    .Detection
                                                                                                                    .CFrame)
                                                                                                        else
                                                                                                            for 
                                                                                                                _,
                                                                                                                _Mon in
                                                                                                                next,
                                                                                                                BoneTabel["Mon"] do
                                                                                                                if game:GetService(
                                                                                                                    "Workspace").Enemies:FindFirstChild(
                                                                                                                    "Reborn Skeleton [Lv. 1975]") or
                                                                                                                    game:GetService(
                                                                                                                        "Workspace").Enemies:FindFirstChild(
                                                                                                                        "Living Zombie [Lv. 2000]") or
                                                                                                                    game:GetService(
                                                                                                                        "Workspace").Enemies:FindFirstChild(
                                                                                                                        "Demonic Soul [Lv. 2025]") or
                                                                                                                    game:GetService(
                                                                                                                        "Workspace").Enemies:FindFirstChild(
                                                                                                                        "Posessed Mummy [Lv. 2050]") then
                                                                                                                    print(
                                                                                                                        _Mon)
                                                                                                                    for 
                                                                                                                        i,
                                                                                                                        v in
                                                                                                                        pairs(
                                                                                                                            game:GetService(
                                                                                                                                "Workspace").Enemies:GetChildren()) do
                                                                                                                        if v.Name ==
                                                                                                                            _Mon then
                                                                                                                            if v:FindFirstChild(
                                                                                                                                "Humanoid") and
                                                                                                                                v:FindFirstChild(
                                                                                                                                    "HumanoidRootPart") and
                                                                                                                                v.Humanoid
                                                                                                                                    .Health >
                                                                                                                                0 then
                                                                                                                                repeat
                                                                                                                                    wait()
                                                                                                                                    PosMon =
                                                                                                                                        v.HumanoidRootPart
                                                                                                                                            .CFrame
                                                                                                                                    EquipWeapon(
                                                                                                                                        _G.Select_Weapon)
                                                                                                                                    v.HumanoidRootPart
                                                                                                                                        .Size =
                                                                                                                                        Vector3.new(
                                                                                                                                            60,
                                                                                                                                            60,
                                                                                                                                            60)
                                                                                                                                    BringMobFarm =
                                                                                                                                        true
                                                                                                                                    toposition(
                                                                                                                                        v.HumanoidRootPart
                                                                                                                                            .CFrame *
                                                                                                                                            CFrame.new(
                                                                                                                                                0,
                                                                                                                                                30,
                                                                                                                                                5))
                                                                                                                                    if (v.HumanoidRootPart
                                                                                                                                        .CFrame
                                                                                                                                        .Position -
                                                                                                                                        game:GetService(
                                                                                                                                            "Players").LocalPlayer
                                                                                                                                            .Character
                                                                                                                                            .HumanoidRootPart
                                                                                                                                            .Position).Magnitude <=
                                                                                                                                        50 then
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser")
                                                                                                                                            :CaptureController()
                                                                                                                                        game:GetService(
                                                                                                                                            "VirtualUser")
                                                                                                                                            :Button1Down(
                                                                                                                                                Vector2.new(
                                                                                                                                                    1280,
                                                                                                                                                    672))
                                                                                                                                    end
                                                                                                                                until not _G.Auto_Soul_Guitar or
                                                                                                                                    v.Humanoid
                                                                                                                                        .Health <=
                                                                                                                                    0 or
                                                                                                                                    not v.Parent or
                                                                                                                                    v.Humanoid
                                                                                                                                        .Health <=
                                                                                                                                    0
                                                                                                                            else
                                                                                                                                toposition(
                                                                                                                                    GetBone_CFrame_Mon()[SetCFarmeBone] *
                                                                                                                                        CFrame.new(
                                                                                                                                            0,
                                                                                                                                            30,
                                                                                                                                            5))
                                                                                                                                if (GetBone_CFrame_Mon()[SetCFarmeBone]
                                                                                                                                    .Position -
                                                                                                                                    game:GetService(
                                                                                                                                        "Players").LocalPlayer
                                                                                                                                        .Character
                                                                                                                                        .HumanoidRootPart
                                                                                                                                        .Position).Magnitude <=
                                                                                                                                    50 then
                                                                                                                                    if SetCFarmeBone ==
                                                                                                                                        nil or
                                                                                                                                        SetCFarmeBone ==
                                                                                                                                        '' then
                                                                                                                                        SetCFarmeBone =
                                                                                                                                            1
                                                                                                                                    elseif SetCFarmeBone >=
                                                                                                                                        #GetBone_CFrame_Mon() then
                                                                                                                                        SetCFarmeBone =
                                                                                                                                            1
                                                                                                                                    end
                                                                                                                                    SetCFarmeBone =
                                                                                                                                        SetCFarmeBone +
                                                                                                                                            1

                                                                                                                                    print(
                                                                                                                                        SetCFarmeBone)
                                                                                                                                    wait(
                                                                                                                                        0.5)
                                                                                                                                end
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                else
                                                                                                                    toposition(
                                                                                                                        GetBone_CFrame_Mon()[SetCFarmeBone] *
                                                                                                                            CFrame.new(
                                                                                                                                0,
                                                                                                                                30,
                                                                                                                                5))
                                                                                                                    if (GetBone_CFrame_Mon()[SetCFarmeBone]
                                                                                                                        .Position -
                                                                                                                        game:GetService(
                                                                                                                            "Players").LocalPlayer
                                                                                                                            .Character
                                                                                                                            .HumanoidRootPart
                                                                                                                            .Position).Magnitude <=
                                                                                                                        50 then
                                                                                                                        if SetCFarmeBone ==
                                                                                                                            nil or
                                                                                                                            SetCFarmeBone ==
                                                                                                                            '' then
                                                                                                                            SetCFarmeBone =
                                                                                                                                1
                                                                                                                        elseif SetCFarmeBone >=
                                                                                                                            #GetBone_CFrame_Mon() then
                                                                                                                            SetCFarmeBone =
                                                                                                                                1
                                                                                                                        end
                                                                                                                        SetCFarmeBone =
                                                                                                                            SetCFarmeBone +
                                                                                                                                1

                                                                                                                        print(
                                                                                                                            SetCFarmeBone)
                                                                                                                        wait(
                                                                                                                            0.5)
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            else
                                                                                                if Check_Material(
                                                                                                    "Bones") >
                                                                                                    500 then
                                                                                                    if game:GetService(
                                                                                                        "ReplicatedStorage").Remotes
                                                                                                        .CommF_:InvokeServer(
                                                                                                        "Ectoplasm",
                                                                                                        "Check") <
                                                                                                        250 then
                                                                                                        if not W2 then
                                                                                                            game:GetService(
                                                                                                                "ReplicatedStorage").Remotes
                                                                                                                .CommF_:InvokeServer(
                                                                                                                "TravelDressrosa")
                                                                                                        else
                                                                                                            if game:GetService(
                                                                                                                "Workspace").Enemies:FindFirstChild(
                                                                                                                "Ship Deckhand [Lv. 1250]") or
                                                                                                                game:GetService(
                                                                                                                    "Workspace").Enemies:FindFirstChild(
                                                                                                                    "Ship Engineer [Lv. 1275]") or
                                                                                                                game:GetService(
                                                                                                                    "Workspace").Enemies:FindFirstChild(
                                                                                                                    "Ship Steward [Lv. 1300]") or
                                                                                                                game:GetService(
                                                                                                                    "Workspace").Enemies:FindFirstChild(
                                                                                                                    "Ship Officer [Lv. 1325]") then
                                                                                                                for 
                                                                                                                    i,
                                                                                                                    v in
                                                                                                                    pairs(
                                                                                                                        game:GetService(
                                                                                                                            "Workspace").Enemies:GetChildren()) do
                                                                                                                    if string.find(
                                                                                                                        v.Name,
                                                                                                                        "Ship") then
                                                                                                                        repeat
                                                                                                                            wait()
                                                                                                                            -- AutoHaki()
                                                                                                                            EquipWeapon(
                                                                                                                                _G.Select_Weapon)
                                                                                                                            PosMonEctoplasm =
                                                                                                                                v.HumanoidRootPart
                                                                                                                                    .CFrame
                                                                                                                            v.HumanoidRootPart
                                                                                                                                .CanCollide =
                                                                                                                                false
                                                                                                                            v.HumanoidRootPart
                                                                                                                                .Size =
                                                                                                                                Vector3.new(
                                                                                                                                    50,
                                                                                                                                    50,
                                                                                                                                    50)
                                                                                                                            toposition(
                                                                                                                                v.HumanoidRootPart
                                                                                                                                    .CFrame *
                                                                                                                                    CFrame.new(
                                                                                                                                        0,
                                                                                                                                        30,
                                                                                                                                        5))
                                                                                                                            MagnetEctoplasm =
                                                                                                                                true
                                                                                                                            game:GetService 'VirtualUser'
                                                                                                                                :CaptureController()
                                                                                                                            game:GetService 'VirtualUser'
                                                                                                                                :Button1Down(
                                                                                                                                    Vector2.new(
                                                                                                                                        1280,
                                                                                                                                        672))
                                                                                                                        until _G.Auto_Soul_Guitar ==
                                                                                                                            false or
                                                                                                                            not v.Parent or
                                                                                                                            v.Humanoid
                                                                                                                                .Health <=
                                                                                                                            0
                                                                                                                        MagnetEctoplasm =
                                                                                                                            false
                                                                                                                    else
                                                                                                                        MagnetEctoplasm =
                                                                                                                            false
                                                                                                                        toposition(
                                                                                                                            CFrame.new(
                                                                                                                                904.4072265625,
                                                                                                                                181.05767822266,
                                                                                                                                33341.38671875))
                                                                                                                    end
                                                                                                                end
                                                                                                            else
                                                                                                                MagnetEctoplasm =
                                                                                                                    false
                                                                                                                local 
                                                                                                                    Distance =
                                                                                                                    (Vector3.new(
                                                                                                                        904.4072265625,
                                                                                                                        181.05767822266,
                                                                                                                        33341.38671875) -
                                                                                                                        game.Players
                                                                                                                            .LocalPlayer
                                                                                                                            .Character
                                                                                                                            .HumanoidRootPart
                                                                                                                            .Position).Magnitude
                                                                                                                if Distance >
                                                                                                                    20000 then
                                                                                                                    game:GetService(
                                                                                                                        "ReplicatedStorage").Remotes
                                                                                                                        .CommF_:InvokeServer(
                                                                                                                        "requestEntrance",
                                                                                                                        Vector3.new(
                                                                                                                            923.21252441406,
                                                                                                                            126.9760055542,
                                                                                                                            32852.83203125))
                                                                                                                end
                                                                                                                toposition(
                                                                                                                    CFrame.new(
                                                                                                                        904.4072265625,
                                                                                                                        181.05767822266,
                                                                                                                        33341.38671875))
                                                                                                            end
                                                                                                        end
                                                                                                    elseif Check_Material(
                                                                                                        "Dark Fragment") <
                                                                                                        1 then
                                                                                                        if not W2 then
                                                                                                            game:GetService(
                                                                                                                "ReplicatedStorage").Remotes
                                                                                                                .CommF_:InvokeServer(
                                                                                                                "TravelDressrosa")
                                                                                                        end
                                                                                                        if game.ReplicatedStorage:FindFirstChild(
                                                                                                            "Darkbeard [Lv. 1000] [Raid Boss]") or
                                                                                                            game.Workspace
                                                                                                                .Enemies:FindFirstChild(
                                                                                                                "Darkbeard [Lv. 1000] [Raid Boss]") then
                                                                                                            toposition(
                                                                                                                CFrame.new(
                                                                                                                    3780.0302734375,
                                                                                                                    22.652164459229,
                                                                                                                    -3498.5859375))
                                                                                                            for 
                                                                                                                i,
                                                                                                                v in
                                                                                                                pairs(
                                                                                                                    game.Workspace
                                                                                                                        .Enemies:GetChildren()) do
                                                                                                                if v.Name ==
                                                                                                                    "Darkbeard [Lv. 1000] [Raid Boss]" and
                                                                                                                    v:FindFirstChild(
                                                                                                                        "HumanoidRootPart") and
                                                                                                                    v:FindFirstChild(
                                                                                                                        "Humanoid") and
                                                                                                                    v.Humanoid
                                                                                                                        .Health >
                                                                                                                    0 then
                                                                                                                    repeat
                                                                                                                        wait()
                                                                                                                        EquipWeapon(
                                                                                                                            _G.Select_Weapon)
                                                                                                                        v.HumanoidRootPart
                                                                                                                            .Size =
                                                                                                                            Vector3.new(
                                                                                                                                60,
                                                                                                                                60,
                                                                                                                                60)
                                                                                                                        toposition(
                                                                                                                            v.HumanoidRootPart
                                                                                                                                .CFrame *
                                                                                                                                CFrame.new(
                                                                                                                                    0,
                                                                                                                                    30,
                                                                                                                                    5))
                                                                                                                        if (v.HumanoidRootPart
                                                                                                                            .CFrame
                                                                                                                            .Position -
                                                                                                                            game:GetService(
                                                                                                                                "Players").LocalPlayer
                                                                                                                                .Character
                                                                                                                                .HumanoidRootPart
                                                                                                                                .Position).Magnitude <=
                                                                                                                            50 then
                                                                                                                            game:GetService(
                                                                                                                                "VirtualUser")
                                                                                                                                :CaptureController()
                                                                                                                            game:GetService(
                                                                                                                                "VirtualUser")
                                                                                                                                :Button1Down(
                                                                                                                                    Vector2.new(
                                                                                                                                        1280,
                                                                                                                                        672))
                                                                                                                        end
                                                                                                                    until not _G.Auto_Soul_Guitar or
                                                                                                                        v.Humanoid
                                                                                                                            .Health <=
                                                                                                                        0 or
                                                                                                                        not v.Parent
                                                                                                                end
                                                                                                            end
                                                                                                        else
                                                                                                            if game.Players
                                                                                                                .LocalPlayer
                                                                                                                .Backpack:FindFirstChild(
                                                                                                                "Fist of Darkness") or
                                                                                                                game.Players
                                                                                                                    .LocalPlayer
                                                                                                                    .Character:FindFirstChild(
                                                                                                                    "Fist of Darkness") then
                                                                                                                EquipWeapon(
                                                                                                                    "Fist of Darkness")
                                                                                                                toposition(
                                                                                                                    CFrame.new(
                                                                                                                        3780.0302734375,
                                                                                                                        22.652164459229,
                                                                                                                        -3498.5859375) *
                                                                                                                        CFrame.new(
                                                                                                                            0,
                                                                                                                            -10,
                                                                                                                            0))
                                                                                                            else
                                                                                                                if not W2 then
                                                                                                                    game:GetService(
                                                                                                                        "ReplicatedStorage").Remotes
                                                                                                                        .CommF_:InvokeServer(
                                                                                                                        "TravelDressrosa")
                                                                                                                end
                                                                                                                for 
                                                                                                                    i,
                                                                                                                    v in
                                                                                                                    pairs(
                                                                                                                        game:GetService(
                                                                                                                            "Workspace")
                                                                                                                            :GetChildren()) do
                                                                                                                    if v.Name:find(
                                                                                                                        "Chest") then
                                                                                                                        if game:GetService(
                                                                                                                            "Workspace")
                                                                                                                            :FindFirstChild(
                                                                                                                                v.Name) then
                                                                                                                            if (v.Position -
                                                                                                                                game.Players
                                                                                                                                    .LocalPlayer
                                                                                                                                    .Character
                                                                                                                                    .HumanoidRootPart
                                                                                                                                    .Position).Magnitude <=
                                                                                                                                5000 +
                                                                                                                                _G.Poo then
                                                                                                                                repeat
                                                                                                                                    task.wait()
                                                                                                                                    if game:GetService(
                                                                                                                                        "Workspace")
                                                                                                                                        :FindFirstChild(
                                                                                                                                            v.Name) then
                                                                                                                                        toposition(
                                                                                                                                            v.CFrame)
                                                                                                                                        if (v.CFrame
                                                                                                                                            .Position -
                                                                                                                                            game:GetService(
                                                                                                                                                "Players").LocalPlayer
                                                                                                                                                .Character
                                                                                                                                                .HumanoidRootPart
                                                                                                                                                .Position).Magnitude <=
                                                                                                                                            1 then
                                                                                                                                            UnEquipWeapon(
                                                                                                                                                _G.Select_Weapon)
                                                                                                                                        else
                                                                                                                                            EquipWeapon(
                                                                                                                                                _G.Select_Weapon)
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        _G.Poo =
                                                                                                                                            _G.Poo +
                                                                                                                                                1000
                                                                                                                                    end
                                                                                                                                until _G.Auto_Soul_Guitar ==
                                                                                                                                    false or
                                                                                                                                    not v.Parent
                                                                                                                                _G.Poo =
                                                                                                                                    _G.Poo +
                                                                                                                                        1000
                                                                                                                                break
                                                                                                                            else
                                                                                                                                _G.Poo =
                                                                                                                                    _G.Poo +
                                                                                                                                        1000
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    else
                                                                                                        if game:GetService(
                                                                                                            "ReplicatedStorage").Remotes
                                                                                                            .CommF_:InvokeServer(
                                                                                                            "Ectoplasm",
                                                                                                            "Check") >
                                                                                                            250 and
                                                                                                            Check_Material(
                                                                                                                "Dark Fragment") >
                                                                                                            1 then
                                                                                                            if W3 then
                                                                                                                print(
                                                                                                                    "Buy")
                                                                                                                _G.Auto_Soul_Guitar =
                                                                                                                    false
                                                                                                                _G.StartFarm =
                                                                                                                    true
                                                                                                            else
                                                                                                                game:GetService(
                                                                                                                    "ReplicatedStorage").Remotes
                                                                                                                    .CommF_:InvokeServer(
                                                                                                                    "TravelZou")
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                for i, v in pairs(
                                game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Soul_Guitar and MagnetEctoplasm and
                        string.find(v.Name, "Ship") and
                        (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <=
                        350 then
                        v.HumanoidRootPart.CFrame = PosMonEctoplasm
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer,
                                          "SimulationRadius", math.huge)
                    end
                end
            end)
        end)
    end)

    local SerpentBow = Gun:AddLabel({Name = "❌ | Serpent Bow"})

    task.spawn(function()
        while task.wait() do
            pcall(function()
                for i, v in pairs(game:GetService("ReplicatedStorage").Remotes
                                      .CommF_:InvokeServer("getInventoryWeapons")) do
                    if v.Name == "Kabucha" then
                        Kabucha:Set("✅ | Kabucha Gun")
                    end
                    if v.Name == "Acidum Rifle" then
                        AcidumRifle:Set("✅ | Acidum Rifle")
                    end
                    if v.Name == "Bizarre Rifle" then
                        BizarreRifle:Set("✅ | Bizarre Rifle")
                    end
                    if v.Name == "Soul Guitar" then
                        SoulGuitar:Set("✅ | Soul Guitar")
                    end
                    if v.Name == "Serpent Bow" then
                        SerpentBow:Set("✅ | Serpent Bow")
                    end
                end
            end)
        end
    end)

    local Accessory = Page:CreateSection({Name = "Accessory", Side = "Right"})

    local Dark_Coat = Accessory:AddLabel({Name = "❌ | Dark Coat"})

    local Ghoul_Mask = Accessory:AddLabel({Name = "❌ | Ghoul Mask"})

    local Swan_Glass = Accessory:AddLabel({Name = "❌ | Swan Glass"})

    local Pale_Scarf = Accessory:AddLabel({Name = "❌ | Pale Scarf"})

    local Valkyrie_Helm = Accessory:AddLabel({Name = "❌ | Valkyrie Helm"})

    local Usoap_Hat = Accessory:AddLabel({Name = "❌ | Usoap's Hat"})

    local Warrior_Helmet = Accessory:AddLabel({Name = "❌ | Warrior Helmet"})

    spawn(function()
        while task.wait() do
            pcall(function()
                for i, v in pairs(game:GetService("ReplicatedStorage").Remotes
                                      .CommF_:InvokeServer("getInventoryWeapons")) do
                    if v.Name == "Ghoul Mask" then
                        Ghoul_Mask:Set("✅ | Ghoul Mask")
                    end
                    if v.Name == "Swan Glasses" then
                        Swan_Glass:Set("✅ | Swan Glass")
                    end
                    if v.Name == "Pale Scarf" then
                        Pale_Scarf:Set("✅ | Pale Scarf")
                    end
                    if v.Name == "Valkyrie Helmet" then
                        Valkyrie_Helm:Set("✅ | Valkyrie Helmet")
                    end
                    if v.Name == "Usoap's Hat" then
                        Usoap_Hat:Set("✅ | Usoap's Hat")
                    end
                    if v.Name == "Warrior Helmet" then
                        Warrior_Helmet:Set("✅ | Warrior Helmet")
                    end
                end
            end)
        end
    end)

    local Material = Page:CreateSection({Name = "Material", Side = "Right"})

    local Material1 = Material:AddLabel({Name = "Ectoplasm : 0 Material"})

    spawn(function()
        while task.wait() do
            pcall(function()
                Material1:Set("Ectoplasm : " ..
                                  game:GetService("ReplicatedStorage").Remotes
                                      .CommF_:InvokeServer("Ectoplasm", "Check") ..
                                  " Material")
            end)
        end
    end)

    local Material2 = Material:AddLabel({Name = "EliteHunter : 0 Mon"})

    spawn(function()
        while task.wait() do
            pcall(function()
                Material2:Set("EliteHunter : " ..
                                  game:GetService("ReplicatedStorage").Remotes
                                      .CommF_:InvokeServer("EliteHunter",
                                                           "Progress") .. " Mon")
            end)
        end
    end)

    _G.GoGat = true
    spawn(function()
        while wait(0) do
            if _G.Start_Kaitun then
                MyLevel = game.Players.localPlayer.Data.Level.value
                if MyLevel >= 15 then
                    for i, v in pairs(Code) do
                        pcall(function()
                            local args = {[1] = v}
                            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(
                                unpack(args))
                        end)
                    end
                    break
                end
            end
        end
    end)

    spawn(function()
        while wait() do
            if _G.Start_Kaitun and _G.StoreFruit then
                pcall(function()
                    wait()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Bomb Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Bomb-Bomb",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Bomb Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Bomb Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Spike Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Spike-Spike",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Spike Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Spike Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Chop Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Chop-Chop",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Chop Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Chop Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Spring Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Spring-Spring",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Spring Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Spring Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Kilo Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Kilo-Kilo",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Kilo Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Kilo Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Smoke Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Smoke-Smoke",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Smoke Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Smoke Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Spin Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Spin-Spin",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Spin Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Spin Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Flame Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Flame-Flame",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Flame Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Flame Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Bird: Falcon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Bird-Bird: Falcon",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Bird: Falcon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Bird: Falcon Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Ice Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Ice-Ice",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Ice Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Ice Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Sand Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Sand-Sand",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Sand Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Sand Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Dark Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Dark-Dark",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Dark Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Dark Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Revive Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Revive-Revive",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Revive Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Revive Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Diamond Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Diamond-Diamond",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Diamond Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Diamond Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Light Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Light-Light",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Light Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Light Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Love Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Love-Love",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Love Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Love Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Rubber Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Rubber-Rubber",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Rubber Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Rubber Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Barrier Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Barrier-Barrier",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Barrier Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Barrier Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Magma Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Magma-Magma",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Magma Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Magma Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Door Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Door-Door",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Door Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Door Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Quake Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Quake-Quake",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Quake Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Quake Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Human-Human: Buddha Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Human-Human: Buddha",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Human-Human: Buddha Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "String Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "String Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "String-String",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "String Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "String Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Bird: Phoenix Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Bird-Bird: Phoenix",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Bird: Phoenix Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Bird: Phoenix Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Rumble Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Rumble-Rumble",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Rumble Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Rumble Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Paw Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Paw-Paw",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Paw Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Paw Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Gravity Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Gravity-Gravity",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Gravity Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Gravity Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Dough Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Dough-Dough",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Dough Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Dough Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Shadow Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Shadow-Shadow",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Shadow Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Shadow Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Venom Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Venom-Venom",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Venom Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Venom Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Control Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Control-Control",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Control Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Control Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Dragon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Dragon-Dragon",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Dragon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Dragon Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                        "Leopard Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                            "Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit", "Leopard-Leopard",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Leopard Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Leopard Fruit"))
                        wait(0.3)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                    end
                end)
            end
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Auto_Superhuman then

                    if _G.StartFarm == true then
                        for i, v in pairs(
                                        game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                Level_SDD:Set(
                                    "Stats Meelee : \n " .. v.Name .. " ✅")
                            end
                        end
                    end

                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Combat") then
                        local args = {[1] = "BuyElectro"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            unpack(args))
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(
                        "Electro") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild(
                            "Electro").Level.Value >= 300 then
                        local args = {[1] = "BuyBlackLeg"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            unpack(args))
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Electro") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Electro").Level.Value >= 300 then
                        local args = {[1] = "BuyBlackLeg"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            unpack(args))
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(
                        "Black Leg") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild(
                            "Black Leg").Level.Value >= 300 then
                        local args = {[1] = "BuyFishmanKarate"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            unpack(args))
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Black Leg") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Black Leg").Level.Value >= 300 then
                        local args = {[1] = "BuyFishmanKarate"}
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            unpack(args))
                    end

                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Fishman Karate") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Fishman Karate").Level.Value >= 300 then
                        if game.Players.LocalPlayer.Data.Fragments.Value <= 1500 then
                            if game.Players.LocalPlayer.Data.Level.Value >= 1100 then
                                _G.StartFarm = false
                                _G.StoreFruit = false
                                _G.Grab_Fruit = false
                                _G.Auto_Yama = false
                                if _G.StartFarm == false or not _G.StartFarm then
                                    _G.StartFarm = false
                                    _G.StoreFruit = false
                                    _G.Grab_Fruit = false
                                    _G.Auto_Yama = false
                                    _G.Auto_Dungeon_Superhuman =
                                        _G.Auto_Superhuman

                                    Level_SDD:Set(
                                        "Stats Meelee : \n Farm Fragments ✅")

                                    local FruitPrice = {}
                                    local FruitStore = {}

                                    for i, v in next,
                                                game.ReplicatedStorage:WaitForChild(
                                                    "Remotes").CommF_:InvokeServer(
                                                    "GetFruits") do
                                        if v.Price <= 500000 then
                                            table.insert(FruitPrice, v.Name)
                                        end
                                    end
                                    for i, v in
                                        pairs(game:GetService(
                                                  "ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                                  "getInventoryFruits")) do
                                        for _, x in pairs(v) do
                                            if _ == "Name" then
                                                table.insert(FruitStore, x)
                                            end
                                        end
                                    end

                                    for _, y in pairs(FruitPrice) do
                                        for _, z in pairs(FruitStore) do
                                            if y == z then
                                                for _, tool in pairs(
                                                                   game.Players
                                                                       .LocalPlayer
                                                                       .Backpack:GetDescendants()) do
                                                    if tool:FindFirstChild(
                                                        "Fruit") then
                                                    else
                                                        game:GetService(
                                                            "ReplicatedStorage").Remotes
                                                            .CommF_:InvokeServer(
                                                            "requestEntrance",
                                                            Vector3.new(
                                                                -12471.169921875,
                                                                374.94024658203,
                                                                -7551.677734375))
                                                        local args = {
                                                            [1] = "LoadFruit",
                                                            [2] = tostring(y)
                                                        }

                                                        game:GetService(
                                                            "ReplicatedStorage").Remotes
                                                            .CommF_:InvokeServer(
                                                            unpack(args))
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    wait(0.5)
                                    local args = {
                                        [1] = "RaidsNpc",
                                        [2] = "Select",
                                        [3] = tostring("Light")
                                    }
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer(unpack(args))

                                    if game:GetService("Players")["LocalPlayer"]
                                        .PlayerGui.Main.Timer.Visible == false and
                                        _G.JoinD == nil then
                                        if W2 then
                                            wait(1.5)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map
                                                                  .CircleIsland
                                                                  .RaidSummon2
                                                                  .Button.Main
                                                                  .ClickDetector)
                                            wait(5)
                                            _G.JoinD = true
                                            wait(1.2)
                                            if game:GetService("Players")["LocalPlayer"]
                                                .PlayerGui.Main.Timer.Visible ==
                                                false and _G.JoinD == true then
                                                _G.JoinD = nil
                                            end
                                        elseif W3 then
                                            wait(1.5)
                                            fireclickdetector(game:GetService(
                                                                  "Workspace").Map["Boat Castle"]
                                                                  .RaidSummon2
                                                                  .Button.Main
                                                                  .ClickDetector)
                                            wait(5)
                                            _G.JoinD = true
                                            wait(1.2)
                                            if game:GetService("Players")["LocalPlayer"]
                                                .PlayerGui.Main.Timer.Visible ==
                                                false and _G.JoinD == true then
                                                _G.JoinD = nil
                                            end
                                        end
                                    end
                                    for i, v in pairs(
                                                    game.Workspace.Enemies:GetDescendants()) do
                                        if v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            pcall(function()
                                                repeat
                                                    wait(.1)
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge)
                                                    v.Humanoid.Health = 0
                                                    v.HumanoidRootPart
                                                        .CanCollide = false
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(500, 500,
                                                                    500)
                                                    v.HumanoidRootPart
                                                        .Transparency = 1
                                                until not _G.Auto_Dungeon_Superhuman or
                                                    not v.Parent or
                                                    v.Humanoid.Health <= 0
                                            end)
                                        end
                                    end
                                    for i, v in pairs(
                                                    game.Workspace.Enemies:GetDescendants()) do
                                        if v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            pcall(function()
                                                repeat
                                                    wait()
                                                    v.Humanoid.Health = 0
                                                    v.HumanoidRootPart
                                                        .CanCollide = false
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(500, 500,
                                                                    500)
                                                    v.HumanoidRootPart
                                                        .Transparency = 1
                                                until not _G.Auto_Dungeon_Superhuman or
                                                    not v.Parent or
                                                    v.Humanoid.Health <= 0
                                            end)
                                        end
                                    end
                                    if not game.Players.LocalPlayer.PlayerGui
                                        .Main.Timer.Visible == false then
                                        if game:GetService("Workspace")["_WorldOrigin"]
                                            .Locations:FindFirstChild("Island 5") then
                                            getgenv().TP(game:GetService(
                                                             "Workspace")["_WorldOrigin"]
                                                             .Locations:FindFirstChild(
                                                             "Island 5").CFrame *
                                                             CFrame.new(0, 70,
                                                                        100))
                                        elseif game:GetService("Workspace")["_WorldOrigin"]
                                            .Locations:FindFirstChild("Island 4") then
                                            getgenv().TP(game:GetService(
                                                             "Workspace")["_WorldOrigin"]
                                                             .Locations:FindFirstChild(
                                                             "Island 4").CFrame *
                                                             CFrame.new(0, 70,
                                                                        100))
                                        elseif game:GetService("Workspace")["_WorldOrigin"]
                                            .Locations:FindFirstChild("Island 3") then
                                            getgenv().TP(game:GetService(
                                                             "Workspace")["_WorldOrigin"]
                                                             .Locations:FindFirstChild(
                                                             "Island 3").CFrame *
                                                             CFrame.new(0, 70,
                                                                        100))
                                        elseif game:GetService("Workspace")["_WorldOrigin"]
                                            .Locations:FindFirstChild("Island 2") then
                                            getgenv().TP(game:GetService(
                                                             "Workspace")["_WorldOrigin"]
                                                             .Locations:FindFirstChild(
                                                             "Island 2").CFrame *
                                                             CFrame.new(0, 70,
                                                                        100))
                                        elseif game:GetService("Workspace")["_WorldOrigin"]
                                            .Locations:FindFirstChild("Island 1") then
                                            getgenv().TP(game:GetService(
                                                             "Workspace")["_WorldOrigin"]
                                                             .Locations:FindFirstChild(
                                                             "Island 1").CFrame *
                                                             CFrame.new(0, 70,
                                                                        100))
                                        end
                                    end
                                end
                            else
                                _G.StartFarm = true
                                _G.StoreFruit = true
                                _G.Grab_Fruit = true
                                _G.Auto_Yama = true
                                _G.JoinD = nil
                                _G.Auto_Dungeon_Superhuman = nil
                            end
                        end
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Fishman Karate") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Fishman Karate").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward", "DragonClaw", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward", "DragonClaw", "2")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Dragon Claw") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Dragon Claw").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BuySuperhuman")
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuySuperhuman", true) == 1 then
                        _G.Auto_Superhuman = false
                    end
                end
            end)
        end
    end)

    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Auto_Electric_Claw then
                    if game.Players.LocalPlayer.Character:FindFirstChild(
                        "Superhuman") and
                        game.Players.LocalPlayer.Character:FindFirstChild(
                            "Superhuman").Level.Value >= 300 and
                        _G.Auto_Superhuman == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BuyElectro")
                    end
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                        "Electro") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                            "Electro") then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                            "Electro") and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                "Electro").Level.Value >= 400 then
                            if game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("BuyElectricClaw", true) ==
                                1 then
                                if game:GetService("Players").LocalPlayer
                                    .Character:FindFirstChild("Electric Claw") or
                                    game:GetService("Players").LocalPlayer
                                        .backpack:FindFirstChild("Electric Claw") then
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("BuyElectricClaw")
                                end
                            else
                                _G.StartFarm = false
                                _G.StoreFruit = false
                                _G.Grab_Fruit = false
                                _G.Auto_Yama = false
                                repeat
                                    task.wait()
                                    _G.StartFarm = false
                                    _G.StoreFruit = false
                                    _G.Grab_Fruit = false
                                    _G.Auto_Yama = false
                                    toposition(
                                        CFrame.new(-10371.4717, 330.764496,
                                                   -10131.4199))
                                until not _G.Start_Kaitun or
                                    (game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position -
                                        CFrame.new(-10371.4717, 330.764496,
                                                   -10131.4199).Position).Magnitude <=
                                    10
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("BuyElectricClaw",
                                                         "Start")
                                wait(2)
                                repeat
                                    task.wait()
                                    _G.StartFarm = false
                                    _G.StoreFruit = false
                                    _G.Grab_Fruit = false
                                    _G.Auto_Yama = false
                                    toposition(
                                        CFrame.new(-12550.532226563,
                                                   336.22631835938,
                                                   -7510.4233398438))
                                until not _G.Start_Kaitun or
                                    (game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position -
                                        CFrame.new(-12550.532226563,
                                                   336.22631835938,
                                                   -7510.4233398438).Position).Magnitude <=
                                    10
                                wait(1)
                                repeat
                                    task.wait()
                                    _G.StartFarm = false
                                    _G.StoreFruit = false
                                    _G.Grab_Fruit = false
                                    _G.Auto_Yama = false
                                    toposition(
                                        CFrame.new(-10371.4717, 330.764496,
                                                   -10131.4199))
                                until not _G.Start_Kaitun or
                                    (game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position -
                                        CFrame.new(-10371.4717, 330.764496,
                                                   -10131.4199).Position).Magnitude <=
                                    10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("BuyElectricClaw")
                                wait(0.5)
                                _G.StartFarm = true
                                _G.StoreFruit = true
                                _G.Grab_Fruit = true
                                _G.Auto_Yama = true
                            end
                        end
                    end
                end
            end)
        end
    end)

    FruitList = {
        "Bomb-Bomb", "Spike-Spike", "Chop-Chop", "Spring-Spring", "Kilo-Kilo",
        "Spin-Spin", "Bird: Falcon", "Smoke-Smoke", "Flame-Flame", "Ice-Ice",
        "Sand-Sand", "Dark-Dark", "Revive-Revive", "Diamond-Diamond",
        "Light-Light", "Love-Love", "Rubber-Rubber", "Barrier-Barrier",
        "Magma-Magma", "Door-Door", "Quake-Quake", "Human-Human: Buddha",
        "String-String", "Bird-Bird: Phoenix", "Rumble-Rumble", "Paw-Paw",
        "Gravity-Gravity", "Dough-Dough", "Venom-Venom", "Shadow-Shadow",
        "Control-Control", "Soul-Soul", "Dragon-Dragon"
    }

    spawn(function()
        local Player_level = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main
                           .Quest
        while wait() do
            if _G.Start_GoTo_Thire_World and _G.Start_Kaitun and W2 and
                Player_level >= 1500 and
                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                    "ZQuestProgress", "Check") ~= 0 then
                pcall(function()
                    _G.Thire_World = true
                    _G.StartFarm = false
                    _G.Grab_Fruit = false
                    _G.StoreFruit = false
                    if game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild(
                        "Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BartiloQuestProgress", "Bartilo") == 3 then
                            if game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("GetUnlockables")
                                .FlamingoAccess ~= nil then
                                if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                    "ZQuestProgress", "Check") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(
                                        "rip_indra [Lv. 1500] [Boss]") then
                                        for i, v in
                                            pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name ==
                                                "rip_indra [Lv. 1500] [Boss]" and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild(
                                                    "HumanoidRootPart") and
                                                v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart
                                                        .CanCollide = false
                                                    v.Head.CanCollide = false
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart
                                                        .Transparency = 1
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))
                                                    ----AutoHaki()
                                                    if (v.HumanoidRootPart
                                                        .CFrame.Position -
                                                        game:GetService(
                                                            "Players").LocalPlayer
                                                            .Character
                                                            .HumanoidRootPart
                                                            .Position).Magnitude <=
                                                        50 then end
                                                until not _G.Auto_Third_World or
                                                    not v.Parent or
                                                    v.Humanoid.Health <= 0
                                                _G.Thire_World = nil
                                                repeat
                                                    wait()
                                                    game:GetService(
                                                        "ReplicatedStorage").Remotes
                                                        .CommF_:InvokeServer(
                                                        "TravelZou")
                                                until LOL == "LOLOL"
                                            end
                                        end
                                    else
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "ZQuestProgress", "Check")
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer(
                                            "ZQuestProgress", "Begin")
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                    "ZQuestProgress", "Check") == 1 then
                                    _G.Start_GoTo_Thire_World = false
                                else
                                    -- game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                    if game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("ZQuestProgress",
                                                             "Check") ~= 0 then
                                        Level_SD:Set(
                                            "Auto Thire World Stats : \n Kill Don Swan Boss ✅")
                                        if game:GetService("Workspace").Enemies:FindFirstChild(
                                            "Don Swan [Lv. 1000] [Boss]") or
                                            game.ReplicatedStorage:FindFirstChild(
                                                "Don Swan [Lv. 1000] [Boss]") then
                                            for i, v in
                                                pairs(game:GetService(
                                                          "Workspace").Enemies:GetChildren()) do
                                                if v.Name ==
                                                    "Don Swan [Lv. 1000] [Boss]" and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild(
                                                        "HumanoidRootPart") and
                                                    v.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        v.HumanoidRootPart.Size =
                                                            Vector3.new(60, 60,
                                                                        60)
                                                        v.HumanoidRootPart
                                                            .CanCollide = false
                                                        v.Head.CanCollide =
                                                            false
                                                        EquipWeapon(
                                                            _G.Select_Weapon)
                                                        v.HumanoidRootPart
                                                            .Transparency = 1
                                                        toposition(
                                                            v.HumanoidRootPart
                                                                .CFrame *
                                                                CFrame.new(0,
                                                                           30, 5))
                                                        if (v.HumanoidRootPart
                                                            .CFrame.Position -
                                                            game:GetService(
                                                                "Players").LocalPlayer
                                                                .Character
                                                                .HumanoidRootPart
                                                                .Position).Magnitude <=
                                                            50 then end
                                                    until not _G.Auto_Third_World or
                                                        not v.Parent or
                                                        v.Humanoid.Health <= 0
                                                else
                                                    toposition(
                                                        game.ReplicatedStorage:FindFirstChild(
                                                            "Don Swan [Lv. 1000] [Boss]")
                                                            .HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))
                                                end
                                            end
                                        else
                                            toposition(
                                                CFrame.new(2207.38672,
                                                           15.1333914,
                                                           883.866394,
                                                           0.931175113,
                                                           3.09244754e-08,
                                                           -0.364572287,
                                                           1.20643637e-08, 1,
                                                           1.15638279e-07,
                                                           0.364572287,
                                                           -1.12077821e-07,
                                                           0.931175113))
                                        end
                                    end
                                end
                            else
                                _G.StoreFruit = false
                                for i, v in next,
                                            game.ReplicatedStorage:WaitForChild(
                                                "Remotes").CommF_:InvokeServer(
                                                "GetFruits") do
                                    if v.Price >= 1000000 then
                                        table.insert(FruitPrice, v.Name)
                                    else
                                        for i, v in
                                            pairs(game:GetService("Workspace")
                                                      :GetChildren()) do
                                            if string.find(v.Name, "Fruit") then
                                                if v:IsA("Tool") then
                                                    _G.StartFarm = false
                                                    wait(1.5)
                                                    if (v.Handle.CFrame.Position -
                                                        game:GetService(
                                                            "Players").LocalPlayer
                                                            .Character
                                                            .HumanoidRootPart
                                                            .Position).Magnitude >=
                                                        3000 then
                                                        Level_SD:Set(
                                                            "Auto Thire World Stats : \n Go To Fruit ✅")
                                                        Bypass(v.Handle.CFrame *
                                                                   CFrame.new(0,
                                                                              50,
                                                                              0))
                                                        toposition(v.Handle
                                                                       .CFrame)
                                                    else
                                                        toposition(v.Handle
                                                                       .CFrame)
                                                    end
                                                end
                                            elseif not v:IsA("Tool") then
                                                Level_SD:Set(
                                                    "Auto Thire World Stats : \n Wait Fruit Spawn ✅")
                                                game:GetService(
                                                    "ReplicatedStorage").Remotes
                                                    .CommF_:InvokeServer(
                                                    "Cousin", "Buy")
                                                wait(0.1)
                                            end
                                        end
                                    end
                                end
                                for i, v in
                                    pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                              "getInventoryFruits")) do
                                    for _, x in pairs(v) do
                                        if _ == "Name" then
                                            table.insert(FruitStore, x)
                                        end
                                    end
                                end
                                function CheckFruit()
                                    local player = game.Players.LocalPlayer
                                    for _, tool in pairs(
                                                       player.Backpack:GetDescendants()) do
                                        if tool:FindFirstChild("Fruit") then
                                            return tool
                                        end
                                    end
                                end
                                function AddToNpc()
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(
                                        tostring(CheckFruit())) then
                                        wait(1.5)
                                        EquipWeapon(tostring(CheckFruit()))
                                        wait(0.5)
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer("TalkTrevor",
                                                                 "1")
                                        wait(0.5)
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer("TalkTrevor",
                                                                 "2")
                                        wait(0.5)
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer("TalkTrevor",
                                                                 "1")
                                        wait(0.5)
                                        game:GetService("ReplicatedStorage").Remotes
                                            .CommF_:InvokeServer("TalkTrevor",
                                                                 "3")
                                    end
                                end
                                for _, y in pairs(FruitPrice) do
                                    for _, z in pairs(FruitStore) do
                                        if y == z and
                                            game:GetService("ReplicatedStorage").Remotes
                                                .CommF_:InvokeServer(
                                                "GetUnlockables").FlamingoAccess ==
                                            nil then
                                            local args = {
                                                [1] = "LoadFruit",
                                                [2] = tostring(y)
                                            }

                                            game:GetService("ReplicatedStorage").Remotes
                                                .CommF_:InvokeServer(
                                                unpack(args))
                                        end
                                    end
                                end
                            end
                            AddToNpc()
                        else
                            if game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("BartiloQuestProgress",
                                                     "Bartilo") == 0 then
                                _G.Grab_Fruit = false
                                _G.StartFarm = false
                                Level_SD:Set("Stats : Bartilo Quest")
                                if QuestC.Visible == true then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(
                                        "Swan Pirate [Lv. 775]") then
                                        for i, v in
                                            pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Swan Pirate [Lv. 775]" then
                                                if v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild(
                                                        "HumanoidRootPart") then
                                                    repeat
                                                        task.wait()
                                                        if not string.find(
                                                            game:GetService(
                                                                "Players").LocalPlayer
                                                                .PlayerGui.Main
                                                                .Quest.Container
                                                                .QuestTitle
                                                                .Title.Text,
                                                            "Swan Pirate") then
                                                            game:GetService(
                                                                "ReplicatedStorage").Remotes
                                                                .CommF_:InvokeServer(
                                                                "AbandonQuest")
                                                        else
                                                            PosMon =
                                                                v.HumanoidRootPart
                                                                    .CFrame
                                                            v.HumanoidRootPart
                                                                .Size =
                                                                Vector3.new(60,
                                                                            60,
                                                                            60)
                                                            v.HumanoidRootPart
                                                                .CanCollide =
                                                                false
                                                            v.Humanoid.WalkSpeed =
                                                                0
                                                            v.Head.CanCollide =
                                                                false
                                                            BringMobFarm = true
                                                            EquipWeapon(
                                                                _G.Select_Weapon)
                                                            v.HumanoidRootPart
                                                                .Transparency =
                                                                1
                                                            toposition(
                                                                v.HumanoidRootPart
                                                                    .CFrame *
                                                                    CFrame.new(
                                                                        0, 30, 5))

                                                            if not _G.FastAttack or
                                                                not _G.FastAttackO or
                                                                _G.FastAttack or
                                                                _G.FastAttackO then

                                                            end
                                                        end
                                                    until not _G.Start_GoTo_Thire_World or
                                                        not v.Parent or
                                                        v.Humanoid.Health <= 0 or
                                                        QuestC.Visible == false or
                                                        not v:FindFirstChild(
                                                            "HumanoidRootPart")
                                                end
                                            end
                                        end
                                    else
                                        for i, v in pairs(
                                                        workspace._WorldOrigin
                                                            .EnemySpawns:GetChildren()) do
                                            if v.Name == "Swan Pirate" then
                                                local CFrameEnemySpawns =
                                                    v.CFrame
                                                wait(0.5)
                                                toposition(CFrameEnemySpawns *
                                                               CFrame.new(0, 30,
                                                                          5))
                                            end
                                        end
                                    end
                                else
                                    repeat
                                        wait()
                                        toposition(
                                            CFrame.new(-461.533203, 72.3478546,
                                                       300.311096, 0.050853312,
                                                       -0, -0.998706102, 0, 1,
                                                       -0, 0.998706102, 0,
                                                       0.050853312))
                                    until (CFrame.new(-461.533203, 72.3478546,
                                                      300.311096, 0.050853312,
                                                      -0, -0.998706102, 0, 1,
                                                      -0, 0.998706102, 0,
                                                      0.050853312).Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        20 or not _G.Auto_Bartilo_Quest
                                    if (CFrame.new(-461.533203, 72.3478546,
                                                   300.311096, 0.050853312, -0,
                                                   -0.998706102, 0, 1, -0,
                                                   0.998706102, 0, 0.050853312)
                                        .Position -
                                        game:GetService("Players").LocalPlayer
                                            .Character.HumanoidRootPart.Position).Magnitude <=
                                        1 then
                                        BringMobFarm = false
                                        game:GetService('ReplicatedStorage').Remotes
                                            .CommF_:InvokeServer("StartQuest",
                                                                 "BartiloQuest",
                                                                 1)
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("BartiloQuestProgress",
                                                     "Bartilo") == 1 then
                                _G.StartFarm = false
                                Level_SD:Set("Stats : Bartilo Quest")
                                if game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Jeremy [Lv. 850] [Boss]") then
                                    for i, v in
                                        pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                            if v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild(
                                                    "HumanoidRootPart") then
                                                repeat
                                                    task.wait()
                                                    PosMon = v.HumanoidRootPart
                                                                 .CFrame
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart
                                                        .CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    BringMobFarm = true
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart
                                                        .Transparency = 1
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))

                                                    if not _G.FastAttack or
                                                        not _G.FastAttackO or
                                                        _G.FastAttack or
                                                        _G.FastAttackO then end
                                                until not _G.Start_GoTo_Thire_World or
                                                    not v.Parent or
                                                    v.Humanoid.Health <= 0 or
                                                    QuestC.Visible == false or
                                                    not v:FindFirstChild(
                                                        "HumanoidRootPart")
                                            end
                                        end
                                    end
                                else
                                    toposition(
                                        CFrame.new(2158.97412, 449.056244,
                                                   705.411682, -0.754199564,
                                                   -4.17389057e-09,
                                                   -0.656645238,
                                                   -4.47752875e-08, 1,
                                                   4.50709301e-08, 0.656645238,
                                                   6.3393955e-08, -0.754199564))
                                    if not game:GetService("Workspace").Enemies:FindFirstChild(
                                        "Jeremy [Lv. 850] [Boss]") and
                                        (CFrame.new(2158.97412, 449.056244,
                                                    705.411682, -0.754199564,
                                                    -4.17389057e-09,
                                                    -0.656645238,
                                                    -4.47752875e-08, 1,
                                                    4.50709301e-08, 0.656645238,
                                                    6.3393955e-08, -0.754199564)
                                            .Position -
                                            game.Players.LocalPlayer.Character
                                                .HumanoidRootPart.Position).Magnitude <=
                                        20 then
                                        if not game:GetService("Workspace").Enemies:FindFirstChild(
                                            "Jeremy [Lv. 850] [Boss]") then
                                            Hop()
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("BartiloQuestProgress",
                                                     "Bartilo") == 2 then
                                Level_SD:Set("Stats : Bartilo Quest")
                                repeat
                                    wait()
                                    toposition(
                                        CFrame.new(-1830.83972, 10.5578213,
                                                   1680.60229, 0.979988456,
                                                   -2.02152783e-08,
                                                   -0.199054286, 2.20792113e-08,
                                                   1, 7.1442483e-09,
                                                   0.199054286, -1.13962431e-08,
                                                   0.979988456))
                                until (CFrame.new(-1830.83972, 10.5578213,
                                                  1680.60229, 0.979988456,
                                                  -2.02152783e-08, -0.199054286,
                                                  2.20792113e-08, 1,
                                                  7.1442483e-09, 0.199054286,
                                                  -1.13962431e-08, 0.979988456)
                                    .Position -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude <=
                                    1 or _G.Auto_Bartilo_Quest == false
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate1
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate2
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate3
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate4
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate5
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate6
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate7
                                                                   .CFrame
                                wait(0.7)
                                game.Players.LocalPlayer.Character
                                    .HumanoidRootPart.CFrame = workspace.Map
                                                                   .Dressrosa
                                                                   .BartiloPlates
                                                                   .Plate8
                                                                   .CFrame
                                wait(0.7)
                            end
                        end
                    else
                        Level_SD:Set("Stats : Evo Race V2 ✅")
                        if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild(
                            "Evolved") then
                            if game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("Alchemist", "1") == 0 then
                                toposition(
                                    CFrame.new(-2779.83521, 72.9661407,
                                               -3574.02002, -0.730484903,
                                               6.39014104e-08, -0.68292886,
                                               3.59963224e-08, 1,
                                               5.50667032e-08, 0.68292886,
                                               1.56424669e-08, -0.730484903))
                                if (Vector3.new(-2779.83521, 72.9661407,
                                                -3574.02002) -
                                    game:GetService("Players").LocalPlayer
                                        .Character.HumanoidRootPart.Position).Magnitude <=
                                    4 then
                                    wait(1.3)
                                    game:GetService("ReplicatedStorage").Remotes
                                        .CommF_:InvokeServer("Alchemist", "2")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("Alchemist", "1") == 1 then
                                pcall(function()
                                    if not game:GetService("Players").LocalPlayer
                                        .Backpack:FindFirstChild("Flower 1") and
                                        not game:GetService("Players").LocalPlayer
                                            .Character:FindFirstChild("Flower 1") then
                                        toposition(
                                            game:GetService("Workspace").Flower1
                                                .CFrame)
                                    elseif not game:GetService("Players").LocalPlayer
                                        .Backpack:FindFirstChild("Flower 2") and
                                        not game:GetService("Players").LocalPlayer
                                            .Character:FindFirstChild("Flower 2") then
                                        toposition(
                                            game:GetService("Workspace").Flower2
                                                .CFrame)
                                    elseif not game:GetService("Players").LocalPlayer
                                        .Backpack:FindFirstChild("Flower 3") and
                                        not game:GetService("Players").LocalPlayer
                                            .Character:FindFirstChild("Flower 3") then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(
                                            "Swan Pirate [Lv. 775]") then
                                            for i, v in
                                                pairs(game:GetService(
                                                          "Workspace").Enemies:GetChildren()) do
                                                if v.Name ==
                                                    "Swan Pirate [Lv. 775]" then
                                                    repeat
                                                        wait()
                                                        EquipWeapon(
                                                            _G.Select_Weapon)
                                                        toposition(
                                                            v.HumanoidRootPart
                                                                .CFrame *
                                                                CFrame.new(0,
                                                                           30, 5))
                                                        v.HumanoidRootPart
                                                            .CanCollide = false
                                                        v.HumanoidRootPart.Size =
                                                            Vector3.new(50, 50,
                                                                        50)
                                                        game:GetService 'VirtualUser'
                                                            :CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(
                                                                Vector2.new(
                                                                    1280, 672))
                                                        PosMon =
                                                            v.HumanoidRootPart
                                                                .CFrame
                                                        BringMobFarm = true
                                                    until game:GetService(
                                                        "Players").LocalPlayer
                                                        .Backpack:FindFirstChild(
                                                        "Flower 3") or
                                                        not v.Parent or
                                                        v.Humanoid.Health <= 0 or
                                                        _G.Auto_Evo_Race_V2 ==
                                                        false
                                                    BringMobFarm = false
                                                end
                                            end
                                        else
                                            BringMobFarm = false
                                            toposition(CFrame.new(
                                                           980.0985107421875,
                                                           121.331298828125,
                                                           1287.2093505859375))
                                        end
                                    end
                                end)
                            elseif game:GetService("ReplicatedStorage").Remotes
                                .CommF_:InvokeServer("Alchemist", "1") == 2 then
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("Alchemist", "3")
                            end
                        end
                    end
                end)
            end
        end
    end)

    function EquipWeapon(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool =
                game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.4)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
    spawn(function()
        while wait() do
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Melee" then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild(
                        tostring(v.Name)) then
                        _G.Select_Weapon = v.Name
                        -- EquipWeapon(_G.Select_Weapon)
                    end
                end
            end
        end
    end)
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or
            v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or
            v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or
            e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
            e:IsA("DepthOfFieldEffect") then e.Enabled = false end
    end
    spawn(function()
        while wait() do
            if _G.Start_Kaitun then
                if not game.Players.LocalPlayer.Character:FindFirstChild(
                    "HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "Buso")
                end
            end
        end
    end)
    local InputService = game:GetService('UserInputService')
    InputService.WindowFocused:Connect(function()
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end)
    InputService.WindowFocusReleased:Connect(function()
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end)
    spawn(function()
        while wait() do
            if _G.Start_Kaitun and game.Players.LocalPlayer.Data.Level.Value >=
                350 and _G.Start_Kaitun == nil then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Soul Cane")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Slingshot")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Musket")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Refined Flintlock")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Cannon")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BlackbeardReward", "Slingshot", "1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BlackbeardReward", "Slingshot", "2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Black Cape")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Tomoe Ring")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "BuyItem", "Swordsman Hat")
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Start_Kaitun and W2 and
                game:GetService("Players").LocalPlayer.Data.Beli.Value >= 2000 then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "LegendarySwordDealer", "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "LegendarySwordDealer", "2")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "LegendarySwordDealer", "3")
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if _G.Start_Kaitun then
                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui
                                       .promptOverlay.ChildAdded:Connect(
                                       function(child)
                        if child.Name == 'ErrorPrompt' and
                            child:FindFirstChild('MessageArea') and
                            child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService")
                                :Teleport(game.PlaceId)
                        end
                    end)
            end
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Auto_New_World and W1 then
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                        _G.StartFarm = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "AbandonQuest")
                        Level_SD:Set("Stats : New World ✅")
                        if game.Workspace.Map.Ice.Door.CanCollide == true and
                            game.Workspace.Map.Ice.Door.Transparency == 0 then
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "DressrosaQuestProgress", "Detective")
                            EquipWeapon("Key")
                            repeat
                                wait()
                                toposition(
                                    CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            until (CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                .Position -
                                game:GetService("Players").LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude <= 3 or
                                not _G.Settings.Main["Auto New World"]
                        elseif game.Workspace.Map.Ice.Door.CanCollide == false and
                            game.Workspace.Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild(
                                "Ice Admiral [Lv. 700] [Boss]") then
                                for i, v in pairs(
                                                game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            if not game.Players.LocalPlayer
                                                .Character:FindFirstChild(
                                                "HasBuso") then
                                                game:GetService(
                                                    "ReplicatedStorage").Remotes
                                                    .CommF_:InvokeServer("Buso")
                                            end
                                            v.HumanoidRootPart.Size =
                                                Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide =
                                                false
                                            v.Humanoid:ChangeState(11)
                                            EquipWeapon(_G.Select_Weapon)
                                            game:GetService("ReplicatedStorage").Remotes
                                                .CommF_:InvokeServer(
                                                "TravelDressrosa")

                                            toposition(
                                                v.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 30, 5))

                                            if not _G.FastAttack or
                                                not _G.FastAttackO or
                                                _G.FastAttack or _G.FastAttackO or
                                                _G.SuperFastAttack then end
                                        until v.Humanoid.Health <= 0 or
                                            not v.Parent
                                        game:GetService("ReplicatedStorage")
                                            :InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes
                                    .CommF_:InvokeServer("TravelDressrosa")
                                toposition(
                                    CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "TravelDressrosa")
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
            local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main
                               .Quest
            pcall(function()
                if _G.Start_Kaitun and _G.Auto_Bartilo_Quest and MyLevel >= 850 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BartiloQuestProgress", "Bartilo") == 0 then
                        _G.StartFarm = false
                        _G.Grab_Fruit = false
                        Level_SD:Set("Stats : Bartilo Quest")
                        if QuestC.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(
                                "Swan Pirate [Lv. 775]") then
                                for i, v in pairs(
                                                game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Swan Pirate [Lv. 775]" then
                                        if v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") then
                                            repeat
                                                task.wait()
                                                if not string.find(
                                                    game:GetService("Players").LocalPlayer
                                                        .PlayerGui.Main.Quest
                                                        .Container.QuestTitle
                                                        .Title.Text,
                                                    "Swan Pirate") then
                                                    game:GetService(
                                                        "ReplicatedStorage").Remotes
                                                        .CommF_:InvokeServer(
                                                        "AbandonQuest")
                                                else
                                                    PosMon = v.HumanoidRootPart
                                                                 .CFrame
                                                    v.HumanoidRootPart.Size =
                                                        Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart
                                                        .CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    BringMobFarm = true
                                                    EquipWeapon(_G.Select_Weapon)
                                                    v.HumanoidRootPart
                                                        .Transparency = 1
                                                    toposition(
                                                        v.HumanoidRootPart
                                                            .CFrame *
                                                            CFrame.new(0, 30, 5))

                                                    if not _G.FastAttack or
                                                        not _G.FastAttackO or
                                                        _G.FastAttack or
                                                        _G.FastAttackO then end
                                                end
                                            until not _G.Auto_Bartilo_Quest or
                                                not v.Parent or
                                                v.Humanoid.Health <= 0 or
                                                QuestC.Visible == false or
                                                not v:FindFirstChild(
                                                    "HumanoidRootPart")
                                        end
                                    end
                                end
                            else
                                for i, v in pairs(
                                                workspace._WorldOrigin
                                                    .EnemySpawns:GetChildren()) do
                                    if v.Name == "Swan Pirate" then
                                        local CFrameEnemySpawns = v.CFrame
                                        wait(0.5)
                                        toposition(CFrameEnemySpawns *
                                                       CFrame.new(0, 30, 5))
                                    end
                                end
                            end
                        else
                            repeat
                                wait()
                                toposition(
                                    CFrame.new(-461.533203, 72.3478546,
                                               300.311096, 0.050853312, -0,
                                               -0.998706102, 0, 1, -0,
                                               0.998706102, 0, 0.050853312))
                            until (CFrame.new(-461.533203, 72.3478546,
                                              300.311096, 0.050853312, -0,
                                              -0.998706102, 0, 1, -0,
                                              0.998706102, 0, 0.050853312)
                                .Position -
                                game:GetService("Players").LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude <= 20 or
                                not _G.Auto_Bartilo_Quest
                            if (CFrame.new(-461.533203, 72.3478546, 300.311096,
                                           0.050853312, -0, -0.998706102, 0, 1,
                                           -0, 0.998706102, 0, 0.050853312)
                                .Position -
                                game:GetService("Players").LocalPlayer.Character
                                    .HumanoidRootPart.Position).Magnitude <= 1 then
                                BringMobFarm = false
                                game:GetService('ReplicatedStorage').Remotes
                                    .CommF_:InvokeServer("StartQuest",
                                                         "BartiloQuest", 1)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BartiloQuestProgress", "Bartilo") == 1 then
                        _G.StartFarm = false
                        Level_SD:Set("Stats : Bartilo Quest")
                        if game:GetService("Workspace").Enemies:FindFirstChild(
                            "Jeremy [Lv. 850] [Boss]") then
                            for i, v in pairs(
                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                    if v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") then
                                        repeat
                                            task.wait()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.Size =
                                                Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.CanCollide =
                                                false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            BringMobFarm = true
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Transparency = 1
                                            toposition(
                                                v.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 30, 5))

                                            if not _G.FastAttack or
                                                not _G.FastAttackO or
                                                _G.FastAttack or _G.FastAttackO then

                                            end
                                        until not _G.Auto_Bartilo_Quest or
                                            not v.Parent or v.Humanoid.Health <=
                                            0 or QuestC.Visible == false or
                                            not v:FindFirstChild(
                                                "HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            toposition(CFrame.new(2158.97412, 449.056244,
                                                  705.411682, -0.754199564,
                                                  -4.17389057e-09, -0.656645238,
                                                  -4.47752875e-08, 1,
                                                  4.50709301e-08, 0.656645238,
                                                  6.3393955e-08, -0.754199564))
                            if not game:GetService("Workspace").Enemies:FindFirstChild(
                                "Jeremy [Lv. 850] [Boss]") and
                                (CFrame.new(2158.97412, 449.056244, 705.411682,
                                            -0.754199564, -4.17389057e-09,
                                            -0.656645238, -4.47752875e-08, 1,
                                            4.50709301e-08, 0.656645238,
                                            6.3393955e-08, -0.754199564)
                                    .Position -
                                    game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.Position).Magnitude <=
                                20 then
                                if not game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Jeremy [Lv. 850] [Boss]") then
                                    _G.StartFarm = true
                                    _G.Auto_Bartilo_Quest = false
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BartiloQuestProgress", "Bartilo") == 2 then
                        _G.StartFarm = false
                        Level_SD:Set("Stats : Bartilo Quest")
                        repeat
                            wait()
                            toposition(CFrame.new(-1830.83972, 10.5578213,
                                                  1680.60229, 0.979988456,
                                                  -2.02152783e-08, -0.199054286,
                                                  2.20792113e-08, 1,
                                                  7.1442483e-09, 0.199054286,
                                                  -1.13962431e-08, 0.979988456))
                        until (CFrame.new(-1830.83972, 10.5578213, 1680.60229,
                                          0.979988456, -2.02152783e-08,
                                          -0.199054286, 2.20792113e-08, 1,
                                          7.1442483e-09, 0.199054286,
                                          -1.13962431e-08, 0.979988456).Position -
                            game:GetService("Players").LocalPlayer.Character
                                .HumanoidRootPart.Position).Magnitude <= 1 or
                            _G.Auto_Bartilo_Quest == false
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate1.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate2.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate3.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate4.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate5.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate6.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate7.CFrame
                        wait(0.7)
                        game.Players.LocalPlayer.Character.HumanoidRootPart
                            .CFrame = workspace.Map.Dressrosa.BartiloPlates
                                          .Plate8.CFrame
                        wait(0.7)
                        _G.StartFarm = true
                        wait(2.5)
                        _G.Auto_Bartilo_Quest = false
                        _G.Grab_Fruit = true
                        Level_SD:Set("Stats : Farm ✅")
                    end
                end
            end)
        end
    end)
    function InMyNetWork(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position -
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                200 then return true end
            return false
        end
    end
    spawn(function()
        while true do
            wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",
                                  math.huge)
            end
        end
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.Bring_Mob and _G.Start_Kaitun and BringMobFarm then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if not string.find(v.Name, "Boss") and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            500 then
                            if InMyNetWork(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size =
                                    Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer,
                                                  "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Bring_Mob then
                    for i, v in pairs(
                                    game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == QuestCheck()[3] and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            250 then
                            sethiddenproperty(game.Players.LocalPlayer,
                                              "SimulationRadius", math.huge)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer,
                                              "SimulationRadius", math.huge)
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Bring_Mob and BringMobFarm55 then
                    for i, v in pairs(
                                    game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "God's Guard [Lv. 450]" and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            250 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer,
                                              "SimulationRadius", math.huge)
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Start_Kaitun and _G.Bring_Mob and BringMobFarm556 then
                    for i, v in pairs(
                                    game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name ==
                            "Arctic Warrior [Lv. 1350]") and
                            (v.HumanoidRootPart.Position - PosMon.Position).magnitude <=
                            250 then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer,
                                              "SimulationRadius", math.huge)
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            _G.Bring_Mob = false
            wait(0.5)
            _G.Bring_Mob = true
            wait(1.5)
        end
    end)
    _G.FastAttack = true
    spawn(function()
        while wait() do
            if _G.Start_Kaitun then
                if game.Players.LocalPlayer.Data.Stats.Melee.Level.Value <= 2449 then
                    local args = {[1] = "AddPoint", [2] = "Melee", [3] = 100}

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
                        :WaitForChild("CommF_"):InvokeServer(unpack(args))
                elseif game.Players.LocalPlayer.Data.Stats.Defense.Level.Value <=
                    2449 and
                    game.Players.LocalPlayer.Data.Stats.Melee.Level.Value >=
                    2450 then
                    local args = {[1] = "AddPoint", [2] = "Defense", [3] = 100}

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
                        :WaitForChild("CommF_"):InvokeServer(unpack(args))
                elseif game.Players.LocalPlayer.Data.Stats.Sword.Level.Value <=
                    2449 and
                    game.Players.LocalPlayer.Data.Stats.Defense.Level.Value >=
                    2450 then
                    local args = {[1] = "AddPoint", [2] = "Sword", [3] = 100}

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
                        :WaitForChild("CommF_"):InvokeServer(unpack(args))
                end
            end
        end
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Buy_Devil_Fruit then
                pcall(function()
                    for i, v in next, _G.Settings.Main["Select Fruit"] do
                        if not game:GetService("Players").LocalPlayer.Data
                            .DevilFruit.Value == v then
                            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                "PurchaseRawFruit", v);
                        end
                    end
                end)
            end
        end
    end)

    local Time = 0.09
    local AttackRandom = 2
    spawn(function() while wait(5.5) do AttackRandom = math.random(1, 4) end end)
    spawn(function()
        while _G.FastAttack do
            task.wait()

            require(game.ReplicatedStorage.Util.CameraShaker):Stop()
            xShadowFastAttackx = require(
                                     game:GetService("Players").LocalPlayer
                                         .PlayerScripts.CombatFramework)
            xShadowx = debug.getupvalues(xShadowFastAttackx)[2]
            task.spawn(function()
                while true do
                    task.wait()
                    if _G.FastAttack then
                        if typeof(xShadowx) == "table" then
                            pcall(function()
                                xShadowx.activeController.timeToNextAttack =
                                    -(math.huge ^ math.huge ^ math.huge)
                                xShadowx.activeController.timeToNextAttack = 0
                                xShadowx.activeController.hitboxMagnitude = 200
                                xShadowx.activeController.active = false
                                xShadowx.activeController.timeToNextBlock = 0
                                xShadowx.activeController.focusStart = 0
                                xShadowx.activeController.increment = 4
                                xShadowx.activeController.blocking = false
                                xShadowx.activeController.attacking = false
                                xShadowx.activeController.humanoid.AutoRotate =
                                    true
                            end)
                        end
                    end
                end
            end)

            local Module = require(game:GetService("Players").LocalPlayer
                                       .PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CameraShakerR = require(
                                      game.ReplicatedStorage.Util.CameraShaker)

            task.spawn(function()
                while true do
                    task.wait()
                    if _G.FastAttack then
                        pcall(function()
                            CameraShakerR:Stop()
                            CombatFramework.activeController.attacking = false
                            CombatFramework.activeController.timeToNextAttack =
                                0
                            CombatFramework.activeController.increment = 4
                            CombatFramework.activeController.hitboxMagnitude =
                                100
                            CombatFramework.activeController.blocking = false
                            CombatFramework.activeController.timeToNextBlock = 0
                            CombatFramework.activeController.focusStart = 0
                            CombatFramework.activeController.humanoid.AutoRotate =
                                true
                        end)
                    end
                end
            end)

            local SeraphFrame = debug.getupvalues(
                                    require(game:GetService("Players").LocalPlayer
                                                .PlayerScripts:WaitForChild(
                                                "CombatFramework")))[2]
            local VirtualUser = game:GetService('VirtualUser')
            local RigControllerR = debug.getupvalues(
                                       require(game:GetService("Players").LocalPlayer
                                                   .PlayerScripts
                                                   .CombatFramework
                                                   .RigController))[2]
            local Client = game:GetService("Players").LocalPlayer

            function SeraphFuckWeapon()
                local p13 = SeraphFrame.activeController
                local wea = p13.blades[1]
                if not wea then return end
                while wea.Parent ~= game.Players.LocalPlayer.Character do
                    wea = wea.Parent
                end
                return wea
            end

            function getHits(Size)
                local Hits = {}
                local Enemies = workspace.Enemies:GetChildren()
                local Characters = workspace.Characters:GetChildren()
                for i = 1, #Enemies do
                    local v = Enemies[i]
                    local Human = v:FindFirstChildOfClass("Humanoid")
                    if Human and Human.RootPart and Human.Health > 0 and
                        game.Players.LocalPlayer:DistanceFromCharacter(
                            Human.RootPart.Position) < Size + 55 then
                        table.insert(Hits, Human.RootPart)
                    end
                end
                for i = 1, #Characters do
                    local v = Characters[i]
                    if v ~= game.Players.LocalPlayer.Character then
                        local Human = v:FindFirstChildOfClass("Humanoid")
                        if Human and Human.RootPart and Human.Health > 0 and
                            game.Players.LocalPlayer:DistanceFromCharacter(
                                Human.RootPart.Position) < Size + 55 then
                            table.insert(Hits, Human.RootPart)
                        end
                    end
                end
                return Hits
            end

            task.spawn(function()
                while true do
                    task.wait()
                    if _G.FastAttack then
                        if SeraphFrame.activeController then
                            if v.Humanoid.Health > 0 then
                                SeraphFrame.activeController.timeToNextAttack =
                                    -(math.huge ^ math.huge ^ math.huge)
                                SeraphFrame.activeController.timeToNextAttack =
                                    0
                                SeraphFrame.activeController.focusStart = 0
                                SeraphFrame.activeController.hitboxMagnitude =
                                    110
                                SeraphFrame.activeController.humanoid.AutoRotate =
                                    true
                                SeraphFrame.activeController.increment = 4
                            end
                        end
                    end
                end
            end)

            function Boost()
                spawn(function()
                    if SeraphFrame.activeController and
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                            "Tool") then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                            "weaponChange", tostring(SeraphFuckWeapon()))
                    end
                end)
            end

            local cdnormal = 0
            local Animation = Instance.new("Animation")
            local CooldownFastAttack = 0.000000
            Attack = function()
                local ac = SeraphFrame.activeController
                if ac and ac.equipped then
                    task.spawn(function()
                        if tick() - cdnormal > 0 then
                            ac:attack()
                            cdnormal = tick()
                        else
                            Animation.AnimationId = ac.anims.basic[2]
                            ac.humanoid:LoadAnimation(Animation)
                                :Play(0.01, 0.01) -- ท่าไม่ทำงานแก้เป็น (1,1)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "hit", getHits(120), 1, "")

                            if AttackRandom == 2 then
                                debug.setupvalue(ac.attack, 5, 55495)
                                debug.setupvalue(ac.attack, 6, 1892665)
                                debug.setupvalue(ac.attack, 4, 907772)
                                debug.setupvalue(ac.attack, 7, 14)
                                wait(.1)
                            end
                            if AttackRandom == 1 or AttackRandom == 3 or
                                AttackRandom == 4 then
                                wait(0.2)
                            elseif AttackRandom == 2 then
                                wait(0.09)
                            end
                        end
                        for _, x in pairs(
                                        game:GetService("Players"):GetChildren()) do
                            for m, y in
                                pairs(workspace.Characters:GetChildren()) do
                                if y.Name == x.Name and y.Name ~=
                                    game.Players.LocalPlayer.Name then
                                    if (y.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.Position).Magnitude <=
                                        60 then
                                        if m >= 1 then
                                            wait(0.16)
                                        else
                                            wait(0.2)
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end

            b = tick()
            spawn(function()
                while _G.FastAttack do
                    task.wait()
                    if _G.FastAttack then
                        if b - tick() > 9e9 then
                            b = tick()
                        end
                        local ac = SeraphFrame.activeController
                        pcall(function()
                            for i, v in pairs(
                                            game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                                        "Tool") and ac.blades and ac.blades[1] and
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character
                                                .HumanoidRootPart.Position).Magnitude <=
                                        50 then
                                        Attack()
                                        wait()
                                        Boost()
                                        if _G.SuperFastAttack then
                                            AttackFunction()
                                        end
                                    end
                                    for _, x in pairs(
                                                    game:GetService("Players")
                                                        :GetChildren()) do
                                        for m, y in pairs(
                                                        workspace.Characters:GetChildren()) do
                                            if y.Name == x.Name and y.Name ~=
                                                game.Players.LocalPlayer.Name then
                                                if (y.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer
                                                        .Character
                                                        .HumanoidRootPart
                                                        .Position).Magnitude <=
                                                    60 then
                                                    if m >= 3 then
                                                        Attack()
                                                        wait()
                                                        Boost()
                                                        if _G.SuperFastAttack then
                                                            AttackFunction()
                                                        end
                                                    else
                                                        Attack()
                                                        wait()
                                                        Boost()
                                                        if _G.SuperFastAttack then
                                                            AttackFunction()
                                                        end
                                                        wait(0.05)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            end)

            k = tick()
            spawn(function()
                while wait() do
                    if _G.FastAttack then
                        if k - tick() > 9e9 then
                            k = tick()
                        end
                        pcall(function()
                            for i, v in pairs(
                                            game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character
                                            .HumanoidRootPart.Position).Magnitude <=
                                        50 then
                                        Attack()
                                        wait()
                                        Boost()
                                    end
                                    wait(0.2)
                                end
                            end
                        end)
                    end
                end
            end)

            tjw1 = true
            task.spawn(function()
                local a = game.Players.LocalPlayer
                local b = require(a.PlayerScripts.CombatFramework.Particle)
                local c = require(
                              game:GetService("ReplicatedStorage").CombatFramework
                                  .RigLib)
                if not shared.orl then
                    shared.orl = c.wrapAttackAnimationAsync
                end
                if not shared.cpc then shared.cpc = b.play end
                if tjw1 then
                    pcall(function()
                        c.wrapAttackAnimationAsync =
                            function(d, e, f, g, h)
                                local i = c.getBladeHits(e, f, g)
                                if i then
                                    b.play = function() end
                                    d:Play(0.01, 0.01, 0.01)
                                    h(i)
                                    b.play = shared.cpc
                                    wait(0.1)
                                    d:Stop()
                                end
                            end
                    end)
                end
            end)

            local CameRa = require(game:GetService("Players").LocalPlayer
                                       .PlayerScripts.CombatFramework
                                       .CameraShaker)
            CameRa.CameraShakeInstance.CameraShakeState = {
                FadingIn = 3,
                FadingOut = 2,
                Sustained = 0,
                Inactive = 1
            }

            local Client = game.Players.LocalPlayer
            local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
            local STOPRL = require(
                               game:GetService("ReplicatedStorage").CombatFramework
                                   .RigLib)
            task.spawn(function()
                pcall(function()
                    if not shared.orl then
                        shared.orl = STOPRL.wrapAttackAnimationAsync
                    end
                    if not shared.cpc then
                        shared.cpc = STOP.play
                    end
                    spawn(function()
                        require(game.ReplicatedStorage.Util.CameraShaker):Stop()
                        game:GetService("RunService").Stepped:Connect(function()
                            STOPRL.wrapAttackAnimationAsync = function(a, b, c,
                                                                       d, func)
                                local Hits = STOPRL.getBladeHits(b, c, d)
                                if Hits then
                                    if _G.FastAttack then
                                        STOP.play = function() end
                                        a:Play(21, 29, 30)
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        a:Stop()
                                    else
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        a:Stop()
                                    end
                                end
                            end
                        end)
                    end)
                end)
            end)
        end
    end)
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "BuyElectricClaw", true) == 1 then
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(
            "Electric Claw") or
            not game:GetService("Players").LocalPlayer.backpack:FindFirstChild(
                "Electric Claw") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "BuyElectricClaw")
        end
    end
end

local kaitun = Tabs.Kaitun:AddToggle("MyToggle", 
{
    Title = "Kaitun Version", 
    Description = "old kaitun maxlv:2450",
    Default = false
    Callback = function(state)
	if state then
	    kaitun()
	else
	    print("Toggle Off")
        end
    end 
})
