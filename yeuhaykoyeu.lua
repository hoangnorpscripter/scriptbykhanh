-- 05/11/2023 - Brasil

loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()
MakeWindow({
  Hub = {
    Title = "REDz HUB [BETA] : Blox Fruits",
    Animation = "by : redz9999"
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerLevel = Player.Data.Level
local Quest = {CFrame.new(), CFrame.new(), "", "", 1}
local QuestTween = {}
local TPIsland, TPIslandDistance = nil, nil
local Sea1, Sea2, Sea3 = game.PlaceId == 2753915549, game.PlaceId == 4442272183, game.PlaceId == 7449423635

local function Get_Fruit(Fruit)
  if Fruit == "Rocket Fruit" then
    return "Rocket-Rocket"
  elseif Fruit == "Spin Fruit" then
    return "Spin-Spin"
  elseif Fruit == "Chop Fruit" then
    return "Chop-Chop"
  elseif Fruit == "Spring Fruit" then
    return "Spring-Spring"
  elseif Fruit == "Bomb Fruit" then
    return "Bomb-Bomb"
  elseif Fruit == "Smoke Fruit" then
    return "Smoke-Smoke"
  elseif Fruit == "Spike Fruit" then
    return "Spike-Spike"
  elseif Fruit == "Flame Fruit" then
    return "Flame-Flame"
  elseif Fruit == "Falcon Fruit" then
    return "Falcon-Falcon"
  elseif Fruit == "Ice Fruit" then
    return "Ice-Ice"
  elseif Fruit == "Sand Fruit" then
    return "Sand-Sand"
  elseif Fruit == "Dark Fruit" then
    return "Dark-Dark"
  elseif Fruit == "Ghost Fruit" then
    return "Ghost-Ghost"
  elseif Fruit == "Diamond Fruit" then
    return "Diamond-Diamond"
  elseif Fruit == "Light Fruit" then
    return "Light-Light"
  elseif Fruit == "Rubber Fruit" then
    return "Rubber-Rubber"
  elseif Fruit == "Barrier Fruit" then
    return "Barrier-Barrier"
  elseif Fruit == "Magma Fruit" then
    return "Magma-Magma"
  elseif Fruit == "Quake Fruit" then
    return "Quake-Quake"
  elseif Fruit == "Buddha Fruit" then
    return "Buddha-Buddha"
  elseif Fruit == "Love Fruit" then
    return "Love-Love"
  elseif Fruit == "Spider Fruit" then
    return "Spider-Spider"
  elseif Fruit == "Sound Fruit" then
    return "Sound-Sound"
  elseif Fruit == "Phoenix Fruit" then
    return "Phoenix-Phoenix"
  elseif Fruit == "Portal Fruit" then
    return "Portal-Portal"
  elseif Fruit == "Rumble Fruit" then
    return "Rumble-Rumble"
  elseif Fruit == "Pain Fruit" then
    return "Pain-Pain"
  elseif Fruit == "Blizzard Fruit" then
    return "Blizzard-Blizzard"
  elseif Fruit == "Gravity Fruit" then
    return "Gravity-Gravity"
  elseif Fruit == "Mammoth Fruit" then
    return "Mammoth-Mammoth"
  elseif Fruit == "Dough Fruit" then
    return "Dough-Dough"
  elseif Fruit == "Shadow Fruit" then
    return "Shadow-Shadow"
  elseif Fruit == "Venom Fruit" then
    return "Venom-Venom"
  elseif Fruit == "Control Fruit" then
    return "Control-Control"
  elseif Fruit == "Spirit Fruit" then
    return "Spirit-Spirit"
  elseif Fruit == "Dragon Fruit" then
    return "Dragon-Dragon"
  elseif Fruit == "Leopard Fruit" then
    return "Leopard-Leopard"
  end
end

local function GetBossQuest(BossName)
  -- Bosses Sea 1
  if BossName == "The Gorilla King" then
    return true, CFrame.new(-1128, 6, -451), "JungleQuest"
  elseif BossName == "Bobby" then
    return true, CFrame.new(-1131, 14, 4080), "BuggyQuest1"
  elseif BossName == "Yeti" then
    return true, CFrame.new(1185, 106, -1518), "SnowQuest"
  elseif BossName == "Vice Admiral" then
    return true, CFrame.new(-4807, 21, 4360), "MarineQuest2", 2
  elseif BossName == "Swan" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest"
  elseif BossName == "Chief Warden" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest", 2
  elseif BossName == "Warden" then
    return true, CFrame.new(5230, 4, 749), "ImpelQuest", 1
  elseif BossName == "Magma Admiral" then
    return true, CFrame.new(-5694, 18, 8735), "MagmaQuest"
  elseif BossName == "Fishman Lord" then
    return true, CFrame.new(61350, 31, 1095), "FishmanQuest"
  elseif BossName == "Wysper" then
    return true, CFrame.new(-7927, 5551, -637), "SkyExp1Quest"
  elseif BossName == "Thunder God" then
    return true, CFrame.new(-7751, 5607, -2315), "SkyExp2Quest"
  elseif BossName == "CyborgCombat" then
    return true, CFrame.new(6138, 10, 3939), "FountainQuest"
  elseif BossName == "Saber Expert" then
    return false, CFrame.new(-1461, 30, -51), nil
  elseif BossName == "The Saw" then
    return false, CFrame.new(-690, 15, 1583), nil
  elseif BossName == "Greybeard" then
    return false, CFrame.new(-4807, 21, 4360), nil
  -- Bosses Sea 2
  elseif BossName == "Diamond" then
    return true, CFrame.new(-1569, 199, -31), "Area1Quest"
  elseif BossName == "Jeremy" then
    return true, CFrame.new(2316, 449, 787), "Area2Quest"
  elseif BossName == "Fajita" then
    return true, CFrame.new(-2086, 73, -4208), "MarineQuest3"
  elseif BossName == "Smoke Admiral" then
    return true, CFrame.new(-5078, 24, -5352), "IceSideQuest"
  elseif BossName == "Awakened Ice Admiral" then
    return true, CFrame.new(6473, 297, -6944), "FrostQuest"
  elseif BossName == "Tide Keeper" then
    return true, CFrame.new(-3711, 77, -11469), "ForgottenQuest"
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "" then
    return true, CFrame.new(), ""
  elseif BossName == "Cursed Captain" then
    return false, CFrame.new(912, 186, 33591), nil
  elseif BossName == "Darkbeard" then
    return false, CFrame.new(3695, 13, -3599), nil
  -- Bosses Sea 3
  elseif BossName == "Stone" then
    return true, CFrame.new(-1049, 40, 6791), "PiratePortQuest"
  elseif BossName == "Beautiful Pirate" then
    return true, CFrame.new(5241, 23, 129), "DeepForestIsland2"
  elseif BossName == "Island Empress" then
    return true, CFrame.new(5730, 602, 199), "AmazonQuest2"
  elseif BossName == "Kilo Admiral" then
    return true, CFrame.new(2889, 424, -7233), "MarineTreeIsland"
  elseif BossName == "Captain Elephant" then
    return true, CFrame.new(-13393, 319, -8423), "DeepForestIsland"
  elseif BossName == "Cake Queen" then
    return true, CFrame.new(-710, 382, -11150), "IceCreamIslandQuest"
  elseif BossName == "Dough King" or BossName == "Cake Prince" then
    return false, CFrame.new(-2103, 70, -12165), nil
  elseif BossName == "rip_indra True Form" then
    return false, CFrame.new(-5333, 424, -2673), nil
  end
end

local character = Player.Character or Player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "player platform .........."
block.Anchored = true
block.CanCollide = false
block.Transparency = 1

local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then
  blockfind:Destroy()
end

if humanoidRootPart then
  block.CFrame = humanoidRootPart.CFrame
  task.spawn(function()
    while task.wait() do
      if getgenv().AutoFarmNearest or getgenv().TeleportToIsland or getgenv().AutoFarm_Level or getgenv().AutoFarmSea or getgenv().AutoEliteHunter or getgenv().AutoPiratesSea or getgenv().AutoFarmBossSelected or getgenv().AutoRengoku or getgenv().TeleportToFruit or getgenv().AutoFactory or getgenv().AutoBartiloQuest or getgenv().RaidAutoNextIsland or getgenv().AutoRaceV2 or getgenv().AutoCakePrince or getgenv().RipIndraLegendaryHaki or getgenv().AutoRipIndra or getgenv().AutoUnlockSaber or getgenv().AutoSawBoss or getgenv().AutoEnelBossPole or getgenv().AutoMusketeerHat or getgenv().AutoFarmBone or getgenv().AutoCursedCaptain or getgenv().AutoFarmEctoplasm or getgenv().AutoCursedChest or getgenv().AutoSoulReaper or getgenv().AutoSoulGuitar or getgenv().TeleportToMirage or getgenv().AutoSecondSea or getgenv().AutoThirdSea or getgenv().AutoDarkbeard then
        local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
        if block and block.Parent == workspace then
          pcall(function()
            if (plrRP.Position - block.Position).Magnitude <= 250 then
              plrRP.CFrame = block.CFrame
            elseif (plrRP.Position - block.Position).Magnitude > 250 then
              block.CFrame = plrRP.CFrame
            end
          end)
        elseif block then
        end
      end
    end
  end)
end

local function PlayerTP(Tween_Pos, completedWait)
  local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
  if not plrRP then
    return
  end
  local distance = (plrRP.Position - Tween_Pos.p).Magnitude
  if TPIsland and plrRP and distance >= 10000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", TPIsland)
  else
    if block and distance < 200 then
      block.CFrame = Tween_Pos
    elseif block and distance >= 200 and distance <= 600 then
      local tween = game:GetService("TweenService"):Create(block,
      TweenInfo.new(distance / 600, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
      {CFrame = Tween_Pos}):Play()if completedWait then tween.Completed:Wait() end
    elseif block and distance > 600 then
      local tween = game:GetService("TweenService"):Create(block,
      TweenInfo.new(distance / 200, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
      {CFrame = Tween_Pos}):Play()if completedWait then tween.Completed:Wait() end
    end
  end
end

local function BoatTP(Boat, pos)
  if Boat then
    local Distance = (Boat.PrimaryPart.Position - pos.p).Magnitude
    game:GetService("TweenService"):Create(Boat.PrimaryPart,
    TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
    {CFrame = pos}):Play()
  end
end

local function BoatTween(Boat, pos)
  if Boat then
    local Distance = (Boat.PrimaryPart.Position - pos.p).Magnitude
    local tween = game:GetService("TweenService"):Create(Boat.PrimaryPart,
    TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
    {CFrame = pos})tween:Play()tween.Completed:Wait()
  end
end

local function AutoKillAura()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  while getgenv().AutoKillAura do task.wait()
    pcall(function()
      local plrChar = Player and Player.Character and Player.Character.PrimaryPart
      for _,npc in pairs(Enemies:GetChildren()) do
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") then
          npc.HumanoidRootPart.CanCollide = false
          npc.HumanoidRootPart.Size = Vector3.new(75, 75, 75)
          if npc and npc:FindFirstChild("Humanoid") then
            npc.Humanoid.Health = 0
          end
          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
      end
    end)
  end
end

local function TweenNPCSpawn(pos, NPC)
  if pos then
    local Enemies = workspace:WaitForChild("Enemies", 20)
    repeat task.wait()
      for _,v in pairs(pos) do
        if Enemies:FindFirstChild(NPC or Quest[3]) then
          break
        end
        if block then
          local tween = game:GetService("TweenService"):Create(block,
          TweenInfo.new((block.Position - v.p).Magnitude / 200, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
          {CFrame = v})tween:Play()tween.Completed:Wait()
        end
      end
    until not getgenv().AutoFarm_Level or Enemies:FindFirstChild(NPC or Quest[3])
    return
  end
end

task.spawn(function()
  while task.wait() do
    pcall(function()
      for i, v in pairs(Player.Character:GetChildren()) do
        if v.ClassName == "Part" or v.ClassName == "MeshPart" then
          v.CanCollide = not getgenv().AutoFarmNearest or getgenv().TeleportToIsland or getgenv().AutoFarmSea or getgenv().AutoFarm_Level or getgenv().AutoEliteHunter or getgenv().AutoPiratesSea or getgenv().AutoFarmBossSelected or getgenv().AutoRengoku or getgenv().TeleportToFruit or getgenv().AutoFactory or getgenv().AutoBartiloQuest or getgenv().RaidAutoNextIsland or getgenv().AutoRaceV2 or getgenv().AutoCakePrince or getgenv().RipIndraLegendaryHaki or getgenv().AutoRipIndra or getgenv().AutoUnlockSaber or getgenv().AutoSawBoss or getgenv().AutoEnelBossPole or getgenv().AutoMusketeerHat or getgenv().AutoFarmBone or getgenv().AutoCursedCaptain or getgenv().AutoFarmEctoplasm or getgenv().AutoCursedChest or getgenv().AutoSoulReaper or getgenv().AutoSoulGuitar or getgenv().TeleportToMirage or getgenv().AutoSecondSea or getgenv().AutoThirdSea or getgenv().AutoDarkbeard
        end
      end
    end)
  end
end)

local function AttackDistance()
  while getgenv().AttackDistance do task.wait()
    pcall(function()
      local CF = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))[2]
      CF.activeController.hitboxMagnitude = 100
    end)
  end
end

local function FastAttack()
  while getgenv().FastAttack do task.wait()
    pcall(function()
      local CF = debug.getupvalues(require(Player.PlayerScripts.CombatFramework))[2]
      local AC = CF.activeController
      if AC.increment ~= 3 then AC.increment = 3 end
      if AC.increment ~= 3 then AC.increment = 3 end
      if AC.timeToNextAttack ~= 0 then AC.timeToNextAttack = 0 end
      if AC.timeToNextBlock ~= 0 then AC.timeToNextBlock = 0 end
      if AC.focusStart ~= 0 then AC.focusStart = 0 end
      if AC.attacking ~= false then AC.attacking = false end
      if AC.blocking ~= false then AC.blocking = false end
      if AC.humanoid.AutoRotate ~= true then AC.humanoid.AutoRotate = true end
      if AC.increment ~= 3 then AC.increment = 3 end
    end)
  end
end

local time = tick()
local function PlayerClick()
  task.spawn(function()
    if getgenv().AutoClick and (tick() - time) >= getgenv().AutoClickDelay or 0.1 then
      game:GetService("VirtualUser"):CaptureController()
      game:GetService("VirtualUser"):Button1Down(Vector2.new(math.huge, math.huge))
      time = tick()
    end
  end)
end

local function VerifyNPC(npc)
  local RS = game:GetService("ReplicatedStorage")
  local Enemies = workspace:WaitForChild("Enemies", 20)
  return RS:FindFirstChild(npc) or Enemies:FindFirstChild(npc)
end

local function AutoHaki()
  if getgenv().AutoHaki and not Player.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
  end
end

local function DisableHaki()
  if getgenv().AutoHaki and Player.Character:FindFirstChild("HasBuso") then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
  end
end

local function VerifyTool(ToolName)
  local plrChar = Player and Player.Character
  local plrBag = Player and Player.Backpack
  
  if plrChar and plrChar:FindFirstChild(ToolName) then
    return true
  elseif plrBag and plrBag:FindFirstChild(ToolName) then
    return true
  end
end

local function EquipToolName(NameTool)
  local plrBag = Player.Backpack
  local plrChar = Player.Character
  if plrBag and plrChar and plrBag:FindFirstChild(NameTool) then
    plrBag[NameTool].Parent = plrChar
  end
  if plrChar and plrBag then
    for _,tool in pairs(plrChar:GetChildren()) do
      if tool:IsA("Tool") and tool.Name ~= NameTool then
        tool.Parent = plrBag
      end
    end
  end
end

local function EquipTool()
  local backpack = Player.Backpack
  local plrChar = Player.Character
  for _,v in pairs(backpack:GetChildren()) do
    if v.ToolTip == getgenv().FarmTool then
      v.Parent = plrChar
      tool = v
    end
  end
end

local function FruitFind()
  local fruits = workspace:GetChildren()
  local FruitDistance = math.huge
  local Fruit = nil
  
  for __,fruit in pairs(fruits) do
    local args1 = Player and Player.Character and Player.Character.PrimaryPart
    local args2 = fruit and fruit:IsA("Tool") and fruit:FindFirstChild("Handle")
    local args3 = fruit and string.find(fruit.Name, "Fruit") and fruit:FindFirstChild("Handle")
    if args1 and args2 and (args1.Position - args2.Position).Magnitude <= FruitDistance then
      FruitDistance = (args1.Position - args2.Position).Magnitude
      Fruit = fruit
    elseif args1 and args3 and (args1.Position - args3.Position).Magnitude <= FruitDistance then
      FruitDistance = (args1.Position - args3.Position).Magnitude
      Fruit = fruit
    end
  end
  return Fruit and Fruit:FindFirstChild("Handle")
end

local function GetProxyChest()
  local chests = workspace:GetChildren()
  local ChestDistance = 700
  local Chest = nil
  
  for _,chest in pairs(chests) do
    if Quest[1] and chest then
      if string.find(chest.Name, "Chest") and chest:IsA("Part") and (chest.Position - Quest[1].p).Magnitude <= ChestDistance then
        ChestDistance = (chest.Position - Quest[1].p).Magnitude
        Chest = chest
      end
    end
  end
  return Chest
end

local function Get_LevelQuest()
  local Level = PlayerLevel.Value
  local Enemies = workspace:WaitForChild("Enemies", 20)
  
  if Sea1 then
    -- Auto Farm Level Sea 1
    if Level < 10 then
      if tostring(Player.Team) == "Pirates" then
        Quest = {CFrame.new(1059, 17, 1546), nil, "Bandit", "BanditQuest1", 1}
        QuestTween = {CFrame.new(943, 45, 1562), CFrame.new(1115, 45, 1619), CFrame.new(1265, 45, 1606)}
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-2708, 25, 2103), nil, "Trainee", "MarineQuest", 1}
        QuestTween = {CFrame.new(-2754, 50, 2063), CFrame.new(-2950, 70, 2240)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 10 and Level < 15 then
      Quest = {CFrame.new(-1598, 37, 153), nil, "Monkey", "JungleQuest", 1}
      QuestTween = {CFrame.new(-1524, 50, 37), CFrame.new(-1424, 50, 216), CFrame.new(-1554, 50, 359), CFrame.new(-1772, 50, 78), CFrame.new(-1715, 50, -61), CFrame.new(-1594, 50, -45)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 15 and Level < 30 then
      if VerifyNPC("The Gorilla King") and Level >= 20 then
        Quest = {CFrame.new(-1598, 37, 153), CFrame.new(-1128, 6, -451), "The Gorilla King", "JungleQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-1598, 37, 153), nil, "Gorilla", "JungleQuest", 2}
        QuestTween = {CFrame.new(-1128, 40, -451), CFrame.new(-1313, 40, -546)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 30 and Level < 40 then
      Quest = {CFrame.new(-1140, 4, 3829), nil, "Pirate", "BuggyQuest1", 1}
      QuestTween = {CFrame.new(-1262, 40, 3905), CFrame.new(-1167, 40, 3942)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 40 and Level < 60 then
      if VerifyNPC("Bobby") and Level >= 55 then
        Quest = {CFrame.new(-1140, 4, 3829), CFrame.new(-1131, 14, 4080), "Bobby", "BuggyQuest1", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-1140, 4, 3829), nil, "Brute", "BuggyQuest1", 2}
        QuestTween = {CFrame.new(-976, 55, 4304), CFrame.new(-1196, 55, 4287), CFrame.new(-1363, 55, 4162)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 60 and Level < 75 then
      Quest = {CFrame.new(897, 6, 4389), CFrame.new(938, 6, 4470), "Desert Bandit", "DesertQuest", 1}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 75 and Level < 90 then
      Quest = {CFrame.new(897, 6, 4389), CFrame.new(1546, 14, 4384), "Desert Officer", "DesertQuest", 2}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 90 and Level < 100 then
      Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1303, 106, -1441), "Snow Bandit", "SnowQuest", 1}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 100 and Level < 120 then
      if VerifyNPC("Yeti") and Level >= 105 then
        Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1185, 106, -1518), "Yeti", "SnowQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(1385, 87, -1298), CFrame.new(1185, 106, -1518), "Snowman", "SnowQuest", 2}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 120 and Level < 150 then
      if VerifyNPC("Vice Admiral") and Level >= 130 then
        Quest = {CFrame.new(-5035, 29, 4326), CFrame.new(-4807, 21, 4360), "Vice Admiral", "MarineQuest2", 2}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-5035, 29, 4326), CFrame.new(-4807, 21, 4360), "Chief Petty Officer", "MarineQuest2", 1}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 150 and Level < 175 then
      Quest = {CFrame.new(-4844, 718, -2621), CFrame.new(-4956, 296, -2901), "Sky Bandit", "SkyQuest", 1}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 175 and Level < 190 then
      Quest = {CFrame.new(-4844, 718, -2621), CFrame.new(-5268, 392, -2213), "Dark Master", "SkyQuest", 2}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 190 and Level < 210 then
      Quest = {CFrame.new(5306, 2, 477), CFrame.new(5288, 2, 470), "Prisoner", "PrisonerQuest", 1}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 210 and Level < 250 then
      if VerifyNPC("Swan") and Level >= 240 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Swan", "ImpelQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      elseif VerifyNPC("Chief Warden") and Level >= 230 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Chief Warden", "ImpelQuest", 2}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      elseif VerifyNPC("Warden") and Level >= 220 then
        Quest = {CFrame.new(5191, 4, 692), CFrame.new(5230, 4, 749), "Warden", "ImpelQuest", 1}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(5306, 2, 477), CFrame.new(5282, 2, 1052), "Dangerous Prisoner", "PrisonerQuest", 2}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 250 and Level < 275 then
      Quest = {CFrame.new(-1581, 7, -2982), CFrame.new(-1897, 7, -2796), "Toga Warrior", "ColosseumQuest", 1}
      QuestTween = nil
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 275 and Level < 300 then
      Quest = {CFrame.new(-1581, 7, -2982), CFrame.new(-1327, 59, -3231), "Gladiator", "ColosseumQuest", 2}
      QuestTween = {CFrame.new(-1268, 30, -2996), CFrame.new(-1472, 30, -3194), CFrame.new(-1387, 30, -3438), CFrame.new(-1198, 30, -3508)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 300 and Level < 325 then
      Quest = {CFrame.new(-5319, 12, 8515), nil, "Military Soldier", "MagmaQuest", 1}
      QuestTween = {CFrame.new(-5335, 46, 8638), CFrame.new(-5512, 30, 8366)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 325 and Level < 375 then
      if VerifyNPC("Magma Admiral") and Level >= 350 then
        Quest = {CFrame.new(-5319, 12, 8515), CFrame.new(-5694, 18, 8735), "Magma Admiral", "MagmaQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-5319, 12, 8515), CFrame.new(-5791, 97, 8834), "Military Spy", "MagmaQuest", 2}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 375 and Level < 400 then
      Quest = {CFrame.new(61122, 18, 1567), nil, "Fishman Warrior", "FishmanQuest", 1} 
      QuestTween = {CFrame.new(60998, 50, 1534), CFrame.new(60880, 50, 1675), CFrame.new(60785, 50, 1552), CFrame.new(60923, 60, 1262)}
      TPIsland, TPIslandDistance = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875), nil
    elseif Level >= 400 and Level < 450 then
      if VerifyNPC("Fishman Lord") and Level >= 425 then
        Quest = {CFrame.new(61122, 18, 1567), CFrame.new(61350, 31, 1095), "Fishman Lord", "FishmanQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875), nil
      else
        Quest = {CFrame.new(61122, 18, 1567), nil, "Fishman Commando", "FishmanQuest", 2}
        QuestTween = {CFrame.new(61866, 55, 1655), CFrame.new(62043, 55, 1510), CFrame.new(61812, 55, 1254)}
        TPIsland, TPIslandDistance = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875), nil
      end
    elseif Level >= 450 and Level < 475 then
      Quest = {CFrame.new(-4720, 846, -1951), nil, "God's Guard", "SkyExp1Quest", 1}
      QuestTween = {CFrame.new(-4641, 880, -1902), CFrame.new(-4781, 880, -1817)}
      TPIsland, TPIslandDistance = Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625), nil
    elseif Level >= 475 and Level < 525 then
      if VerifyNPC("Wysper") and Level >= 500 then
        Quest = {CFrame.new(-7861, 5545, -381), CFrame.new(-7927, 5551, -637), "Wysper", "SkyExp1Quest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = Vector3.new(-7894.61767578125, 5547.1416015625, -380.29119873046875), nil
      else
        Quest = {CFrame.new(-7861, 5545, -381), nil, "Shanda", "SkyExp1Quest", 2}
        QuestTween = {CFrame.new(-7741, 5580, -395), CFrame.new(-7591, 5580, -466), CFrame.new(-7643, 5580, -608)}
        TPIsland, TPIslandDistance = Vector3.new(-7894.61767578125, 5547.1416015625, -380.29119873046875), nil
      end
    elseif Level >= 525 and Level < 550 then
      Quest = {CFrame.new(-7903, 5636, -1412), nil, "Royal Squad", "SkyExp2Quest", 1}
      QuestTween = {CFrame.new(-7727, 5650, -1410), CFrame.new(-7522, 5650, -1499)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 525 and Level < 625 then
      if VerifyNPC("Thunder God") and Level >= 575 then
        Quest = {CFrame.new(-7903, 5636, -1412), CFrame.new(-7751, 5607, -2315), "Thunder God", "SkyExp2Quest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-7903, 5636, -1412), nil, "Royal Soldier", "SkyExp2Quest", 2}
        QuestTween = {CFrame.new(-7894, 5640, -1629), CFrame.new(-7678, 5640, -1696), CFrame.new(-7672, 5640, -1903), CFrame.new(-7925, 5640, -1854)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 625 and Level < 650 then
      Quest = {CFrame.new(5258, 39, 4052), nil, "Galley Pirate", "FountainQuest", 1}
      QuestTween = {CFrame.new(5391, 70, 4023), CFrame.new(5780, 70, 3969)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 650 then
      if VerifyNPC("CyborgCombat") and Level >= 675 then
        Quest = {CFrame.new(5258, 39, 4052), CFrame.new(6138, 10, 3939), "CyborgCombat", "FountainQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(5258, 39, 4052), nil, "Galley Captain", "FountainQuest", 2}
        QuestTween = {CFrame.new(5985, 70, 4790), CFrame.new(5472, 70, 4887)}
        TPIsland, TPIslandDistance = nil, nil
      end
    end
  elseif Sea2 then
    -- Auto Farm Level Sea 2
    if Level >= 700 and Level < 725 then
      Quest = {CFrame.new(-427, 73, 1835), nil, "Raider", "Area1Quest", 1}
      QuestTween = {CFrame.new(-614, 90, 2240), CFrame.new(-894, 90, 2275), CFrame.new(-872, 90, 2481), CFrame.new(-552, 90, 2528)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 725 and Level < 775 then
      if VerifyNPC("Diamond") and Level >= 750 then
        Quest = {CFrame.new(-427, 73, 1835), CFrame.new(-1569, 199, -31), "Diamond", "Area1Quest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-427, 73, 1835), nil, "Mercenary", "Area1Quest", 2}
        QuestTween = {CFrame.new(-867, 110, 1621), CFrame.new(-1047, 110, 1779), CFrame.new(-1025, 110, 1087), CFrame.new(-1204, 110, 1195)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 775 and Level < 800 then
      Quest = {CFrame.new(635, 73, 919), nil, "Swan Pirate", "Area2Quest", 1}
      QuestTween = {CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 800 and Level < 875 then
      if VerifyNPC("Jeremy") and Level >= 850 then
        Quest = {CFrame.new(635, 73, 919), CFrame.new(2316, 449, 787), "Jeremy", "Area2Quest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(635, 73, 919), nil, "Factory Staff", "Area2Quest", 2}
        QuestTween = {CFrame.new(882, 110, -49), CFrame.new(723, 110, 212), CFrame.new(473, 110, 108), CFrame.new(-115, 110, 39)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 875 and Level < 900 then
      Quest = {CFrame.new(-2441, 73, -3219), nil, "Marine Lieutenant", "MarineQuest3", 1}
      QuestTween = {CFrame.new(-2552, 110, -3050), CFrame.new(-2860, 110, -3089), CFrame.new(-3114, 110, -2947), CFrame.new(-2864, 110, -2679)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 900 and Level < 950 then
      if VerifyNPC("Fajita") and Level >= 925 then
        Quest = {CFrame.new(-2441, 73, -3219), CFrame.new(-2086, 73, -4208), "Fajita", "MarineQuest3", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-2441, 73, -3219), nil, "Marine Captain", "MarineQuest3", 2}
        QuestTween = {CFrame.new(-1695, 110, -3299), CFrame.new(-1953, 110, -3165), CFrame.new(-2144, 110, -3341)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 950 and Level < 975 then
      Quest = {CFrame.new(-5495, 48, -794), nil, "Zombie", "ZombieQuest", 1}
      QuestTween = {CFrame.new(-5715, 90, -917), CFrame.new(-5534, 90, -942), CFrame.new(-5445, 90, -806), CFrame.new(-5485, 90, -663), CFrame.new(-5730, 90, -590), CFrame.new(-5816, 90, -756)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 975 and Level < 1000 then
      Quest = {CFrame.new(-5495, 48, -794), nil, "Vampire", "ZombieQuest", 2}
      QuestTween = {CFrame.new(-6027, 50, -1130), CFrame.new(-6248, 50, -1281), CFrame.new(-6120, 50, -1450), CFrame.new(-5951, 50, -1520), CFrame.new(-5803, 50, -1360)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1000 and Level < 1050 then
      Quest = {CFrame.new(607, 401, -5371), nil, "Snow Trooper", "SnowMountainQuest", 1}
      QuestTween = {CFrame.new(445, 440, -5175), CFrame.new(523, 440, -5484), CFrame.new(699, 440, -5612)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1050 and Level < 1100 then
      Quest = {CFrame.new(607, 401, -5371), nil, "Winter Warrior", "SnowMountainQuest", 2}
      QuestTween = {CFrame.new(1224, 460, -5332), CFrame.new(1404, 460, -5323), CFrame.new(1258, 460, -5220), CFrame.new(1145, 460, -5077), CFrame.new(1022, 460, -5139)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1100 and Level < 1125 then
      Quest = {CFrame.new(-6061, 16, -4904), nil, "Lab Subordinate", "IceSideQuest", 1}
      QuestTween = {CFrame.new(-5941, 50, -4322), CFrame.new(-5765, 50, -4304), CFrame.new(-5608, 50, -4445), CFrame.new(-5683, 50, -4629)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1125 and Level < 1175 then
      if VerifyNPC("Smoke Admiral") and Level >= 1150 then
        Quest = {CFrame.new(-6061, 16, -4904), CFrame.new(-5078, 24, -5352), "Smoke Admiral", "IceSideQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-6061, 16, -4904), nil, "Horned Warrior", "IceSideQuest", 2}
        QuestTween = {CFrame.new(-6306, 50, -5752), CFrame.new(-6161, 50, -5979), CFrame.new(-6518, 50, -5795), CFrame.new(-6535, 50, -5640)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 1175 and Level < 1200 then
      Quest = {CFrame.new(-5430, 16, -5298), nil, "Magma Ninja", "FireSideQuest", 1}
      QuestTween = {CFrame.new(-5233, 60, -6227), CFrame.new(-5194, 60, -6031), CFrame.new(-5651, 60, -5854)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1200 and Level < 1250 then
      Quest = {CFrame.new(-5430, 16, -5298), nil, "Lava Pirate", "FireSideQuest", 2}
      QuestTween = {CFrame.new(-4955, 60, -4836), CFrame.new(-5119, 60, -4634), CFrame.new(-5389, 60, -4616), CFrame.new(-5342, 60, -4897)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1250 and Level < 1275 then
      Quest = {CFrame.new(1033, 125, 32909), nil, "Ship Deckhand", "ShipQuest1", 1}
      QuestTween = {CFrame.new(1185, 180, 32979), CFrame.new(1204, 180, 33174), CFrame.new(615, 180, 33169), CFrame.new(638, 180, 32962)}
      TPIsland, TPIslandDistance = Vector3.new(923, 125, 32869), nil 
    elseif Level >= 1275 and Level < 1300 then
      Quest = {CFrame.new(1033, 125, 32909), nil, "Ship Engineer", "ShipQuest1", 2}
      QuestTween = {CFrame.new(809, 80, 33090), CFrame.new(751, 80, 32957), CFrame.new(927, 80, 32724), CFrame.new(1040, 80, 32915), CFrame.new(1034, 80, 33058)}
      TPIsland, TPIslandDistance = Vector3.new(923, 125, 32869), nil
    elseif Level >= 1300 and Level < 1325 then
      Quest = {CFrame.new(973, 125, 33245), nil, "Ship Steward", "ShipQuest2", 1}
      QuestTween = {CFrame.new(838, 160, 33408), CFrame.new(1026, 160, 33510)}
      TPIsland, TPIslandDistance = Vector3.new(923, 125, 32869), nil
    elseif Level >= 1325 and Level < 1350 then
      Quest = {CFrame.new(973, 125, 33245), nil, "Ship Officer", "ShipQuest2", 2}
      QuestTween = {CFrame.new(1238, 220, 33148), CFrame.new(1220, 220, 33426), CFrame.new(622, 220, 33435), CFrame.new(593, 220, 33172)}
      TPIsland, TPIslandDistance = Vector3.new(923, 125, 32869), nil
    elseif Level >= 1350 and Level < 1375 then
      Quest = {CFrame.new(5668, 28, -6484), nil, "Arctic Warrior", "FrostQuest", 1}
      QuestTween = {CFrame.new(5836, 80, -6257), CFrame.new(6132, 80, -6098), CFrame.new(6275, 80, -6237), CFrame.new(6095, 80, -6349)}
      TPIsland, TPIslandDistance = Vector3.new(-317, 331, 597), nil
    elseif Level >= 1375 and Level < 1425 then
      if VerifyNPC("Awakened Ice Admiral") and Level >= 1400 then
        Quest = {CFrame.new(5668, 28, -6484), CFrame.new(6473, 297, -6944), "Awakened Ice Admiral", "FrostQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = Vector3.new(-317, 331, 597), nil
      else
        Quest = {CFrame.new(5668, 28, -6484), nil, "Snow Lurker", "FrostQuest", 2}
        QuestTween = {CFrame.new(5700, 80, -6724), CFrame.new(5542, 80, -6898), CFrame.new(5512, 80, -6641)}
        TPIsland, TPIslandDistance = Vector3.new(-317, 331, 597), nil
      end
    elseif Level >= 1425 and Level < 1450 then
      Quest = {CFrame.new(-3056, 240, -10145), nil, "Sea Soldier", "ForgottenQuest", 1}
      QuestTween = {CFrame.new(-2583, 80, -9821), CFrame.new(-2830, 80, -9809), CFrame.new(-3271, 80, -9729), CFrame.new(-3486, 80, -9813)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1450 then
      if VerifyNPC("Tide Keeper") and Level >= 1475 then
        Quest = {CFrame.new(-3056, 240, -10145), CFrame.new(-3711, 77, -11469), "Tide Keeper", "ForgottenQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-3056, 240, -10145), nil, "Water Fighter", "ForgottenQuest", 2}
        QuestTween = {CFrame.new(-3339, 290, -10412), CFrame.new(-3518, 290, -10419), CFrame.new(-3536, 290, -10607), CFrame.new(-3345, 280, -10667)}
        TPIsland, TPIslandDistance = nil, nil
      end
    end
  elseif Sea3 then
    -- Auto Farm Level Sea 3
    if Level >= 1500 and Level < 1525 then
      Quest = {CFrame.new(-291, 44, 5580), nil, "Pirate Millionaire", "PiratePortQuest", 1}
      QuestTween = {CFrame.new(-44, 70, 5623), CFrame.new(-219, 70, 5546), CFrame.new(-574, 70, 5496)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1525 and Level < 1575 then
      if VerifyNPC("Stone") and Level >= 1550 then
        Quest = {CFrame.new(-291, 44, 5580), CFrame.new(-1049, 40, 6791), "Stone", "PiratePortQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-291, 44, 5580), nil, "Pistol Billionaire", "PiratePortQuest", 2}
        QuestTween = {CFrame.new(219, 105, 6018), CFrame.new(-24, 105, 6155), CFrame.new(-312, 105, 6028)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 1575 and Level < 1600 then
      Quest = {CFrame.new(5834, 51, -1103), nil, "Dragon Crew Warrior", "AmazonQuest", 1}
      QuestTween = {CFrame.new(5992, 90, -1581), CFrame.new(6364, 90, -1512), CFrame.new(6501, 90, -1104), CFrame.new(6612, 90, -938), CFrame.new(6393, 90, -939)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1600 and Level < 1625 then
      Quest = {CFrame.new(5834, 51, -1103), nil, "Dragon Crew Archer", "AmazonQuest", 2}
      QuestTween = {CFrame.new(6472, 370, -151), CFrame.new(6547, 370, -51), CFrame.new(6539, 410, 72), CFrame.new(6737, 410, 249), CFrame.new(6768, 410, 390), CFrame.new(6625, 410, 371)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1625 and Level < 1650 then
      Quest = {CFrame.new(5448, 602, 748), nil, "Female Islander", "AmazonQuest2", 1}
      QuestTween = {CFrame.new(4836, 740, 928), CFrame.new(4708, 770, 911), CFrame.new(4672, 790, 695), CFrame.new(4657, 800, 498), CFrame.new(4575, 810, 281)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1650 and Level < 1700 then
      if VerifyNPC("Island Empress") and Level >= 1675 then
        Quest = {CFrame.new(5448, 602, 748), CFrame.new(5730, 602, 199), "Island Empress", "AmazonQuest2", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(5448, 602, 748), nil, "Giant Islander", "AmazonQuest2", 2}
        QuestTween = {CFrame.new(4784, 660, 155), CFrame.new(4662, 660, -57), CFrame.new(4869, 660, -178), CFrame.new(5056, 660, -267), CFrame.new(5332, 660, -166)}
        TPIsland, TPIslandDistance = nil, nil 
      end
    elseif Level >= 1700 and Level < 1725 then
      Quest = {CFrame.new(2180, 29, -6738), nil, "Marine Commodore", "MarineTreeIsland", 1}
      QuestTween = {CFrame.new(3156, 120, -7837), CFrame.new(2904, 120, -7863), CFrame.new(2606, 120, -7745), CFrame.new(2409, 120, -7874), CFrame.new(2269, 120, -7416), CFrame.new(2413, 120, -7232), CFrame.new(2284, 120, -6911)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1725 and Level < 1775 then
      if VerifyNPC("Kilo Admiral") and Level >= 1750 then
        Quest = {CFrame.new(2180, 29, -6738), CFrame.new(2889, 424, -7233), "Kilo Admiral", "MarineTreeIsland", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(2180, 29, -6738), nil, "Marine Rear Admiral", "MarineTreeIsland", 2}
        QuestTween = {CFrame.new(3205, 120, -6742), CFrame.new(3345, 120, -6649), CFrame.new(3776, 210, -7254), CFrame.new(3879, 220, -7083), CFrame.new(3887, 210, -6841), CFrame.new(3546, 210, -6809), CFrame.new(3448, 210, -7014), CFrame.new(3504, 210, -7230)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 1775 and Level < 1800 then
      Quest = {CFrame.new(-10581, 332, -8758), nil, "Fishman Raider", "DeepForestIsland3", 1}
      QuestTween = {CFrame.new(-10550, 380, -8574), CFrame.new(-10860, 380, -8459), CFrame.new(-10578, 380, -8331), CFrame.new(-10377, 380, -8238), CFrame.new(-10147, 380, -8216), CFrame.new(-10234, 380, -8454)}
      TPIsland, TPIslandDistance = nil, nil 
    elseif Level >= 1800 and Level < 1825 then
      Quest = {CFrame.new(-10581, 332, -8758), nil, "Fishman Captain", "DeepForestIsland3", 2}
      QuestTween = {CFrame.new(-10764, 380, -8799), CFrame.new(-10844, 380, -9030), CFrame.new(-11160, 380, -9166), CFrame.new(-11073, 380, -8846), CFrame.new(-11043, 380, -8619)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1825 and Level < 1850 then
      Quest = {CFrame.new(-13233, 332, -7626), nil, "Forest Pirate", "DeepForestIsland", 1}
      QuestTween = {CFrame.new(-13335, 380, -7660), CFrame.new(-13138, 380, -7713), CFrame.new(-13298, 380, -7876), CFrame.new(-13512, 380, -7983), CFrame.new(-13632, 380, -7815)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1850 and Level < 1900 then
      if VerifyNPC("Captain Elephant") and Level >= 1875 then
        Quest = {CFrame.new(-13233, 332, -7626), CFrame.new(-13393, 319, -8423), "Captain Elephant", "DeepForestIsland", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-13233, 332, -7626), nil, "Mythological Pirate", "DeepForestIsland", 2}
        QuestTween = {CFrame.new(-13844, 520, -7016), CFrame.new(-13710, 520, -6856), CFrame.new(-13482, 520, -6985), CFrame.new(-13224, 580, -6806)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 1900 and Level < 1925 then
      Quest = {CFrame.new(-12682, 391, -9901), nil, "Jungle Pirate", "DeepForestIsland2", 1}
      QuestTween = {CFrame.new(-12166, 380, -10375), CFrame.new(-12303, 380, -10639), CFrame.new(-11904, 380, -10469), CFrame.new(-11636, 380, -10511), CFrame.new(-11735, 380, -10687), CFrame.new(-11937, 380, -10713)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1925 and Level < 1975 then
      Quest = {CFrame.new(-12682, 391, -9901), nil, "Musketeer Pirate", "DeepForestIsland2", 2}
      QuestTween = {CFrame.new(-13098, 450, -9831), CFrame.new(-13222, 450, -9621), CFrame.new(-13530, 450, -9760), CFrame.new(-13455, 450, -9940)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 1975 and Level < 2000 then
      Quest = {CFrame.new(-9481, 142, 5565), nil, "Reborn Skeleton", "HauntedQuest1", 1}
      QuestTween = {CFrame.new(-8680, 190, 5852), CFrame.new(-8879, 190, 5900), CFrame.new(-8865, 190, 6100), CFrame.new(-8774, 170, 6169), CFrame.new(-8649, 190, 6071)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 200 and Level < 2025 then
      Quest = {CFrame.new(-9481, 142, 5565), nil, "Living Zombie", "HauntedQuest1", 2}
      QuestTween = {CFrame.new(-10104, 200, 5739), CFrame.new(-10078, 200, 5953), CFrame.new(-10195, 200, 6139), CFrame.new(-10252, 200, 5973)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2025 and Level < 2050 then
      Quest = {CFrame.new(-9515, 172, 6078), nil, "Demonic Soul", "HauntedQuest2", 1}
      QuestTween = {CFrame.new(-9275, 210, 6166), CFrame.new(-9379, 210, 6076), CFrame.new(-9565, 210, 6201), CFrame.new(-9671, 210, 6096)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2050 and Level < 2075 then
      Quest = {CFrame.new(-9515, 172, 6078), nil, "Posessed Mummy", "HauntedQuest2", 2}
      QuestTween = {CFrame.new(-9442, 60, 6304), CFrame.new(-9427, 60, 6148), CFrame.new(-9598, 60, 6121), CFrame.new(-9733, 60, 6119), CFrame.new(-9735, 60, 6336), CFrame.new(-9618, 60, 6323)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2075 and Level < 2100 then
      Quest = {CFrame.new(-2104, 38, -10194), nil, "Peanut Scout", "NutsIslandQuest", 1}
      QuestTween = {CFrame.new(-1870, 100, -10225), CFrame.new(-2143, 100, -10106)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2100 and Level < 2125 then
      Quest = {CFrame.new(-2104, 38, -10194), nil, "Peanut President", "NutsIslandQuest", 2}
      QuestTween = {CFrame.new(-2005, 100, -10585), CFrame.new(-2293, 88, -10512)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2125 and Level < 2150 then
      Quest = {CFrame.new(-818, 66, -10964), nil, "Ice Cream Chef", "IceCreamIslandQuest", 1}
      QuestTween = {CFrame.new(-501, 100, -10883), CFrame.new(-763, 100, -10834), CFrame.new(-990, 100, -11085)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2150 and Level < 2200 then
      if VerifyNPC("Cake Queen") and Level >= 2175 then
        Quest = {CFrame.new(-818, 66, -10964), CFrame.new(-710, 382, -11150), "Cake Queen", "IceCreamIslandQuest", 3}
        QuestTween = nil
        TPIsland, TPIslandDistance = nil, nil
      else
        Quest = {CFrame.new(-818, 66, -10964), nil, "Ice Cream Commander", "IceCreamIslandQuest", 2}
        QuestTween = {CFrame.new(-690, 100, -11350), CFrame.new(-534, 100, -11284), CFrame.new(-720, 180, -11162)}
        TPIsland, TPIslandDistance = nil, nil
      end
    elseif Level >= 2200 and Level < 2225 then
      Quest = {CFrame.new(-2023, 38, -12028), nil, "Cookie Crafter", "CakeQuest1", 1}
      QuestTween = {CFrame.new(-2332, 90, -12049), CFrame.new(-2468, 90, -12121), CFrame.new(-2401, 90, -12224), CFrame.new(-2296, 90, -12114)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2225 and Level < 2250 then
      Quest = {CFrame.new(-2023, 38, -12028), nil, "Cake Guard", "CakeQuest1", 2}
      QuestTween = {CFrame.new(-1514, 90, -12422), CFrame.new(-1455, 90, -12244), CFrame.new(-1674, 90, -12206), CFrame.new(-1707, 90, -12360)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2250 and Level < 2275 then
      Quest = {CFrame.new(-1931, 38, -12840), nil, "Baking Staff", "CakeQuest2", 1}
      QuestTween = {CFrame.new(-1930, 90, -12963), CFrame.new(-1803, 90, -13115), CFrame.new(-1769, 90, -12955), CFrame.new(-1873, 90, -12755)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2275 and Level < 2300 then
      Quest = {CFrame.new(-1931, 38, -12840), nil, "Head Baker", "CakeQuest2", 2}
      QuestTween = {CFrame.new(-2123, 110, -12777), CFrame.new(-2281, 110, -12748), CFrame.new(-2317, 110, -12994), CFrame.new(-2140, 110, -12989)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2300 and Level < 2325 then
      Quest = {CFrame.new(235, 25, -12199), nil, "Cocoa Warrior", "ChocQuest1", 1}
      QuestTween = {CFrame.new(110, 80, -12245), CFrame.new(-71, 80, -12292)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2325 and Level < 2350 then
      Quest = {CFrame.new(235, 25, -12199), nil, "Chocolate Bar Battler", "ChocQuest1", 2}
      QuestTween = {CFrame.new(579, 80, -12413), CFrame.new(735, 80, -12659)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2350 and Level < 2375 then
      Quest = {CFrame.new(150, 25, -12777), nil, "Sweet Thief", "ChocQuest2", 1}
      QuestTween = {CFrame.new(-68, 80, -12692), CFrame.new(90, 80, -12519)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2375 and Level < 2400 then
      Quest = {CFrame.new(150, 25, -12777), nil, "Candy Rebel", "ChocQuest2", 2}
      QuestTween = {CFrame.new(17, 80, -12962), CFrame.new(158, 80, -12961)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2400 and Level < 2425 then
      Quest = {CFrame.new(-1148, 14, -14446), nil, "Candy Pirate", "CandyQuest1", 1}
      QuestTween = {CFrame.new(-1371, 70, -14405), CFrame.new(-1318, 70, -14715)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2425 and Level < 2450 then
      Quest = {CFrame.new(-1148, 14, -14446), nil, "Snow Demon", "CandyQuest1", 2}
      QuestTween = {CFrame.new(-836, 70, -14326), CFrame.new(-884, 70, -14708)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2450 and Level < 2475 then
      Quest = {CFrame.new(-16547, 56, -172), nil, "Isle Outlaw", "TikiQuest1", 1}
      QuestTween = {CFrame.new(-16431, 90, -223), CFrame.new(-16313, 50, -210), CFrame.new(-16160, 35, -156)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2475 and Level < 2500 then
      Quest = {CFrame.new(-16547, 56, -172), nil, "Island Boy", "TikiQuest1", 2}
      QuestTween = {CFrame.new(-16668, 70, -243), CFrame.new(-16744, 60, -195), CFrame.new(-16912, 45, -152)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2500 and Level < 2525 then
      Quest = {CFrame.new(-16540, 56, 1051), nil, "Sun-kissed Warrior", "TikiQuest2", 1}
      QuestTween = {CFrame.new(-16345, 80, 1004), CFrame.new(-16425, 77, 1059), CFrame.new(-16069, 37, 1029)}
      TPIsland, TPIslandDistance = nil, nil
    elseif Level >= 2525 and Level < 2550 then
      Quest = {CFrame.new(-16540, 56, 1051), nil, "Isle Champion", "TikiQuest2", 2}
      QuestTween = {CFrame.new(-16634, 85, 1106), CFrame.new(-16735, 60, 1075), CFrame.new(-16888, 35, 1011)}
      TPIsland, TPIslandDistance = nil, nil
    end
  end
end

local function StartQuest1(quest, number)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest, number)
end

local function StartQuest(quest, number)
  local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
  if plrRP and (plrRP.Position - Quest[1].p).Magnitude <= 5 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", quest or Quest[4] or nil, number or Quest[5] or nil)
  else
    PlayerTP(Quest[1])
  end
end

PlayerLevel.Changed:Connect(function()Get_LevelQuest()end)Get_LevelQuest()
task.spawn(function()while task.wait(1) do pcall(function()Get_LevelQuest()end)end end)

local function BringNPC(enemie, multBring)
  if not getgenv().BringMobs then
    local args = enemie and enemie:FindFirstChild("Humanoid") and enemie.Humanoid.Health <= 0
    if args then
      enemie:Destroy()
    end
    return
  end
  local Enemies = workspace:WaitForChild("Enemies", 20)
  for _,v in pairs(Enemies:GetChildren()) do
    if multBring or v.Name == enemie.Name then
      local args1 = v and v:FindFirstChild("HumanoidRootPart")
      local args2 = enemie and enemie:FindFirstChild("HumanoidRootPart")
      local args3 = enemie and enemie:FindFirstChild("Humanoid")
      local args4  = v and v:FindFirstChild("Humanoid")
      if args1 and args2 and (args1.Position - args2.Position).Magnitude <= 300 then
				args1.CFrame = args2.CFrame
				args1.CanCollide = false
				args1.Size = Vector3.new(50, 50, 50)
				if args4:FindFirstChild("Animator") then
					args4.Animator:Destroy()
				end
				if args4 and args4.Health <= 0 then
				  v:Destroy()
				end
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
      end
    end
  end
end

local function AutoFarm_Level()
  while getgenv().AutoFarm_Level do task.wait()
    if getgenv().AutoEliteHunter and VerifyNPC("Urban") or getgenv().AutoEliteHunter and VerifyNPC("Deandre") or getgenv().AutoEliteHunter and VerifyNPC("Diablo") then
    elseif getgenv().TeleportToFruit and FruitFind() then
    elseif getgenv().AutoSecondSea and Player.Data.Level.Value >= 700 then
    elseif getgenv().AutoThirdSea and Player.Data.Level.Value >= 1500 then
    elseif VerifyNPC("Awakened Ice Admiral") and getgenv().AutoRengoku then
    elseif VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then
    else
      local Enemies = workspace:WaitForChild("Enemies")
      local Enemie = Enemies:FindFirstChild(Quest[3])
      local QuestActive = Player.PlayerGui.Main.Quest
      if Enemie and Enemie:FindFirstChild("Humanoid") and Enemie.Humanoid.Health <= 0 then
        Enemie:Destroy()
      end
      if not QuestActive.Visible then
        QuestActive.Container.QuestTitle.Title.Text = ""
      end
      if QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, Quest[3]) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      end
      if not QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, Quest[3]) then
        StartQuest()
      elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie)end)
      elseif GetProxyChest() then
        PlayerTP(GetProxyChest().CFrame)
      else
        local args = Player and Player.Character and Player.Character.PrimaryPart
        if QuestTween and QuestTween[1] and args and (args.Position - QuestTween[1].p).Magnitude < 8000 then
          TweenNPCSpawn(QuestTween)
        elseif Quest[2] then
          PlayerTP(Quest[2])
        else
          PlayerTP(Quest[1])
        end
      end
    end
  end
end

local function VerifyEnemie(enemie)
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  return Enemies and Enemies:FindFirstChild(enemie)
end

local function AutoFarmSea()
  local APos = Vector3.new(-42756, 21, 2000)
  local Boat = nil
  
  while getgenv().AutoFarmSea do task.wait()
    local plr = game.Players.LocalPlayer
    local plrChar = plr.Character
    local plrBoat = workspace.Boats:FindFirstChild("Guardian")
    
    if plrChar and plrChar.PrimaryPart then
      Boat = plrBoat
      
      if plrBoat and (plrBoat.PrimaryPart.Position - plrChar.PrimaryPart.Position).Magnitude > 4000 then
        plrBoat:Destroy()
      end
      
      if plrBoat then
        if not plrBoat:FindFirstChild("BodyVelocity") then
          local BV = Instance.new("BodyVelocity", plrBoat)
          BV.Velocity = Vector3.new()
        end
        for _,part in pairs(plrBoat:GetDescendants()) do
          if part:IsA("BasePart") or part:IsA("MeshPart") and part.Name ~= "VehicleSeat" then
            part.CanCollide = false
          end
        end
      end
      
      local Enemies = workspace:WaitForChild("Enemies", 20)
      local Terrorshark = Enemies:FindFirstChild("Terrorshark")
      local Shark = Enemies:FindFirstChild("Shark")
      local Piranha = Enemies:FindFirstChild("Piranha")
      local FishCrewMember = Enemies:FindFirstChild("Fish Crew Member")
      local SeaBeast = workspace:FindFirstChild("Vortex")
      
      if not plrBoat then
        local BuyBoatDistance = (plrChar.PrimaryPart.Position - Vector3.new(-6123, 16, -2247)).Magnitude
        if BuyBoatDistance > 2000 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5073, 315, -3153))
        elseif BuyBoatDistance <= 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "Guardian")
        else
          PlayerTP(CFrame.new(-6123, 16, -2247))
        end
      
      elseif getgenv().Terrorshark and Terrorshark and Terrorshark:FindFirstChild("HumanoidRootPart") then
        
        PlayerTP(Terrorshark.HumanoidRootPart.CFrame * CFrame.new(0, 40, 50))
        pcall(function()PlayerClick()AutoHaki()EquipTool()plrChar.Humanoid.Sit = false end)
        
        if Terrorshark:FindFirstChild("Humanoid") and Terrorshark.Humanoid.Health <= 0 then
          Terrorshark:Destroy()
        end
        
      elseif getgenv().Piranha and Piranha and Piranha:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Piranha.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Piranha)plrChar.Humanoid.Sit = false end)
        
      elseif getgenv().FishCrewMember and FishCrewMember and FishCrewMember:FindFirstChild("HumanoidRootPart") then
        PlayerTP(FishCrewMember.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(FishCrewMember)plrChar.Humanoid.Sit = false end)
        
      elseif getgenv().Shark and Shark and Shark:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Shark.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()plrChar.Humanoid.Sit = false end)
        
        if Shark:FindFirstChild("Humanoid") and Shark.Humanoid.Health <= 0 then
          Shark:Destroy()
        end
        
      elseif plrBoat and plrBoat:FindFirstChild("VehicleSeat") then
        DisableHaki()
        PlayerTP(plrBoat.VehicleSeat.CFrame)
      end
      if plrChar:FindFirstChild("Humanoid") and plrBoat and plrBoat:FindFirstChild("VehicleSeat") and plrChar.Humanoid.SeatPart ~= plrBoat.VehicleSeat then
        plrChar.Humanoid.Sit = false
        BoatTP(plrBoat, plrBoat.PrimaryPart.CFrame)
      end
      if plrBoat and plrBoat:FindFirstChild("VehicleSeat") and plrChar:FindFirstChild("Humanoid") and plrChar.Humanoid.SeatPart == plrBoat.VehicleSeat and plrChar:FindFirstChild("HumanoidRootPart") then
        if SeaBeast and SeaBeast:FindFirstChild("HumanoidRootPart") and (SeaBeast.HumanoidRootPart.Position - APos).Magnitude < 1000 then
          APos = Vector3.new(-42756, 21, -1000)
          BoatTP(plrBoat, CFrame.new(-42756, 21, -1000))
        elseif SeaBeast and (SeaBeast.Position - APos).Magnitude < 1000 then
          APos = Vector3.new(-42756, 21, 2000)
          BoatTP(plrBoat, CFrame.new(-42756, 21, 2000))
        else
          BoatTP(plrBoat, CFrame.new(-42756, 21, 2000))
        end
      end
    end
  end
  task.wait(0.5)
  if Boat then
    BoatTP(Boat, Boat.PrimaryPart.CFrame)
  end
end

local function AutoEliteHunter()
  while getgenv().AutoEliteHunter do task.wait()
    if getgenv().TeleportToFruit and FruitFind() then
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then
    else
      local NPC = ""
      local QuestActive = Player.PlayerGui.Main.Quest
      local Remote = game:GetService("ReplicatedStorage").Remotes.CommF_
      
      task.spawn(function()Remote:InvokeServer("EliteHunter")end)
      
      if not QuestActive.Visible then
        QuestActive.Container.QuestTitle.Title.Text = ""
      end
      
      if string.find(QuestActive.Container.QuestTitle.Title.Text, "Diablo") then
        NPC = "Diablo"
      elseif string.find(QuestActive.Container.QuestTitle.Title.Text, "Deandre") then
        NPC = "Deandre"
      else
        NPC = "Urban"
      end
      
      local NPC1 = workspace:WaitForChild("Enemies", 9e9):FindFirstChild(NPC)
      local NPC2 = game:GetService("ReplicatedStorage"):FindFirstChild(NPC)
      
      if NPC1 and NPC1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(NPC1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif NPC2 and NPC2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(NPC2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      end
    end
  end
end

local function AutoSawBoss()
  while getgenv().AutoSawBoss do task.wait()
    local SawBoss1 = workspace:WaitForChild("Enemies", 9e9):FindFirstChild("The Saw")
    local SawBoss2 = game:GetService("ReplicatedStorage"):FindFirstChild("The Saw")
    
    if SawBoss1 and SawBoss1:FindFirstChild("HumanoidRootPart") then
      PlayerTP(SawBoss1.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    elseif SawBoss2 and SawBoss2:FindFirstChild("HumanoidRootPart") then
      PlayerTP(SawBoss2.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    else
      PlayerTP(CFrame.new(-690, 15, 1583))
    end
  end
end

local function AutoMusketeerHat()
  local QuestActive = Player.PlayerGui.Main.Quest
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  local BossProgress = false
  local BanditProgress = false
  local QuestProgress = 0
  
  task.spawn(function()
    while getgenv().AutoMusketeerHat do task.wait()
      BossProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss
      BanditProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits
      QuestProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
    end
  end)
  
  while getgenv().AutoMusketeerHat do task.wait()
    local plrLevel = Player.Data.Level.Value
    local QuestTitle = QuestActive.Container.QuestTitle.Title
    
    if plrLevel < 1800 then
    elseif not BanditProgress then
      local Enemies1 = Enemies:FindFirstChild("Forest Pirate")
      local Enemies2 = game:GetService("ReplicatedStorage"):FindFirstChild("Forest Pirate")
      
      if not QuestActive.Visible then
        QuestTitle.Text = ""
      end
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      end
      
      if not QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
        StartQuest1("CitizenQuest", 1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
      elseif Enemies1 and Enemies1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemies1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemies1)end)
      elseif Enemies2 and Enemies2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemies2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemies2)end)
      end
    elseif not BossProgress then
      local Enemies1 = Enemies:FindFirstChild("Captain Elephant")
      local Enemies2 = game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant")
      
      if not QuestActive.Visible then
        QuestTitle.Text = ""
      end
      
      if QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      end
      
      if not QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
      elseif Enemies1 and Enemies1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemies1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemies1)end)
      elseif Enemies2 and Enemies2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemies2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemies2)end)
      else
        PlayerTP(CFrame.new(-13393, 319, -8423))
      end
    elseif QuestProgress == 2 then
      PlayerTP(CFrame.new(-12512, 340, -9872))
    end
  end
end

local function AutoEnelBossPole()
  while getgenv().AutoEnelBossPole do task.wait()
    local EnelBoss1 = workspace:WaitForChild("Enemies", 9e9):FindFirstChild("Thunder God")
    local EnelBoss2 = game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God")
    
    if EnelBoss1 and EnelBoss1:FindFirstChild("HumanoidRootPart") then
      PlayerTP(EnelBoss1.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    elseif EnelBoss2 and EnelBoss2:FindFirstChild("HumanoidRootPart") then
      PlayerTP(EnelBoss2.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    else
      PlayerTP(CFrame.new(-7739, 5657, -2289))
    end
  end
end

local function AutoUnlockSaber()
  local RichSonProgress = 0
  local SickManProgress = 0
  
  task.spawn(function()
    while getgenv().AutoUnlockSaber do task.wait()
      RichSonProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
      SickManProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
    end
  end)
  while getgenv().AutoUnlockSaber do task.wait()
    if Player.Data.Level.Value > 200 then
      local plrChar = Player and Player.Character
      local plrBag = Player.Backpack
      local plrRP = plrChar:FindFirstChild("HumanoidRootPart")
      local Plates = game:GetService("Workspace").Map.Jungle.QuestPlates
      
      if not workspace.Map.Jungle.Final.Part.CanCollide then
        
        local Enemie1 = workspace:WaitForChild("Enemies", 9e9):FindFirstChild("Saber Expert")
        local Enemie2 = game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")
        
        if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        elseif Enemie2 and Enemie2:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        else
          PlayerTP(CFrame.new(-1461, 30, -51))
        end
        
      elseif plrChar and VerifyTool("Relic") then
        PlayerTP(CFrame.new(-1408, 30, 3))
        EquipToolName("Relic")
      elseif SickManProgress == 1 and RichSonProgress == 0 and not workspace.Map.Desert.Burn.Part.CanCollide then
        local Enemie1 = workspace:WaitForChild("Enemies", 9e9):FindFirstChild("Mob Leader")
        local Enemie2 = game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")
        
        if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        elseif Enemie2 and Enemie2:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        end
        
      elseif plrChar:FindFirstChild("Cup") and not plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
      elseif plrChar:FindFirstChild("Cup") and plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
        PlayerTP(CFrame.new(1393, 37, -1324, -0.408640295, 0, -0.912695527, 0, 1, 0, 0.912695527, 0, -0.408640295))
      elseif plrBag:FindFirstChild("Cup") then
        EquipToolName("Cup")
      elseif not workspace.Map.Desert.Burn.Part.CanCollide then
        PlayerTP(workspace.Map.Desert.Cup.CFrame)
      elseif plrChar:FindFirstChild("Torch") then
        PlayerTP(CFrame.new(1113, 5, 4352))
      elseif plrBag:FindFirstChild("Torch") then
        EquipToolName("Torch")
      elseif Plates:FindFirstChild("Door") and Plates.Door.CanCollide then
        if Plates then
          local Plate1 = Plates:FindFirstChild("Plate1")
          local Plate2 = Plates:FindFirstChild("Plate2")
          local Plate3 = Plates:FindFirstChild("Plate3")
          local Plate4 = Plates:FindFirstChild("Plate4")
          local Plate5 = Plates:FindFirstChild("Plate5")
          
          if Plate1 and Plate1:FindFirstChild("Button") and Plate1.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate1.Button.CFrame)
          elseif Plate2 and Plate2:FindFirstChild("Button") and Plate2.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate2.Button.CFrame)
          elseif Plate3 and Plate3:FindFirstChild("Button") and Plate3.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate3.Button.CFrame)
          elseif Plate4 and Plate4:FindFirstChild("Button") and Plate4.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate4.Button.CFrame)
          elseif Plate5 and Plate5:FindFirstChild("Button") and Plate5.Button.BrickColor ~= BrickColor.new("Camo") then
            PlayerTP(Plate5.Button.CFrame)
          end
        end
      elseif plrRP and Plates:FindFirstChild("Door") and not Plates.Door.CanCollide then
        PlayerTP(workspace.Map.Jungle.Torch.CFrame)
      end
    end
  end
end

local function AutoFarmEctoplasm()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoFarmEctoplasm do task.wait()
    if getgenv().TeleportToFruit and FruitFind() then
    elseif getgenv().AutoCursedCaptain and VerifyNPC("Cursed Captain") then
    else
      local Enemie1 = Enemies:FindFirstChild("Ship Deckhand")
      local Enemie2 = Enemies:FindFirstChild("Ship Engineer")
      local Enemie3 = Enemies:FindFirstChild("Ship Steward")
      local Enemie4 = Enemies:FindFirstChild("Ship Officer")
      
      if Enemie1 then
        PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie1, true)end)
      elseif Enemie2 then
        PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie2, true)end)
      elseif Enemie3 then
        PlayerTP(Enemie3.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie3, true)end)
      elseif Enemie4 then
        PlayerTP(Enemie4.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie4, true)end)
      else
        PlayerTP(CFrame.new(927, 126, 33126))
      end
    end
  end
end

local function AutoFarmBone()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  local function GetProxyNPC()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies:GetChildren()) do
      if npc.Name == "Reborn Skeleton" or npc.Name == "Living Zombie" or npc.Name == "Demonic Soul" or npc.Name == "Posessed Mummy" then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  while getgenv().AutoFarmBone do task.wait()
    if getgenv().AutoFarm_Level then
    elseif getgenv().AutoEliteHunter and VerifyNPC("Urban") or getgenv().AutoEliteHunter and VerifyNPC("Deandre") or getgenv().AutoEliteHunter and VerifyNPC("Diablo") then
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then
    elseif getgenv().TeleportToFruit and FruitFind() then
    else
      local Enemie = GetProxyNPC()
      if Enemie then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie, true)end)
      else
        PlayerTP(CFrame.new(-9513, 164, 5786))
      end
    end
  end
end

local function AutoPiratesSea()
  while getgenv().AutoPiratesSea do task.wait()
    if Player.Character and Player.Character.PrimaryPart and (Player.Character.PrimaryPart.Position - Vector3.new(-5556, 314, -2988)).Magnitude > 1000 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5092, 315, -3130))
    end
    
    local Enemie = nil
    for _,npc in pairs(workspace:WaitForChild("Enemies", 9e9):GetChildren()) do
      if npc and npc.PrimaryPart and (npc.PrimaryPart.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
        Enemie = npc
      end
    end
    
    if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
      PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie, true)end)
    else
      PlayerTP(CFrame.new(-5556, 314, -2988))
    end
    
    task.spawn(function()
      if Enemie and Enemie:FindFirstChild("Humanoid") and Enemie.Humanoid.Health <= 0 then
        Enemie:Destroy()
      end
    end)
  end
end

local function AutoFactory()
  while getgenv().AutoFactory do task.wait()
    local args = Player and Player.Character and Player.Character.PrimaryPart
    if args then
      local magnitude = (args.Position - Vector3.new(410, 200, -414)).Magnitude
      if magnitude > 2000 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-317, 331, 597))
      else
        PlayerTP(CFrame.new(410, 200, -414))
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      end
    end
  end
end

local function AutoSecondSea()
  local Map = workspace:WaitForChild("Map", 9e9)
  local IceMap = Map:WaitForChild("Ice", 9e9)
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoSecondSea do task.wait()
    if Player.Data.Level.Value < 700 then
    else
      local plrChar = Player and Player.Character
      local plrPP = Player and Player.Character and Player.Character.PrimaryPart
      local DoorArgs = IceMap:FindFirstChild("Door") and IceMap.Door.CanCollide and IceMap.Door.Transparency < 1
      
      if not VerifyTool("Key") and DoorArgs then
        PlayerTP(CFrame.new(4852, 6, 719))
        if plrPP and (plrPP.Position - Vector3.new(4852, 6, 719)).Magnitude < 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
        end
      elseif VerifyTool("Key") and DoorArgs then
        EquipToolName("Key")
        PlayerTP(CFrame.new(1346, 37, -1329))
      elseif VerifyNPC("Ice Admiral") and IceMap:FindFirstChild("Door") and not IceMap.Door.CanCollide and IceMap.Door.Transparency > 0 then
        local IceAdmiral = Enemies:FindFirstChild("Ice Admiral")
        
        if IceAdmiral and IceAdmiral:FindFirstChild("HumanoidRootPart") then
          PlayerTP(IceAdmiral.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        end
      else
        PlayerTP(CFrame.new(1280, 27, -1380))
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
      end
    end
  end
end

local function AutoThirdSea()
  local QuestProgress = 0
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  task.spawn(function()
    while getgenv().AutoThirdSea do task.wait()
      QuestProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("QuestProgress","Check")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
  end)
  
  while getgenv().AutoThirdSea do task.wait()
    if Player.Data.Level.Value < 1500 then
    else
      if QuestProgress == 0 then
        local RipIndra = nil
        local plrChar = Player and Player.Character and Player.Character.PrimaryPart
        
        for _,boss in pairs(Enemies:GetChildren()) do
          if boss and boss.Name == "rip_indra" and plrChar and boss:FindFirstChild("HumanoidRootPart") and (plrChar.Position - boss.HumanoidRootPart.Position).Magnitude < 1000 then
            RipIndra = boss
          end
        end
        if boss and boss:FindFirstChild("HumanoidRootPart") then
          PlayerTP(boss.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        else
          local plrChar = Player and Player.Character and Player.Character.PrimaryPart
          if plrChar and (plrChar.Position - Vector3.new(-1926, 13, 1738)).Magnitude < 5 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("QuestProgress","Begin")
          else
            PlayerTP(CFrame.new(-1926, 13, 1738))
          end
        end
      end
    end
  end
end

local function AutoBartiloQuest()
  local BartiloQuestLevel = 0
  task.spawn(function()
    while getgenv().AutoBartiloQuest do task.wait()
      BartiloQuestLevel = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
    end
  end)
  
  local QuestActive = Player.PlayerGui.Main.Quest
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoBartiloQuest do task.wait()
    if Player.Data.Level.Value >= 850 then
      local QuestTitle = QuestActive.Container.QuestTitle.Title
      if BartiloQuestLevel == 0 then
        
        local Enemie = Enemies:FindFirstChild("Swan Pirate")
        
        if not QuestActive.Visible then
          QuestTitle.Text = ""
        end
        
        if QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
        
        if not QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
          StartQuest1("BartiloQuest", 1)
        elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie)end)
        else
          TweenNPCSpawn({CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}, "Swan Pirate")
        end
      elseif BartiloQuestLevel == 1 then
        local Enemie1 = Enemies:FindFirstChild("Jeremy")
        local Enemie2 = game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy")
        
        if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie1)end)
        elseif Enemie2 and Enemie2:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie2)end) 
        else
          PlayerTP(CFrame.new(2316, 449, 787))
        end
      
      elseif BartiloQuestLevel == 2 then
        local Plates = game:GetService("Workspace").Map.Dressrosa:FindFirstChild("BartiloPlates")
        if Plates and Plates:FindFirstChild("Plate1") and Plates.Plate1.Color.G ~= 1 then
          PlayerTP(Plates.Plate1.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate2") and Plates.Plate2.Color.G ~= 1 then
          PlayerTP(Plates.Plate2.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate3") and Plates.Plate3.Color.G ~= 1 then
          PlayerTP(Plates.Plate3.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate4") and Plates.Plate4.Color.G ~= 1 then
          PlayerTP(Plates.Plate4.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate5") and Plates.Plate5.Color.G ~= 1 then
          PlayerTP(Plates.Plate5.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate6") and Plates.Plate6.Color.G ~= 1 then
          PlayerTP(Plates.Plate6.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate7") and Plates.Plate7.Color.G ~= 1 then
          PlayerTP(Plates.Plate7.CFrame)
        elseif Plates and Plates:FindFirstChild("Plate8") and Plates.Plate8.Color.G ~= 1 then
          PlayerTP(Plates.Plate8.CFrame)
        end
      end
    end
  end
end

local function TeleportToFruit()
  while getgenv().TeleportToFruit do task.wait()
    if getgenv().AutoSecondSea and Player.Data.Level.Value >= 700 then
    elseif VerifyNPC("Awakened Ice Admiral") and getgenv().AutoRengoku then
    elseif VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then
    elseif VerifyTool("Hallow Essence") and getgenv().AutoSoulReaper then
    elseif VerifyNPC("Cake Prince") and getgenv().AutoCakePrince then
    elseif VerifyNPC("Dough King") and getgenv().AutoCakePrince then
    elseif FruitFind() then
      PlayerTP(FruitFind().CFrame)
    end
  end
end

local function AutoRipIndra()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  while getgenv().AutoRipIndra do task.wait()
    if not VerifyNPC("rip_indra True Form") and getgenv().AutoFarm_Level then
    elseif not VerifyNPC("rip_indra True Form") and getgenv().AutoEliteHunter then
    elseif not VerifyNPC("rip_indra True Form") and getgenv().TeleportToFruit then
    elseif not VerifyNPC("rip_indra True Form") and getgenv().AutoFarmBone then
    elseif not VerifyNPC("rip_indra True Form") and getgenv().AutoCakePrince then
    elseif not VerifyNPC("rip_indra True Form") and getgenv().AutoCakePrince and VerifyNPC("Cake Prince") then
    else
      local plrChar = Player and Player.Character
      if plrChar then
        local plrPP = plrChar.PrimaryPart
        local RipIndra1 = Enemies:FindFirstChild("rip_indra True Form")
        local RipIndra2 = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
        
        if plrPP and (plrPP.Position - Vector3.new(-5323, 424, -2659)).Magnitude > 2000 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5092, 315, -3130))
        elseif RipIndra1 and RipIndra1:FindFirstChild("HumanoidRootPart") then
          PlayerTP(RipIndra1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        elseif RipIndra2 and RipIndra2:FindFirstChild("HumanoidRootPart") then
          PlayerTP(RipIndra2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()end)
        elseif VerifyTool("God's Chalice") then
          EquipToolName("God's Chalice")
          PlayerTP(CFrame.new(-5561, 314, -2663))
        else
          PlayerTP(CFrame.new(-5333, 424, -2673))
        end
      end
    end
  end
end

local function AutoDarkbeard()
  local Enemies1 = workspace:WaitForChild("Enemies", 9e9)
  local Enemies2 = game:GetService("ReplicatedStorage")
  
  while getgenv().AutoDarkbeard do task.wait()
    local Darkbeard1 = Enemies1:FindFirstChild("Darkbeard")
    local Darkbeard2 = Enemies2:FindFirstChild("Darkbeard")
    
    if Darkbeard1 and Darkbeard1:FindFirstChild("HumanoidRootPart") then
      PlayerTP(Darkbeard1.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    elseif Darkbeard2 and Darkbeard2:FindFirstChild("HumanoidRootPart") then
      PlayerTP(Darkbeard2.HumanoidRootPart.CFrame + getgenv().FarmPos)
      pcall(function()PlayerClick()AutoHaki()EquipTool()end)
    elseif VerifyTool("Fist of Darkness") then
      EquipToolName("Fist of Darkness")
      PlayerTP(CFrame.new(3779, 16, -3500))
    else
      PlayerTP(CFrame.new(3746, 13, -3632))
    end
  end
end

local function AutoCursedCaptain()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoCursedCaptain do task.wait()
    if getgenv().AutoFarmEctoplasm and not VerifyNPC("Cursed Captain") then
    else
      local plrChar = Player and Player.Character and Player.Character.PrimaryPart
      
      local Enemie1 = Enemies:FindFirstChild("Cursed Captain")
      local Enemie2 = game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain")
      
      if plrChar and (plrChar.Position - Vector3.new(923, 125, 32869)).Magnitude > 2000 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32869))
      elseif Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif Enemie2 and Enemie2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      else
        PlayerTP(CFrame.new(912, 186, 33591))
      end
    end
  end
end

local function AutoCakePrince()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  task.spawn(function()
    while getgenv().AutoCakePrince do task.wait(1)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
    end
  end)
  while getgenv().AutoCakePrince do task.wait()
    if getgenv().AutoEliteHunter and VerifyNPC("Urban") or getgenv().AutoEliteHunter and VerifyNPC("Deandre") or getgenv().AutoEliteHunter and VerifyNPC("Diablo") then
    elseif not VerifyNPC("Cake Prince") and getgenv().TeleportToFruit and FruitFind() then
    elseif not VerifyNPC("Dough King") and getgenv().TeleportToFruit and FruitFind() then
    elseif VerifyNPC("Soul Reaper") and getgenv().AutoSoulReaper then
    elseif VerifyNPC("rip_indra True Form") and getgenv().AutoRipIndra then
    else
      local CakePrince1 = Enemies:FindFirstChild("Cake Prince")
      local CakePrince2 = game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")
      local DoughKing1 = Enemies:FindFirstChild("Dough King")
      local DoughKing2 = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")
      local Enemie1 = Enemies:FindFirstChild("Cookie Crafter")
      local Enemie2 = Enemies:FindFirstChild("Cake Guard")
      local Enemie3 = Enemies:FindFirstChild("Baking Staff")
      local Enemie4 = Enemies:FindFirstChild("Head Baker")
      
      if DoughKing1 and DoughKing1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(DoughKing1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif DoughKing2 and DoughKing2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(DoughKing2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      end
      
      if CakePrince1 and CakePrince1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(CakePrince1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif CakePrince2 and CakePrince2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(CakePrince2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      end
      
      if not getgenv().AutoFarm_Level and not CakePrince1 and not CakePrince2 and not DoughKing1 and not DoughKing2 then
        if Enemie1 then
          PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie1, true)end)
        elseif Enemie2 then
          PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie2, true)end)
        elseif Enemie3 then
          PlayerTP(Enemie3.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie3, true)end)
        elseif Enemie4 then
          PlayerTP(Enemie4.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie4, true)end)
        else
          PlayerTP(CFrame.new(-2103, 70, -12165))
        end
      end
    end
  end
end

local BossListT = {
  -- Sea 1
  "Greybeard",
  "The Saw",
  "Saber Expert",
  "The Gorilla King",
  "Bobby",
  "Yeti",
  "Vice Admiral",
  "Warden",
  "Chief Warden",
  "Swan",
  "Magma Admiral",
  "Wysper",
  "Thunder God",
  "CyborgCombat",
  "Fishman Lord",
  -- Sea 2
  "Darkbeard",
  "Cursed Captain",
  "Don Swan",
  "Diamond",
  "Fajita",
  "Jeremy",
  "Smoke Admiral",
  "Awakened Ice Admiral",
  "Tide Keeper",
  -- Sea 3
  "Dough King",
  "Cake Prince",
  "rip_indra True Form",
  "Stone",
  "Beautiful Pirate",
  "Island Empress",
  "Kilo Admiral",
  "Captain Elephant",
  "Cake Queen"
}

local function AutoFarmBossSelected()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  local GetQuest, GetQuestPos, Quest, NotBossPos, BossName = false,nil, nil, nil, getgenv().BossSelected or ""
  local QuestActive = Player.PlayerGui.Main.Quest
  
  while getgenv().AutoFarmBossSelected do task.wait()
    BossName = getgenv().BossSelected or ""
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    if plrChar then
      
      local GetQuest, NotBossPos, Quest, QuestNun = GetBossQuest(BossName)
      
      if VerifyNPC(BossName) then
        local Boss1 = Enemies:FindFirstChild(BossName)
        local Boss2 = game:GetService("ReplicatedStorage"):FindFirstChild(BossName)
        
        if Boss1 and Boss1:FindFirstChild("Humanoid") and Boss1.Humanoid.Health <= 0 then
          Boss1:Destroy()
        end
        if not QuestActive.Visible then
          QuestActive.Container.QuestTitle.Title.Text = ""
        end
        if QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, BossName) then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
        if GetQuest and getgenv().TakeQuestBoss and not QuestActive.Visible and not string.find(QuestActive.Container.QuestTitle.Title.Text, BossName) then
          StartQuest1(Quest, QuestNun or 3)
        elseif Boss1 then
          PlayerTP(Boss1.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Boss1)end)
        elseif Boss2 then
          PlayerTP(Boss2.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Boss2)end)
        end
      elseif NotBossPos then
        PlayerTP(NotBossPos)
      end
    end
  end
end

local function AutoSoulReaper()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoSoulReaper do task.wait()
    if getgenv().AutoFarmBone and not VerifyNPC("Soul Reaper") and not VerifyTool("Hallow Essence") then
    else
      local SoulReaper1 = Enemies:FindFirstChild("Soul Reaper")
      local SoulReaper2 = game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")
      
      if SoulReaper1 and SoulReaper1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(SoulReaper1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif SoulReaper2 and SoulReaper2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(SoulReaper2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif VerifyTool("Hallow Essence") then
        EquipToolName("Hallow Essence")
        pcall(function()PlayerTP(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)end)
      else
        PlayerTP(CFrame.new(-9529, 316, 6712))
      end
    end
  end
end

local function AutoFarmNearest()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  local SavePos = Player.Character and Player.Character.PrimaryPart.Position or Vector3.new()
  
  while getgenv().AutoFarmNearest do task.wait()
    if getgenv().AutoFarm_Level or getgenv().AutoRipIndra or getgenv().AutoCakePrince then
    else
      local Npc = nil
      local OldDistance = 1500
      
      for _,Enemie in pairs(Enemies:GetChildren()) do
        if Enemie and Enemie.PrimaryPart and (Enemie.PrimaryPart.Position - SavePos).Magnitude < OldDistance then
          OldDistance = (Enemie.PrimaryPart.Position - SavePos).Magnitude
          Npc = Enemie
        end
      end
      if Npc and Npc:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Npc.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Npc, true)end)
      end
    end
  end
end

local function AutoCursedChest()
  local Enemies = workspace:WaitForChild("Enemies")
  
  while getgenv().AutoCursedChest do task.wait()
    local Enemie1 = Enemies:FindFirstChild("Evil Wraith")
    local Enemie2 = Enemies:FindFirstChild("Bone Wraith")
    local ChestCT = workspace.Map:FindFirstChild("CursedTreasure")
    
    pcall(function()
      if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie1.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie1)end)
      elseif Enemie2 and Enemie2:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie2.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie2)end)
      elseif ChestCT and ChestCT.Transparency ~= 1 then
        PlayerTP(ChestCT.CFrame)
      end
    end)
  end
end

local function AutoRaceV2()
  local QuestProgress = 0
  task.spawn(function()
    while getgenv().AutoRaceV2 do task.wait()
      QuestProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
    end
  end)
  
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  while getgenv().AutoRaceV2 do task.wait()
    if not Player.Data.Race:FindFirstChild("Evolved") then
      if QuestProgress == 0 then
        local plrChar = Player and Player.Character and Player.Character.PrimaryPart
        
        if plrChar and (plrChar.Position - Vector3.new(-2777, 73, -3570)).Magnitude < 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
        else
          PlayerTP(CFrame.new(-2777, 73, -3570))
        end
      elseif QuestProgress == 1 then
        
        local plrBag = Player:FindFirstChild("Backpack")
        local plrChar = Player.Character
        
        if plrChar:FindFirstChild("Flower 1") then
          plrChar["Flower 1"].Parent = plrBag
        elseif plrChar:FindFirstChild("Flower 2") then
          plrChar["Flower 2"].Parent = plrBag
        elseif plrChar:FindFirstChild("Flower 3") then
          plrChar["Flower 3"].Parent = plrBag
        end
        
        if not plrBag:FindFirstChild("Flower 1") and workspace:FindFirstChild("Flower1") and workspace["Flower1"].Transparency ~= 1 then
          PlayerTP(workspace["Flower1"].CFrame)
        elseif not plrBag:FindFirstChild("Flower 2") and workspace:FindFirstChild("Flower2") and workspace["Flower2"].Transparency ~= 1 then
          PlayerTP(workspace["Flower2"].CFrame)
        elseif not plrBag:FindFirstChild("Flower 3") then
          local Enemie = Enemies:FindFirstChild("Swan Pirate")
        
          if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
            pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie)end)
          else
            TweenNPCSpawn({CFrame.new(778, 110, 1129), CFrame.new(1018, 110, 1128), CFrame.new(1020, 110, 1366), CFrame.new(1016, 110, 1115)}, "Swan Pirate")
          end
        end
      elseif QuestProgress == 2 then
        local plrChar = Player and Player.Character and Player.Character.PrimaryPart
        
        if plrChar and (plrChar.Position - Vector3.new(-2777, 73, -3570)).Magnitude < 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
        else
          PlayerTP(CFrame.new(-2777, 73, -3570))
        end
      end
    end
  end
end

local function AutoRengoku()
  local Enemies = workspace:WaitForChild("Enemies", 9e9)
  
  local function GetProxyNPC()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies:GetChildren()) do
      if npc.Name == "Arctic Warrior" or npc.Name == "Snow Lurker" then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  while getgenv().AutoRengoku do task.wait()
    if VerifyNPC("Darkbeard") and getgenv().AutoDarkbeard then
    else
      local Backpack = Player:FindFirstChild("Backpack")
      local plrChar = Player.Character
      
      local EnemieBossW = Enemies:FindFirstChild("Awakened Ice Admiral")
      local EnemieBossR = game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral")
      local Enemie = GetProxyNPC()
      
      if VerifyTool("Hidden Key") then
        EquipToolName("Hidden Key")
        PlayerTP(CFrame.new(6571, 299, -6968))
      elseif VerifyTool("Library Key") then
        EquipToolName("Library Key")
        PlayerTP(CFrame.new(6373, 293, -6839))
      elseif EnemieBossW and EnemieBossW:FindFirstChild("HumanoidRootPart") then
        PlayerTP(EnemieBossW.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(EnemieBossW)end)
      elseif EnemieBossR and EnemieBossR:FindFirstChild("HumanoidRootPart") then
        PlayerTP(EnemieBossR.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()end)
      elseif not getgenv().AutoFarm_Level and Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
        PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
        pcall(function()PlayerClick()AutoHaki()EquipTool()BringNPC(Enemie, true) end)
      elseif not getgenv().AutoFarm_Level then
        PlayerTP(CFrame.new(5707, 28, -6402))
      end
    end
  end
end

local MainFarm = MakeTab({Name = "Farm"})
if Sea3 then
  local AutoSea = MakeTab({Name = "Sea"})
  
  AddSection(AutoSea, {"Farm"})
  
  AddToggle(AutoSea, {
    Name = "Auto Farm Sea",
    Callback = function(Value)
      getgenv().AutoFarmSea = Value
      AutoFarmSea()
    end
  })
  
  AddSection(AutoSea, {"Farm Select"})
  
  AddToggle(AutoSea, {Name = "Terrorshark",Default = true,Callback = function(Value)
    getgenv().Terrorshark = Value
  end})
  
  AddToggle(AutoSea, {Name = "Piranha",Default = true,Callback = function(Value)
    getgenv().Piranha = Value
  end})
  
  AddToggle(AutoSea, {Name = "Fish Crew Member",Default = true,Callback = function(Value)
    getgenv().FishCrewMember = Value
  end})
  
  AddToggle(AutoSea, {Name = "Shark",Default = true,Callback = function(Value)
    getgenv().Shark = Value
  end})
end
local QuestsTabs = MakeTab({Name = "Quests/Items"})
local FruitAndRaid = MakeTab({Name = "Fruit + Raid"})
local Teleport = MakeTab({Name = "Teleport"})
local Shop = MakeTab({Name = "Shop"})
local Misc = MakeTab({Name = "Misc"})

AddDropdown(MainFarm, {
  Name = "Farm Tool",
  Options = {"Melee", "Sword"},
  Default = getgenv().FarmTool or "Melee",
  Callback = function(Value)
    getgenv().FarmTool = Value
  end
})

AddSection(MainFarm, {"Farm"})

AddToggle(MainFarm, {
  Name = "Auto Farm Level",
  Default = false,
  Callback = function(Value)
    getgenv().AutoFarm_Level = Value
    AutoFarm_Level()
  end
})

AddToggle(MainFarm, {
  Name = "Auto Farm Nearest",
  Default = false,
  Callback = function(Value)
    getgenv().AutoFarmNearest = Value
    AutoFarmNearest()
  end
})

if Sea3 then
  AddToggle(MainFarm, {
    Name = "Auto Pirates Sea",
    Default = false,
    Callback = function(Value)
      getgenv().AutoPiratesSea = Value
      AutoPiratesSea()
    end
  })
  
  AddSection(MainFarm, {"Bone"})
  
  AddToggle(MainFarm, {
    Name = "Auto Farm Bone",
    Callback = function(Value)
      getgenv().AutoFarmBone = Value
      AutoFarmBone()
    end
  })
  
  AddToggle(MainFarm, {
    Name = "Auto Hallow Scythe",
    Callback = function(Value)
      getgenv().AutoSoulReaper = Value
      AutoSoulReaper()
    end
  })
  
  AddToggle(MainFarm, {
    Name = "Auto Trade Bone",
    Callback = function(Value)
      getgenv().AutoTradeBone = Value
      while getgenv().AutoTradeBone do task.wait()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
      end
    end
  })
  
elseif Sea2 then
  AddToggle(MainFarm, {
    Name = "Auto Factory",
    Default = false,
    Callback = function(Value)
      getgenv().AutoFactory = Value
      AutoFactory()
    end
  })
  
  AddSection(MainFarm, {"Ectoplasm"})
  
  AddToggle(MainFarm, {
    Name = "Auto Farm Ectoplasm",
    Default = false,
    Callback = function(Value)
      getgenv().AutoFarmEctoplasm = Value
      AutoFarmEctoplasm()
    end
  })
end

AddSection(MainFarm, {"Cursed Chest"})

AddToggle(MainFarm, {
  Name = "Auto Cursed Chest",
  Callback = function(Value)
    getgenv().AutoCursedChest = Value
    AutoCursedChest()
  end
})

AddSection(MainFarm, {"Bosses"})

AddButton(MainFarm, {
  Name = "Update Boss List",
  Callback = function()
    pcall(function()UpdateBossList()end)
  end
})

local BossList = AddDropdown(MainFarm, {
  Name = "Boss List",
  Options = {""},
  Default = "",
  Callback = function(Value)
    getgenv().BossSelected = Value
  end
})

function UpdateBossList()
  local NewOptions = {}
  for ___,NameBoss in pairs(BossListT) do
    if VerifyNPC(NameBoss) then
      table.insert(NewOptions, NameBoss)
    end
  end
  UpdateDropdown(BossList, NewOptions)
end
UpdateBossList()

AddToggle(MainFarm, {
  Name = "Auto Farm Boss Selected",
  Callback = function(Value)
    getgenv().AutoFarmBossSelected = Value
    AutoFarmBossSelected()
  end
})

AddToggle(MainFarm, {
  Name = "Take Quest",
  Default = true,
  Callback = function(Value)
    getgenv().TakeQuestBoss = Value
  end
})

AddSection(FruitAndRaid, {"Fruits"})

AddToggle(FruitAndRaid, {
  Name = "Auto Store Fruits",
  Callback = function(Value)
    getgenv().AutoStoreFruits = Value
    task.spawn(function()
      while getgenv().AutoStoreFruits do task.wait()
        pcall(function()
          local plrBag = Player.Backpack
          local plrChar = Player.Character
          for _,Fruit in pairs(plrChar:GetChildren()) do
            if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
            end
          end
          for _,Fruit in pairs(plrBag:GetChildren()) do
            if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
            end
          end
        end)
      end
    end)
  end
})

AddToggle(FruitAndRaid, {
  Name = "Teleport to Fruits",
  Callback = function(Value)
    getgenv().TeleportToFruit = Value
    TeleportToFruit()
  end
})

AddToggle(FruitAndRaid, {
  Name = "Auto random Fruit",
  Callback = function(Value)
    getgenv().AutoRandomFruit = Value
    task.spawn(function()
      while getgenv().AutoRandomFruit do task.wait()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
      end
    end)
  end
})

Raids_Chip = {
  "Flame", 
	"Ice", 
	"Quake", 
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Buddha",
	"Sand"
}

AddSection(FruitAndRaid, {"Raid"})
if Sea1 then AddTextLabel(FruitAndRaid, {"Only on Sea 2 and 3"})
elseif Sea2 or Sea3 then
  
  AddButton(FruitAndRaid, {
    Name = "Buy Raid Chip",
    Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", getgenv().SelectRaidChip)
    end
  })
  
  AddToggle(FruitAndRaid, {
    Name = "Auto Buy Raid Chip",
    Callback = function(Value)
      getgenv().AutoRaidChip = Value
      task.spawn(function()
        while getgenv().AutoRaidChip do task.wait()
          pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", getgenv().SelectRaidChip)
          end)
        end
      end)
    end
  })
  
  AddDropdown(FruitAndRaid, {
    Name = "select the Raid",
    Options = Raids_Chip,
    Callback = function(Value)
      getgenv().SelectRaidChip = Value
    end
  })
  
  AddToggle(FruitAndRaid, {
    Name = "Auto Next island",
    Callback = function(Value)
      getgenv().RaidAutoNextIsland = Value
      task.spawn(function()
        local Islands = workspace:WaitForChild("_WorldOrigin", 9e9):WaitForChild("Locations", 9e9)
        while getgenv().RaidAutoNextIsland do task.wait()pcall(function()EquipTool()end)
          local plrChar = Player and Player.Character and Player.Character.PrimaryPart
          if plrChar and Player.PlayerGui.Main.Timer.Visible then
            local Island1 = Islands:FindFirstChild("Island 1")
            local Island2 = Islands:FindFirstChild("Island 2")
            local Island3 = Islands:FindFirstChild("Island 3")
            local Island4 = Islands:FindFirstChild("Island 4")
            local Island5 = Islands:FindFirstChild("Island 5")
            
            if Island4 and Island5 then
              if (Island5.Position - Island4.Position).Magnitude < 2000 then
                PlayerTP(Island5.CFrame * CFrame.new(0, 70, 70))else Island5:Destroy()
              end
            elseif Island3 and Island4 then
              if (Island4.Position - Island3.Position).Magnitude < 2000 then
                PlayerTP(Island4.CFrame * CFrame.new(0, 70, 70))else Island4:Destroy()
              end
            elseif Island2 and Island3 then
              if (Island3.Position - Island2.Position).Magnitude < 2000 then
                PlayerTP(Island3.CFrame * CFrame.new(0, 70, 70))else Island3:Destroy()
              end
            elseif Island1 and Island2 then
              if (Island2.Position - Island1.Position).Magnitude < 2000 then
                PlayerTP(Island2.CFrame * CFrame.new(0, 70, 70))else Island2:Destroy()
              end
            elseif Island1 then
              if (Island1.Position - plrChar.Position).Magnitude < 2000 then
                PlayerTP(Island1.CFrame * CFrame.new(0, 70, 70))else Island1:Destroy()
              end
            end
          end
        end
      end)
    end
  })
  
  AddToggle(FruitAndRaid, {
    Name = "Auto Start Raid",
    Callback = function(Value)
			getgenv().AutoStartRaid = Value
			task.spawn(function()
        local Islands = workspace:WaitForChild("_WorldOrigin", 9e9):WaitForChild("Locations", 9e9)
        while getgenv().AutoStartRaid do task.wait()
        local Island1 = Islands:FindFirstChild("Island 1")
          if not Player.PlayerGui.Main.Timer.Visible then
            pcall(function()
              if not Island1 and Player.Backpack:FindFirstChild("Special Microchip") or Player.Character:FindFirstChild("Special Microchip") then
                if Sea2 then
                  fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif Sea3 then
                  fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                end
              end
            end)
          end
        end
      end)
    end
  })
  
  AddToggle(FruitAndRaid, {
    Name = "Kill Aura",
    Callback = function(Value)
      getgenv().AutoKillAura = Value
      AutoKillAura()
    end
  })
  
  AddToggle(FruitAndRaid, {
    Name = "Auto Awake",
    Callback = function(Value)
      getgenv().AutoAwake = Value
      task.spawn(function()
        while getgenv().AutoAwake do task.wait()
          pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
          end)
        end
      end)
    end
  })

end


if Sea1 then
  AddSection(QuestsTabs, {"Second Sea"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Second Sea",
    Callback = function(Value)
      getgenv().AutoSecondSea = Value
      AutoSecondSea()
    end
  })
  
  AddSection(QuestsTabs, {"Saber"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Unlock Saber",
    Callback = function(Value)
      getgenv().AutoUnlockSaber = Value
      AutoUnlockSaber()
    end
  })
  
  AddSection(QuestsTabs, {"Saw Boss"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Saw Sword",
    Callback = function(Value)
      getgenv().AutoSawBoss = Value
      AutoSawBoss()
    end
  })
  
  AddSection(QuestsTabs, {"God Boss"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Pole V1",
    Callback = function(Value)
      getgenv().AutoEnelBossPole = Value
      AutoEnelBossPole()
    end
  })
  
elseif Sea2 then
  AddSection(QuestsTabs, {"Third Sea"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Third Sea",
    Callback = function(Value)
      getgenv().AutoThirdSea = Value
      AutoThirdSea()
    end
  })
  
  AddSection(QuestsTabs, {"Bartilo Quest"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Bartilo Quest",
    Callback = function(Value)
      getgenv().AutoBartiloQuest = Value
      AutoBartiloQuest()
    end
  })
  
  AddSection(QuestsTabs, {"Rengoku"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Rengoku",
    Default = false,
    Callback = function(Value)
      getgenv().AutoRengoku = Value
      AutoRengoku()
    end
  })
  
  AddSection(QuestsTabs, {"Legendary Sword"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Buy Legendary Sword",
    Default = false,
    Callback = function(Value)
      getgenv().AutoLegendarySword = Value
      task.spawn(function()
        while getgenv().AutoLegendarySword do task.wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", tostring(math.random(1, 3)))
        end
      end)
    end
  })
  
  AddToggle(QuestsTabs, {
    Name = "Auto Buy True Triple Katana",
    Default = false,
    Callback = function(Value)
      getgenv().AutoTTK = Value
      task.spawn(function()
        while getgenv().AutoTTK do task.wait()
          local args = {[1] = "MysteriousMan",[2] = "1"}
          game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9)CommF_:InvokeServer("MysteriousMan", tostring(math.random(1, 2)))
        end
      end)
    end
  })
  
  AddSection(QuestsTabs, {"Race"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Evo Race V2",
    Default = false,
    Callback = function(Value)
      getgenv().AutoRaceV2 = Value
      AutoRaceV2()
    end
  })
  
  AddSection(QuestsTabs, {"Cursed Captain"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Cursed Captain",
    Callback = function(Value)
      getgenv().AutoCursedCaptain = Value
      AutoCursedCaptain()
    end
  })
  
  AddSection(QuestsTabs, {"Dark Beard"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Dark Beard",
    Callback = function(Value)
      getgenv().AutoDarkbeard = Value
      AutoDarkbeard()
    end
  })
  
  AddSection(QuestsTabs, {"Law"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Buy Law Chip",
    Callback = function(Value)
      getgenv().AutoBuyLawChip = Value
      task.spawn(function()
        while getgenv().AutoBuyLawChip do task.wait()
          if not VerifyNPC("Order") and not VerifyTool("Microchip") then
					  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
					end
        end
      end)
    end
  })
  
  AddToggle(QuestsTabs, {
    Name = "Auto Start Law Raid",
    Callback = function(Value)
      getgenv().AutoStartLawRaid = Value
      task.spawn(function()
        while getgenv().AutoStartLawRaid do task.wait()
          if not VerifyNPC("Order") and VerifyTool("Microchip") then
            pcall(function()
					    fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
					  end)
					end
        end
      end)
    end
  })
  
elseif Sea3 then
  AddSection(QuestsTabs, {"Elite Hunter"})
  
  local LabelElite = AddTextLabel(QuestsTabs, {"Elite Stats : not Spawn"})
  local LabelElit3 = AddTextLabel(QuestsTabs, {"Elite Hunter progress : 0"})
  
  task.spawn(function()
    while task.wait() do
      pcall(function()
        if VerifyNPC("Urban") or VerifyNPC("Deandre") or VerifyNPC("Diablo") then
          SetLabel(LabelElite, "Elite Stats : Spawned")
        else
          SetLabel(LabelElite, "Elite Stats : not Spawn")
        end
      end)
    end
  end)
  
  task.spawn(function()
    while task.wait(1) do
      SetLabel(LabelElit3, "Elite Hunter progress : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
    end
  end)
  
  AddToggle(QuestsTabs, {
    Name = "Auto Elite Hunter",
    Default = false,
    Callback = function(Value)
      getgenv().AutoEliteHunter = Value
      AutoEliteHunter()
    end
  })
  
  AddToggle(QuestsTabs, {
    Name = "Auto Collect Yama",
    Callback = function(Value)
      getgenv().AutoCollectYama = Value
      task.spawn(function()
        while getgenv().AutoCollectYama do task.wait()
          pcall(function()
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
              fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
            end
          end)
        end
      end)
    end
  })
  
  AddSection(QuestsTabs, {"Cake Prince"})
  
  local CakeLabel = AddTextLabel(QuestsTabs, {"Cake Prince Stats : 0"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Cake Prince + Dough King",
    Default = false,
    Callback = function(Value)
      getgenv().AutoCakePrince = Value
      AutoCakePrince()
    end
  })
  
  task.spawn(function()
    while task.wait(1) do
      local EnemiesCake = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
      SetLabel(CakeLabel, "Cake Prince Stats : " .. string.gsub(EnemiesCake, "%D", ""))
    end
  end)
  
  AddSection(QuestsTabs, {"Rip Indra"})
  
  local function GetButton()
    local Summoner = workspace.Map["Boat Castle"].Summoner
    local Circle = Summoner:FindFirstChild("Circle")
    if Circle then
      for _,part in pairs(Circle:GetChildren()) do
        if part and part.Name == "Part" and part:FindFirstChild("Part") and part.Part.BrickColor ~= BrickColor.new("Lime green") then
          return part.Part
        end
      end
    end
  end
  
  AddToggle(QuestsTabs, {
    Name = "Auto Active Button Haki Color",
    Default = false,
    Callback = function(Value)
      getgenv().RipIndraLegendaryHaki = Value
      task.spawn(function()
        while getgenv().RipIndraLegendaryHaki do task.wait()
          local plrChar = Player and Player.Character and Player.Character.PrimaryPart
          if (plrChar.Position - Vector3.new(-5415, 314, -2212)).Magnitude < 5 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
          elseif (plrChar.Position - Vector3.new(-4972, 336, -3720)).Magnitude < 5 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
          elseif (plrChar.Position - Vector3.new(-5420, 1089, -2667)).Magnitude < 5 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
          end
        end
      end)
      task.spawn(function()
        while getgenv().RipIndraLegendaryHaki do task.wait()
          local plrPP = Player and Player.Character and Player.Character.PrimaryPart
          
          if not getgenv().AutoFarm_Level and not getgenv().AutoFarmBone and not getgenv().AutoCakePrince then
            if plrPP and (plrPP.Position - Vector3.new(-5323, 424, -2659)).Magnitude > 2500 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5092, 315, -3130))
            elseif GetButton() then
              PlayerTP(GetButton().CFrame)
            else
              PlayerTP(CFrame.new(-5119, 315, -2964))
            end
          end
        end
      end)
    end
  })
  
  AddToggle(QuestsTabs, {
    Name = "Auto Rip Indra",
    Callback = function(Value)
      getgenv().AutoRipIndra = Value
      AutoRipIndra()
    end
  })
  
  AddSection(QuestsTabs, {"Musketeer Hat"})
  
  AddToggle(QuestsTabs, {
    Name = "Auto Musketeer Hat",
    Callback = function(Value)
      getgenv().AutoMusketeerHat = Value
      AutoMusketeerHat()
    end
  })
  
  AddSection(QuestsTabs, {"Mirage Island [BETA]"})
  
  local MirageLabel = AddTextLabel(QuestsTabs, {"Mirage Island Stats : Not Spawned"})
  task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    while task.wait(1) do
      if Map:FindFirstChild("MysticIsland") then
        SetLabel(MirageLabel, "Mirage Island Stats : Spawned")
      else
        SetLabel(MirageLabel, "Mirage Island Stats : Not Spawned")
      end
    end
  end)
  
  AddToggle(QuestsTabs, {
    Name = "Teleport To Mirage Island",
    Callback = function(Value)
      getgenv().TeleportToMirage = Value
      task.spawn(function()
        local Map = workspace:WaitForChild("Map", 9e9)
        while getgenv().TeleportToMirage do task.wait()
          local Mirage = Map:FindFirstChild("MysticIsland")
          if Mirage and Mirage:FindFirstChild("HumanoidRootPart") then
            PlayerTP(Mirage.HumanoidRootPart.CFrame * CFrame.new(0, 500, -100))
          end
        end
      end)
    end
  })
end

AddSection(QuestsTabs, {"Haki Color"})

AddToggle(QuestsTabs, {
  Name = "Auto Buy Haki Color",
  Callback = function(Value)
    getgenv().AutoBuyHakiColor = Value
    task.spawn(function()
      while getgenv().AutoBuyHakiColor do task.wait()
        pcall(function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "1")
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "2")
        end)
      end
    end)
  end
})

AddSection(Teleport, {"Teleport to Sea"})

AddButton(Teleport, {
  Name = "Teleport to Sea 1",
  Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  end
})

AddButton(Teleport, {
  Name = "Teleport to Sea 2",
  Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  end
})

AddButton(Teleport, {
  Name = "Teleport to Sea 3",
  Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  end
})

AddSection(Teleport, {"Islands"})

local IslandsList = {}

if Sea1 then
  IslandsList = {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City"
  }
elseif Sea2 then
  IslandsList = {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
  }
elseif Sea3 then
  IslandsList = {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky",
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Candy Cane Island",
    "Tiki Outpost"
  }
end

local function TeleportToIsland()
  getgenv().TeleportToIsland = true
  local Island = getgenv().TeleportIslandSelect
  local RemoteTP = game:GetService("ReplicatedStorage").Remotes.CommF_
  -- Sea 1 Teleports
  if Island == "Middle Town" then
    PlayerTP(CFrame.new(-688, 15, 1585), true)
  elseif Island == "MarineFord" then
    PlayerTP(CFrame.new(-4810, 21, 4359), true)
  elseif Island == "Marine" then
    PlayerTP(CFrame.new(-2728, 25, 2056), true)
  elseif Island == "WindMill" then
    PlayerTP(CFrame.new(889, 17, 1434), true)
  elseif Island == "Desert" then
    PlayerTP(CFrame.new(), true)
  elseif Island == "Snow Island" then
    PlayerTP(CFrame.new(1298, 87, -1344), true)
  elseif Island == "Pirate Village" then
    PlayerTP(CFrame.new(-1173, 45, 3837), true)
  elseif Island == "Jungle" then
    PlayerTP(CFrame.new(-1614, 37, 146), true)
  elseif Island == "Prison" then
    PlayerTP(CFrame.new(4870, 6, 736), true)
  elseif Island == "Under Water Island" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820))
  elseif Island == "Colosseum" then
    PlayerTP(CFrame.new(-1535, 7, -3014), true)
  elseif Island == "Magma Village" then
    PlayerTP(CFrame.new(), true)
  elseif Island == "Sky Island 1" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(-4652, 873, -1754))task.wait(1)PlayerTP(CFrame.new(-4814, 718, -2551), true)
  elseif Island == "Sky Island 2" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(-4652, 873, -1754))
  elseif Island == "Sky Island 3" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(-7895, 5547, -380))
  -- Sea 3 Teleports
  elseif Island == "Mansion" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(-12471, 374, -7551))
  elseif Island == "Port Town" then
    PlayerTP(CFrame.new(-334, 7, 5300), true)
  elseif Island == "Great Tree" then
    
  elseif Island == "Castle On The Sea" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(-5073, 315, -3153))
  elseif Island == "Hydra Island" then
    RemoteTP:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282))
  elseif Island == "Great Tree" then
    
  elseif Island == "Floating Turtle" then
    PlayerTP(CFrame.new(-12528, 332, -8658), true)
  elseif Island == "Haunted Castle" then
    PlayerTP(CFrame.new(-9517, 142, 5528), true)
  elseif Island == "Ice Cream Island" then
    
  elseif Island == "Peanut Island" then
    
  elseif Island == "Cake Island" then
    PlayerTP(CFrame.new(-1897, 14, -11576), true)
  elseif Island == "Candy Cane Island" then
    PlayerTP(CFrame.new(-1038, 10, -14076), true)
  end
  getgenv().TeleportToIsland = false
end

AddDropdown(Teleport, {
  Name = "Select Island",
  Options = IslandsList,
  Default = "",
  Callback = function(Value)
    getgenv().TeleportIslandSelect = Value
  end
})

AddButton(Teleport, {
  Name = "Teleport To Island",
  Callback = function()
    TeleportToIsland()
  end
})

AddButton(Teleport, {
  Name = "Stop Teleport",
  Callback = function()
    getgenv().TeleportToIsland = false
  end
})

AddSection(Misc, {"Configs"})

AddSlider(Misc, {
  Name = "Farm Distance",
  MinValue = 5,
  MaxValue = 50,
  Default = 20,
  Increase = 1,
  Callback = function(Value)
    getgenv().FarmPos = Vector3.new(0, Value or 15, Value or 10)
  end
})

AddSlider(Misc, {
  Name = "Auto Click Delay",
  MinValue = 0,
  MaxValue = 2,
  Default = 0.1,
  Increase = 0.05,
  Callback = function(Value)
    getgenv().AutoClickDelay = Value
  end
})

AddToggle(Misc, {
  Name = "Fast Attack",
  Default = true,
  Callback = function(Value)
    getgenv().FastAttack = Value
    task.spawn(function()FastAttack()end)
  end
})

AddToggle(Misc, {
  Name = "Increase Attack Distance",
  Default = true,
  Callback = function(Value)
    getgenv().AttackDistance = Value
    task.spawn(function()AttackDistance()end)
  end
})

AddToggle(Misc, {
  Name = "Auto Click",
  Default = true,
  Callback = function(Value)
    getgenv().AutoClick = Value
  end
})

AddToggle(Misc, {
  Name = "Bring Mobs",
  Default = true,
  Callback = function(Value)
    getgenv().BringMobs = Value
  end
})

AddToggle(Misc, {
  Name = "Auto Haki",
  Default = true,
  Callback = function(Value)
    getgenv().AutoHaki = Value
  end
})

AddSection(Misc, {"Codes"})

AddButton(Misc, {
  Name = "Redeem all Codes",
  Callback = function()
    local Codes = {
     "SECRET_ADMIN",
     "EXP_5B",
     "CONTROL",
     "UPDATE11",
     "XMASEXP",
     "1BILLION",
     "ShutDownFix2",
     "UPD14",
     "STRAWHATMAINE",
     "TantaiGaming",
     "Colosseum",
     "Axiore",
     "Sub2Daigrock",
     "Sky Island 3",
     "Sub2OfficialNoobie",
     "SUB2NOOBMASTER123",
     "THEGREATACE",
     "Fountain City",
     "BIGNEWS",
     "FUDD10",
     "SUB2GAMERROBOT_EXP1",
     "UPD15",
     "2BILLION",
     "UPD16",
     "3BVISITS",
     "Starcodeheo",
     "Magicbus",
     "JCWK",
     "Bluxxy",
     "Sub2Fer999",
     "Enyu_is_Pro",
     "KITT_RESET",
     "DRAGONABUSE",
     "Sub2CaptainMaui",
     "DEVSCOOKING",
     "kittgaming",
     "Sub2Fer999",
     "Enyu_is_Pro",
     "Magicbus",
     "JCWK",
     "Starcodeheo",
     "Bluxxy",
     "fudd10_v2",
     "SUB2GAMERROBOT_EXP1",
     "Sub2NoobMaster123",
     "Sub2UncleKizaru",
     "Sub2Daigrock",
     "Axiore",
     "TantaiGaming",
     "StrawHatMaine"
    }
    for _,v in pairs(Codes) do
      game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
    end
  end
})

AddSection(Misc, {"Team"})

AddButton(Misc, {Name = "Join Pirates Team",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
end})
AddButton(Misc, {Name = "Join Marines Team",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
end})

AddSection(Misc, {"Menu"})

AddButton(Misc, {Name = "Devil Fruit Shop",Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
	game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end})
AddButton(Misc, {Name = "Titles",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
  game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end})
AddButton(Misc, {Name = "Haki Color",Callback = function()
  game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end})

AddSection(Misc, {"Others"})

AddToggle(Misc, {
  Name = "Walk On Water",
  Default = true,
  Callback = function(Value)
    getgenv().WalkOnWater = Value
    task.spawn(function()
      local Map = workspace:WaitForChild("Map", 9e9)
      while getgenv().WalkOnWater do task.wait()
        pcall(function()
          Map:WaitForChild("WaterBase-Plane", 9e9).Size = Vector3.new(1000, 115, 1000)
        end)
      end
      Map:WaitForChild("WaterBase-Plane", 9e9).Size = Vector3.new(1000, 80, 1000)
    end)
  end
})

AddSection(Shop, {"Fighting Style"})

AddButton(Shop, {Name = "Buy Black Leg",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end})
AddButton(Shop, {Name = "Buy Electro",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end})
AddButton(Shop, {Name = "Buy Fishman Karate",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end})
AddButton(Shop, {Name = "Buy Dragon Claw",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end})
AddButton(Shop, {Name = "Buy Superhuman",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end})
AddButton(Shop, {Name = "Buy Death Step",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end})
AddButton(Shop, {Name = "Buy Sharkman Karate",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end})
AddButton(Shop, {Name = "Buy Electric Claw",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end})
AddButton(Shop, {Name = "Buy Dragon Talon",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end})
AddButton(Shop, {Name = "Buy GodHuman",Callback = function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end})
