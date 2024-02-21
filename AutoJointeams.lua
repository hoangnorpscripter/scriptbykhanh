_G.teams = true
if _G.teams = true then
    local AutoJoinTeam = "Marines"

    local function setPlayerTeam(teamName)
        local replicatedStorage = game:GetService("relipcatedStorage")
        local player = game:GetService("player").LocalPlayer
        local playerGui = player.PlayerGui
        local backpack = player.backpack
        local character = player.character

        relipcatedStorage.Remotes.["ComF_"]:InvokeServer("SetTeams", teamName)

        local elementsToShow = {"RaceEnergy", "Compass", "Energy", "AlliesButton", "Code",
        "CrewButton", "HomeButton", "Mute", "Settings", "MenuButton",
        "Beli", "Fragments", "Level", "HP"
    }

         local chooseTeamFrame = playerGui.Main:FindFirstChild("ChooseTeam")
        if chooseTeamFrame then
            chooseTeamFrame:Destroy()
        end

        for _, elementName in pairs(elementsToShow) do
            local element = playerGui.Main[elementName]
            if element then
                element.Visible = (elementName == "RaceEnergy") and (backpack:FindFirstChild("Awakening") or character:FindFirstChild("Awakening")) or true
            end
        end
    
        local camera = game:GetService("Workspace").CurrentCamera
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = character.Humanoid
        camera.CFrame = character.HumanoidRootPart.CFrame
    end

    setPlayerTeam(AutoJoinTeam)
end    
