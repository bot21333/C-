--local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bot21333/C-/main/C__%23%23.lua"))()
local library =  loadstring(Game:HttpGet"https://raw.githubusercontent.com/bot21333/C-/main/BotGUI.lua")()

--->[Place Id Check]<---

local id = game.PlaceId
if id == 2753915549 then
World1 = true
OldWorld = true
elseif id == 4442272183 then
World2 = true
NewWorld = true
elseif id == 7449423635 then
World3 = true
ThreeWorld = true
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/bot21333/C-/main/QuestC_.lua"))()

_G.Settings = {
    AutoFarm = false,
    DoubleQuest = false,
    NeareastFarm = false,
    Mirage = false ,
    MirageHop = false,
    Auto_Gear = false,
    TeleportGear = false,
    AutoNewWorld = false,
    TweenToFruitSpawn = false,
    AutoSaber = false,
    AutoPole = false,
    TeleportIsland = false,

--[World 2]
    AutoThirdSea = false,
    AutoBartiloQuest = false,
    Auto_Evo_Race_V2 = false,
    AutoDarkCoat = false,
    AutoSwanGlasses = false,
    AutoTrueTriplKatana = false,
    AutoRengoku = false,
    AutoEctoplasm = false,
    AutoFactory = false,

    --[World 3]
    AutoRainbowHaki = false,
    AutoBuyEnchanmentHakiHop = false,
    AutoBuyLegendarySwordHop = false,
    AutoEliteHunter = false,
    AutoMusketeerHat = false,
    AutoBuddySword = false,
    AutoFarmBone = false,
    SpawnBossHallow = false,
    AutoKenHakiV2 = false,
    AutoObservation = false,
    AutoObservation_Hop = false,
    AutoGodHuman = false,
    AutoCavander = false,
    AutoCursedDualKatana = false,
    AutoYamaSword = false,
    AutoTushitaSword = false,
    AutoSerpentBow = false,
    AutoDarkDagger = false,
    AutoCakePrince = false,
    AutoDoughV2 = false,
    AutoHolyTorch = false,
    AutoBuddySwords = false,
    AutoFarmBossHallow = false,
    MobAura = false,
    YamaQuest2 = false,
    YamaQuest1 = false,
    Auto_Cursed_Dual_Katana = false,
    Tushita_Quest2 = false,
    Tushita_Quest1 = false,
    TeleporttoSeaBeast = false,
    AutoEvent = false,
    TPTOBOAT = false,
    AutoFarmMaterial = false,
    Teleporttop = false,
    AutoFarmChest = false,

    --[Boss]
    AutoAllBoss = false,
    AutoBossSelect = false,
    AutoFarmBoss = false,

    --[Mastery]
    AutoFarmFruitMastery = false,
    AutoFarmGunMastery = false,
    FarmMasterySwordList = false,

    --[Raids]
    AutoRaids = false,
    AutoNextPlace = false
}

-- [Save Settings]

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("SpeedHubX_Save_V2") then
            makefolder("SpeedHubX_Save_V2")
        end
        if not isfolder("SpeedHubX_Save_V2/Blox Fruits/") then
            makefolder("SpeedHubX_Save_V2/Blox Fruits/")
        end
        if not isfile("SpeedHubX_Save_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("SpeedHubX_Save_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("SpeedHubX_Save_V2/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
            for i, v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return warn("Status : Undetected Executor")
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("SpeedHubX_Save_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("VectorHub/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i, v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("SpeedHubX_Save_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status : Undetected Executor")
    end
end

LoadSettings()

local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
repeat wait(0) until game:IsLoaded()
	
	if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
		repeat wait()
			if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
				if _G.Team == "Pirate" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				elseif _G.Team == "Marine" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				else
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				end
			end
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
	end

--->[Functions Equip Weapon]<---

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end

function EquipWeaponSword()
pcall(function()
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == "Sword" and v:IsA('Tool') then
        local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
    end
end
end)
end

-- [Body Gyro]
task.spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        --[World 1]
        if _G.AutoFarm or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or
        _G.AutoSaber or _G.AutoPole or  _G.TeleportIsland or
        --[World 2]
        _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2  or _G.AutoDarkCoat or _G.AutoSwanGlasses or
        _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or
        _G.AutoFactory or _G.AutoKillPiranha or
        --[World 3]
        _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or
        _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation  or _G.AutoGodHuman or _G.AutoCavander or
        _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or
        _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or
        _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or _G.AutoTerrorshark or
        Tushita_Quest2 or Tushita_Quest1 or
        _G.TeleporttoSeaBeast  or _G.TPTOBOAT or 
        Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or
        --[Boss]
        _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss  or
        --[Mastery]
        _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or
        --[Raids]
        _G.AutoRaids or _G.AutoNextPlace
        then
            if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
                local Highlight = Instance.new("Highlight")
                Highlight.FillColor = Color3.new(0,0,0)
                Highlight.OutlineColor = Color3.new(0,0,0)
                Highlight.Parent = game.Players.LocalPlayer.Character;
                end
            if syn then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                end
            else
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        end
                        local BodyVelocity = Instance.new("BodyVelocity")
                        BodyVelocity.Name = "BodyVelocity1"
                        BodyVelocity.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                        BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        else
            game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
            end
        end
    end)
    end)
    end)
    
    spawn(function()
    while wait(.1) do
    pcall(function()
        if _G.AutoFarm or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or
        _G.AutoSaber or _G.AutoPole or  _G.TeleportIsland or
        --[World 2]
        _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2 or _G.AutoDarkCoat or _G.AutoSwanGlasses or
        _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or
        _G.AutoFactory or _G.AutoKillPiranha or
        --[World 3]
        _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or
        _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation  or _G.AutoGodHuman or _G.AutoCavander or
        _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or
        _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or
        _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or _G.AutoTerrorshark or
        Tushita_Quest2 or Tushita_Quest1 or
        _G.TeleporttoSeaBeast  or
        _G.TPTOBOAT or 
        Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or
        --[Boss]
        _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss  or
        --[Mastery]
        _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or
        --[Raids]
        _G.AutoRaids or _G.AutoNextPlace
    then
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                wait(5)
            end
            PIO = false
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                local L_1 = Instance.new("BodyVelocity")
                L_1.Name = "BodyGyrozz"
                L_1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                L_1.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
                L_1.Velocity = Vector3.new(0, 0, 0)
            end
        elseif PIO == false then
            for i, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
                if v.Name == "BodyGyrozz" then
                    v:Destroy()
                    PIO = true
                end
            end
        end
    end)
    end
    end)
    
    spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or
    _G.AutoSaber or _G.AutoPole or  _G.TeleportIsland or
    --[World 2]
    _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2 or _G.AutoDarkCoat or _G.AutoSwanGlasses or
    _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or
    _G.AutoFactory or _G.AutoKillPiranha or
    --[World 3]
    _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or
    _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation  or _G.AutoGodHuman or _G.AutoCavander or
    _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or
    _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or
    _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or _G.AutoTerrorshark or
    Tushita_Quest2 or Tushita_Quest1 or
    _G.TeleporttoSeaBeast   or
    _G.TPTOBOAT or 
    Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or
    --[Boss]
    _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss  or
    --[Mastery]
    _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or
    --[Raids]
    _G.AutoRaids or _G.AutoNextPlace
    then
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
    end)
    end)
    
    function changestate()
    game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    end
    
    spawn(function()
    while task.wait() do
    pcall(function()
        if _G.AutoFarm or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or
            _G.AutoSaber or _G.AutoPole or  _G.TeleportIsland or
            --[World 2]
            _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2 or _G.AutoDarkCoat or _G.AutoSwanGlasses or
            _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or
            _G.AutoFactory or
            --[World 3]
            _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or
            _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation  or _G.AutoGodHuman or _G.AutoCavander or
            _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or
            _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or
            _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or
            Tushita_Quest2 or Tushita_Quest1 or
            _G.TeleporttoSeaBeast  or
            _G.TPTOBOAT or 
            Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or
            --[Boss]
            _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss  or
            --[Mastery]
            _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or
            --[Raids]
            _G.AutoRaids or _G.AutoNextPlace
    then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                local Noclip = Instance.new("BodyVelocity")
                Noclip.Name = "BodyClip"
                Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                Noclip.Velocity = Vector3.new(0, 0, 0)
            end
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
    end)
    end
    end)
    
    spawn(function() ------body velocity
    game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or
            _G.AutoSaber or _G.AutoPole or _G.TeleportIsland or
            --[World 2]
            _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2  or _G.AutoDarkCoat or _G.AutoSwanGlasses or
            _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or
            _G.AutoFactory or
            --[World 3]
            _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or
            _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation or _G.AutoGodHuman or _G.AutoCavander or
            _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or
            _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or
            _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or _G.Auto_Cursed_Dual_Katana or
            Tushita_Quest2 or Tushita_Quest1 or
            _G.TeleporttoSeaBeast  or
            _G.TPTOBOAT or 
            Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or
            --[Boss] 
            _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss  or
            --[Mastery]
            _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or
            --[Raids]
            _G.AutoRaids or _G.AutoNextPlace
        then
        if not game.Players.localPlayer.Character.HumanoidRootPart:FindFirstChild('bv') then
            local bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
            bv.Name = 'bv'
            bv.MaxForce = Vector3.new(100000, 100000, 100000)
            bv.Velocity = Vector3.new(0, 0, 0)
        end
    else
        if game.Players.localPlayer.Character.HumanoidRootPart:FindFirstChild('bv') then
            game.Players.localPlayer.Character.HumanoidRootPart:FindFirstChild('bv'):Destroy()
        end
    end
    end)
    end)
    
    -- [BringMon]
    task.spawn(function()
        while true do task.wait()
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end)
    
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if StartMagnet then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 2500 then
                            if InMyNetWork(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                --[[if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end]]
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                            end
                        end
                    end
                end
            end)
        end
    end)			
    function InMyNetWork(object)
        if isnetworkowner then
            return isnetworkowner(object)
        else
            if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
                return true
            end
            return false
        end
    end
    
    -- [Nostun]
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                end
            end)
        end)
    end
    
    -- [Deleted Effect Auto]
    
    spawn(function()
    while task.wait() do
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
        pcall(function()
            if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" then -- v.Name == ("SlashTail") then --or v.Name == ("Sounds")
                v:Destroy()
            end
        end)
    end
    end
    end)
    
    _G.DisDieffect = true
    if _G.DisDieffect then
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
    end
    end

    -- [Function (Abandoned Quest , Others)]

function Com(com, ...)
    local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm" .. com)
    if Remote:IsA("RemoteEvent") then
    Remote:FireServer(...)
    elseif Remote:IsA("RemoteFunction") then
    Remote:InvokeServer(...)
    end
    end
    
    -- [Tween Functions]
    
    local function GetIsLand(...)
    local RealtargetPos = { ... }
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
    for i, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
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
    
    local function toTarget(...)
    local RealtargetPos = { ... }
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
    if tween then tween:Cancel() end
    repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
    .Magnitude
    if Distance < 1000 then
    Speed = 315
    elseif Distance >= 1000 then
    Speed = 300
    end
    
    if _G.BypassTP then
    if Distance > 3000 and not AutoFarmMaterial and not _G.AutoGodHumanand and not _G.AutoRaids and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
        pcall(function()
            tween:Cancel()
            fkwarp = false
    
            if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                wait(.1)
                Com("F_", "TeleportToSpawn")
            elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                wait(0.1)
                repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
            else
                if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                    if fkwarp == false then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                    end
                    fkwarp = true
                end
                wait(.08)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                wait(.1)
                Com("F_", "SetSpawnPoint")
            end
            wait(0.2)
    
            return
        end)
    end
    end
    
    
    
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
    (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
    .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.new(0,0,0)
            Highlight.OutlineColor = Color3.new(0,0,0)
            Highlight.Parent = game.Players.LocalPlayer.Character;
            end
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
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
    
    local function Bypass(Position)
        local CFramePos = Position
        _G.StopTween =  true
        if W3 then
            if (CFramePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 4000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))
            end
        end
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        game.Players.LocalPlayer.Character.Head:Destroy()
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        local args = {
            [1] = "SetSpawnPoint"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        
        wait()
        local args = {
            [1] = "SetSpawnPoint"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        local args = {
            [1] = "SetSpawnPoint"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
        wait()
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
        wait()
        local args = {
            [1] = "SetLastSpawnPoint",
            [2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        local args = {
            [1] = "SetSpawnPoint"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
        wait()
        local args = {
            [1] = "SetLastSpawnPoint",
            [2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        local args = {
            [1] = "SetLastSpawnPoint",
            [2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait(0.5)
        local args = {
            [1] = "SetLastSpawnPoint",
            [2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        wait()
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        game.Players.LocalPlayer.Character.Head:Destroy()
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        wait()
        _G.StopTween = false
        return
    end
    
    TweeSpeed = 255
    getgenv().ToTarget = function(Point)
        TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if LocalPlayer.Character.Humanoid.Sit == true then 
            LocalPlayer.Character.Humanoid.Sit = false 
        end
        pcall(function() 
            tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
        end)
    
        if _G.StopTween == true then
            tot:Cancel()
            _G.Clip = false
        end
    
        if TweenPlay > 2000 and _G.Bypass_TP then
            pcall(function()
                pcall(function()
                    tot:Cancel()
                    fkwarp = false
    
                    if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(Point)) then 
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
                    elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(Point)) then
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        wait(0.1)
                        repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    else
                        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            if fkwarp == false then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
                            end
                            fkwarp = true
                        end
                        wait(.08)
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                    wait(0.2)
                    return
                end)
            end)
        end
    
        tot:Play()
        if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.new(0,0,0)
            Highlight.OutlineColor = Color3.new(0,0,0)
            Highlight.Parent = game.Players.LocalPlayer.Character
        end
        if TweenPlay < 250 then
            TweeSpeed = 352
        elseif TweenPlay < 500 then
            TweeSpeed = 395
        elseif TweenPlay >= 1000 then
            TweeSpeed = 255
        end
    
        if _G.StopTween then
            tot:Cancel()
            BringMobFarm = false
            UseSkillGun = false
            _G.UseSkill = false
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            tot:Play()
        end
    end
    
    function two(gotoCFrame) --- Tween
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
    pcall(function()
        tweenz:Cancel()
    end)
    game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
    else
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude / 325, Enum.EasingStyle.Linear)
        tween, err = pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
                local Highlight = Instance.new("Highlight")
                Highlight.FillColor = Color3.new(0,0,0)
                Highlight.OutlineColor = Color3.new(0,0,0)
                Highlight.Parent = game.Players.LocalPlayer.Character;
                end
        tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = gotoCFrame })
        tweenz:Play()
    end)
    if not tween then return err end
    end
    function _TweenCanCle()
    tweenz:Cancel()
    end
    end
    
    function TP(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function twoboat(gotoCFrame) --- Tween
    pcall(function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 10 then
    pcall(function()
        tweenz:Cancel()
    end)
    
    else
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude / 325, Enum.EasingStyle.Linear)
    tween, err = pcall(function()
        if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.new(0,0,0)
            Highlight.OutlineColor = Color3.new(0.0,0)
            Highlight.Parent = game.Players.LocalPlayer.Character;
            end
        tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = gotoCFrame })
        tweenz:Play()
    end)
    if not tween then return err end
    end
    function _TweenCanCle()
    tweenz:Cancel()
    end
    end
    
    
    
    --[[Function Hop]]
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
    local Site;
    if foundAnything == "" then
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
    foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
    local Possible = true
    ID = tostring(v.id)
    if tonumber(v.maxPlayers) > tonumber(v.playing) then
        for _,Existing in pairs(AllIDs) do
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
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
            end)
            wait(4)
        end
    end
    end
    end
    
    function Teleport()
    while task.wait() do
    pcall(function()
        TPReturner()
        if foundAnything ~= "" then
            TPReturner()
        end
    end)
    end
    end
    --[[Function Hop 2]]
    function Hop()
    repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
    local HttpService, TPService = game:GetService "HttpService", game:GetService "TeleportService";
    local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" ..
    game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    function joinNew()
    if not isfile('servers.sss') then
    writefile('servers.sss', HttpService:JSONEncode({}))
    end
    local dontJoin = readfile('servers.sss')
    dontJoin = HttpService:JSONDecode(dontJoin)
    
    for Index, Server in next, OtherServers["data"] do
    if Server ~= game.JobId then
        local j = true
        for a, c in pairs(dontJoin) do
            if c == Server.id then
                j = false
            end
        end
        if j then
            table.insert(dontJoin, Server["id"])
            writefile("servers.sss", HttpService:JSONEncode(dontJoin))
            wait()
            return Server['id']
        end
    end
    end
    end
    
    local server = joinNew()
    if not server then
    writefile("servers.sss", HttpService:JSONEncode({}))
    local server = joinNew()
    TPService:TeleportToPlaceInstance(game.PlaceId, server)
    else
    TPService:TeleportToPlaceInstance(game.PlaceId, server)
    end
    end
    
    --[[Function Click]]
    function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    end
    
    function GetFightingStyle(Style)
    ReturnText = ""
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        if v.ToolTip == Style then
            ReturnText = v.Name
        end
    end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
        if v.ToolTip == Style then
            ReturnText = v.Name
        end
    end
    end
    if ReturnText ~= "" then
    return ReturnText
    else
    return "Not Have"
    end
    end
    
    function CheckMasteryWeapon(NameWe, MasNum)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
    if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
        return "true DownTo"
    elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
        return "true UpTo"
    end
    end
    if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
    if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
        return "true DownTo"
    elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
        return "true UpTo"
    end
    end
    return "else"
    end
    
    --[GetWeaponInventory]
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
    
    -- [GetMaterial]
    
    function GetMaterial(matname)
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
    
    local AllMaterial
    if World1 then
    AllMaterial = {
    "Magma Ore",
    "Leather",
    "Scrap Metal",
    "Angel Wings",
    "Fish Tail"
    }
    elseif World2 then
    AllMaterial = {
    "Magma Ore",
    "Scrap Metal",
    "Radioactive Material",
    "Vampire Fang",
    "Mystic Droplet",
    }
    elseif World3 then
    AllMaterial = {
    "Mini Tusk",
    "Fish Tail",
    "Scrap Metal",
    "Dragon Scale",
    "Conjured Cocoa",
    "Demonic Wisp",
    "Gunpowder",
    }
    end
    
    table.sort(AllMaterial)
    
    -- [CustomFindFirstChild]
    
    local function CustomFindFirstChild(tablename)
    for i, v in pairs(tablename) do
    if game:GetService("Workspace").Enemies:FindFirstChild(v) then
        return true
    end
    end
    return false
    end
    
    -- [CheckMaterial]
    
    local function CheckMaterial(v1)
    if World1 then
    if (v1 == "Magma Ore") then
        MaterialMob = { "Military Soldier", "Military Spy" };
        CFrameMon = CFrame.new(-5815, 84, 8820);
    elseif ((v1 == "Leather") or (v1 == "Scrap Metal")) then
        MaterialMob = { "Brute"};
        CFrameMon = CFrame.new(-1145, 15, 4350);
    elseif (v1 == "Angel Wings") then
        MaterialMob = { "God's Guard"};
        CFrameMon = CFrame.new(-4698, 845, -1912);
    elseif (v1 == "Fish Tail") then
        MaterialMob = { "Fishman Warrior", "Fishman Commando" };
        CFrameMon = CFrame.new(61123, 19, 1569);
    end
    end
    if World2 then
    if (v1 == "Magma Ore") then
        MaterialMob = { "Magma Ninja" };
        CFrameMon = CFrame.new(-5428, 78, -5959);
    elseif (v1 == "Scrap Metal") then
        MaterialMob = { "Swan Pirate" };
        CFrameMon = CFrame.new(878, 122, 1235);
    elseif (v1 == "Radioactive Material") then
        MaterialMob = { "Factory Staff" };
        CFrameMon = CFrame.new(295, 73, -56);
    elseif (v1 == "Vampire Fang") then
        MaterialMob = { "Vampire" };
        CFrameMon = CFrame.new(-6033, 7, -1317);
    elseif (v1 == "Mystic Droplet") then
        MaterialMob = { "Water Fighter", "Sea Soldier" };
        CFrameMon = CFrame.new(-3385, 239, -10542);
    end
    end
    if World3 then
    if (v1 == "Mini Tusk") then
        MaterialMob = { "Mythological Pirate" };
        CFrameMon = CFrame.new(-13545, 470, -6917);
    elseif (v1 == "Fish Tail") then
        MaterialMob = { "Fishman Raider", "Fishman Captain" };
        CFrameMon = CFrame.new(-10993, 332, -8940);
    elseif (v1 == "Scrap Metal") then
        MaterialMob = { "Jungle Pirate" };
        CFrameMon = CFrame.new(-12107, 332, -10549);
    elseif (v1 == "Dragon Scale") then
        MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" };
        CFrameMon = CFrame.new(6594, 383, 139);
    elseif (v1 == "Conjured Cocoa") then
        MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief",
            "Candy Rebel" };
        CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
    elseif (v1 == "Demonic Wisp") then
        MaterialMob = { "Demonic Soul" };
        CFrameMon = CFrame.new(-9507, 172, 6158);
    elseif (v1 == "Gunpowder") then
        MaterialMob = { "Pistol Billionaire" };
        CFrameMon = CFrame.new(-469, 74, 5904);
    end
    end
    end
--->[ Window ]<---

local window = library:new({
   title = 'Speed Hub X',
    version = 'V. 2.0.0 [ Beta ] ',
  icon = library.Icons['SpeedHub-icon']
})

repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")

wait(0.1)

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

local Main = window:addPage({
    icon = "rbxassetid://7040391851", -- or roblox image id
    title = "Main",
})

local Item = window:addPage({
    icon = "rbxassetid://11446859498", -- or roblox image id
    title = "Item",
})

local Stats = window:addPage({
    icon = "rbxassetid://11447069304", -- or roblox image id
    title = "Stats",
})

local Teleport = window:addPage({
    icon = "rbxassetid://6035190846", -- or roblox image id
    title = "Teleport",
})

local DevilFruit = window:addPage({
    icon = "rbxassetid://130882646", -- or roblox image id
    title = "Devil Fruit",
})

local Raid = window:addPage({
    icon = "rbxassetid://7044284832", -- or roblox image id
    title = "Raid",
})

local Settings = window:addPage({
    icon = "rbxassetid://11446835336", -- or roblox image id
    title = "Settings",
})

    local Main_Section = Main:addSection({
        Divisions = 1,
    })

    local Item_Section = Item:addSection({
        Divisions = 1,
    })

    local Stats_Section = Stats:addSection({
        Divisions = 1,
    })

    local Teleport_Section = Teleport:addSection({
        Divisions = 1,
    })

    local Fruit_Section = DevilFruit:addSection({
        Divisions = 1,
    })

    local Raid_Section = Raid:addSection({
        Divisions = 1,
    })

    local Settings_Section = Settings:addSection({
        Divisions = 1,
    })

    Main_Section:addLabel({
        Section = 1,
        text = 'Home',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    Main_Section:addButton({
        Section = 1,
        title = "Get Copy Discord Link : https://discord.gg/bDYS8u2tGd",
        disabled = false,
        corner = 5,
        callback = function() 
            setclipboard("https://discord.gg/bDYS8u2tGd")
        end
    })

    Main_Section:addDualLabel({
        Section = 1,
        title = "Made By",
        description = "AhmadV10",
        corner = 5,
    })
    
    Main_Section:addLabel({
        Section = 1,
        text = 'Config',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

WeaponList = {"Melee","Sword", "Devil Fruit" }

    Main_Section:addDropdown({
        Section = 1,
        title = "Select Weapon",
        corner = 5,
        List = WeaponList,
	    keybind = false,
        multi = false,
        callback = function(v) 
            SelectWeapon = v
        end
    })

    task.spawn(function()
        while wait() do
        pcall(function()
            if SelectWeapon == "Melee" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif SelectWeapon == "Sword" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif SelectWeapon == "Devil Fruit" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            else
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

local MethodList = {"Upper","Behind","Below" }

if _G.Method == nil then
    _G.Method = "Upper"
    end
    if  _G.DistanceAutoFarm == nil then
        _G.DistanceAutoFarm = 30
end

Main_Section:addDropdown({
    Section = 1,
    title = "Select Farm Method",
    corner = 5,
    List = MethodList,
    keybind = false,
    multi = false,
    callback = function(v) 
        _G.Method = v
    end
})

FastAttack = {
    "Slow",
    "Fast",
    "Extreme",
}
Main_Section:addDropdown({
    Section = 1,
    title = "Select Attack Type",
    corner = 5,
    List = FastAttack,
    keybind = false,
    multi = false,
    callback = function(a) 
        SelectSpeedFast = a
        if SelectSpeedFast == "Slow" then
            _G.Fast_Delay = 0.055
        elseif SelectSpeedFast == "Fast" then
            _G.Fast_Delay = 0.025
        elseif SelectSpeedFast == "Extreme" then
            _G.Fast_Delay = 0
        end
    end
})

FastAttack = true
Main_Section:addCheckbox({
        Section = 1,
        default = true,
        corner = 5,
        title = "Fast Attack",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            FastAttack = value
        end
    })

Main_Section:addSlider({
    Section = 1,
    Max = 100,
    Min = 0,
    Default = 30,
    title = "Distance Farm",
    disabled = false,
    corner = 5,
    callback = function(v) 
        _G.DistanceAutoFarm = v
    end,
})

task.spawn(function()
    while task.wait(0) do
    pcall(function()
        if _G.Method == "Behind" then
            MethodFarm = CFrame.new(0, 0,  _G.DistanceAutoFarm)
        elseif _G.Method == "Below" then
            MethodFarm = CFrame.new(0, - _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(90), 0, 0)
        elseif _G.Method == "Upper" then
            MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(0), 0, 0)
        else
            MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0)
        end
    end)
    end
end)

Main_Section:addLabel({
    Section = 1,
    text = 'Farming',
    textsize = nil, -- auto
    textxalignment = Enum.TextXAlignment.Left,
    textyalignment = Enum.TextYAlignment.Center,
})


Main_Section:addCheckbox({
    Section = 1,
    default = _G.Settings.AutoFarm,
    corner = 5,
    title = "Auto Farm [ level ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoFarm = value
        _G.Settings.AutoFarm = value
        SaveSettings()
        _G.DoubleQuest = value
        getgenv().noclip = value
        if value == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end,
})

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.Settings.AutoFarm then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)

Main_Section:addCheckbox({
    Section = 1,
    default = _G.Settings.SafeMode,
    corner = 5,
    title = "Bypass Anti-Cheat",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.SafeMode = value
        _G.Settings.SafeMode = value
        SaveSettings()
       spawn(function()
            while _G.Settings.SafeMode do task.wait()
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    local HealthPercent = game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 100
                    if HealthPercent < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
                    end
                end
                task.wait()
            end
        end)
    end,
})


posrandom = 0
randomposenelfastfarm = 0
function AutoFarmLevel()
GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if _G.FastAutoFarm and (MyLevel >= 15 and MyLevel <= 300) then
    if _G.AutoHaki then
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    if MyLevel >= 15 and MyLevel <= 70 then
        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)).Magnitude <= 3500 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Royal Squad" then
                        if v.Humanoid.Health > 0 then
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                repeat task.wait()
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        if not FastAttack then
                                            Click()
                                        end
                                        if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                            _G.FastType = "Slow"
                                        else
                                            _G.FastType = "Fast"
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                until v.Humanoid.Health <= 0 or not _G.Settings.AutoFarm or not _G.FastAutoFarm
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    end
                end
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad") then
                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Squad").HumanoidRootPart.CFrame * MethodFarm)
            elseif game:GetService("Workspace").Enemies:FindFirstChild("Shanda") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "Shanda" then
                        if v.Humanoid.Health > 0 then
                            if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                repeat task.wait()
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.Humanoid:ChangeState(11)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        if not FastAttack then
                                            Click()
                                        end
                                        if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                            _G.FastType = "Slow"
                                        else
                                            _G.FastType = "Fast"
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                until v.Humanoid.Health <= 0 or not _G.Settings.AutoFarm or not _G.FastAutoFarm
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    end
                end
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * MethodFarm)
            end
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))			
        end
    elseif MyLevel >= 70 and MyLevel <= 300 then
        if GetQuest.Visible == false then
            if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
                Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
                if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                elseif World1 and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                elseif World1 and (Name == "Shanda" or Name == "Royal Squad"or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 8000 then
                    if Questtween then Questtween:Stop() end wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                    if Questtween then Questtween:Stop() end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                    if Questtween then Questtween:Stop() end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    wait(0.9)
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
                    else
                        toTarget(CFrameQuest)
                    end
                end
            end
        elseif GetQuest.Visible == true then
            local AllPlayersTableSkipFarm = {}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                table.insert(AllPlayersTableSkipFarm,v.Name)
            end
            if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                        if _G.Settings.AutoFarm and _G.FastAutoFarm and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat wait()
                                if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
                                elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                    end
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                                    EquipWeapon(_G.SelectWeapon)
                                    AttackPlayers()
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    wait(.1)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                            until not _G.Settings.AutoFarm or not _G.FastAutoFarm  or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                        end
                    end
                end
            else
                if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.Settings.AutoFarm and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if string.find(GetQuestTitle.Text, QuestName) then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                        FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if FarmtoTarget then FarmtoTarget:Stop() end
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        if not FastAttack then
                                            Click()
                                        end

                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                        FastAttack = true
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.AutoFarm or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                FastAttack = false
                                StartMagnet = false
                            else
                                Com("F_","AbandonQuest");
                            end
                        end
                    end
                else
                    StartMagnet = false
                    FastAttack = false
                    if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
                    Modstween = toTarget(CFrameMon.Position,CFrameMon)
                    if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                    elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                        if Modstween then Modstween:Stop() end wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                    elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                        if Modstween then 
                            Modstween:Stop()
                           spawn(function()
                                if posrandom <= 1 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 1 and posrandom <= 2 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 2 and posrandom <= 3 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                    posrandom = posrandom + 0.1
                                elseif posrandom >= 3 and posrandom <= 4  then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                    posrandom = posrandom + 0.1
                            elseif posrandom >=4 and posrandom <= 5 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                posrandom = 0
                            end
                        end)
                    end
                       -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                    end 
                end
            end
        end
    else
        if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
        if GetQuest.Visible == false then
            StartMagnet = false
            FastAttack = false
            Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Questtween then Questtween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Questtween then Questtween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Questtween then Questtween:Stop() end
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Questtween then Questtween:Stop() end
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                if Questtween then Questtween:Stop() end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                wait(1)
                if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                    Com("F_","StartQuest", QuestName, LevelQuest)
                    Com("F_","SetSpawnPoint")
                else
                    toTarget(CFrameQuest)
                end
            end
        elseif GetQuest.Visible == true then
            if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Settings.AutoFarm and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if string.find(GetQuestTitle.Text, NameMon) then
                            repeat task.wait()
                                FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    StartMagnet = true
                                    FastAttack = true
                                    if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                        _G.FastType = "Slow"
                                    else
                                        _G.FastType = "Fast"
                                    end
                                    if not FastAttack then
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                end
                            until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.AutoFarm or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                            StartMagnet = false
                            FastAttack = false
                        else
                            Com("F_","AbandonQuest");
                        end
                    end
                end
            else
                StartMagnet = false
                FastAttack = false
                if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
                Modstween = toTarget(CFrameMon.Position,CFrameMon)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                if Modstween then 
                    Modstween:Stop()
                   spawn(function()
                        if posrandom <= 1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 1 and posrandom <= 2 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 2 and posrandom <= 3 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 3 and posrandom <= 4  then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                            posrandom = posrandom + 0.1
                    elseif posrandom >=4 and posrandom <= 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                        posrandom = 0
                    end
                end)
            end
               -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                end 
            end
        end
    end
else
    if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest"); end
    if GetQuest.Visible == false then
        StartMagnet = false
        FastAttack = false
        Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
        if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
            if Questtween then Questtween:Stop() end wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
            if Questtween then Questtween:Stop() end wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
        elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
            if Questtween then Questtween:Stop() end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
            if Questtween then Questtween:Stop() end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
            if Questtween then Questtween:Stop() end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
            wait(1)
            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                Com("F_","StartQuest", QuestName, LevelQuest)
                Com("F_","SetSpawnPoint")
            else
                toTarget(CFrameQuest)
            end
        end
    elseif GetQuest.Visible == true then
        if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Settings.AutoFarm and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    if string.find(GetQuestTitle.Text, NameMon) then
                        repeat wait()
                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                if FarmtoTarget then FarmtoTarget:Stop() end
                                if _G.AutoHaki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)
                                end
                                StartMagnet = true
                                FastAttack = true
                                if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
                                    _G.FastType = "Slow"
                                else
                                    _G.FastType = "Fast"
                                end
                                if not FastAttack then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(16)
                                PosMon = v.HumanoidRootPart.CFrame
                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                            end
                        until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.AutoFarm or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                        StartMagnet = false
                        FastAttack = false
                    else
                        Com("F_","AbandonQuest");
                    end
                end
            end
        else
            StartMagnet = false
            FastAttack = false
            if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest"); end
            Modstween = toTarget(CFrameMon.Position,CFrameMon)
            if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
            elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                if Modstween then Modstween:Stop() end wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            elseif (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude <= 250 then
                if Modstween then 
                    Modstween:Stop()
                    spawn(function()
                        if posrandom <= 1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 1 and posrandom <= 2 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 2 and posrandom <= 3 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                            posrandom = posrandom + 0.1
                        elseif posrandom >= 3 and posrandom <= 4  then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                            posrandom = posrandom + 0.1
                    elseif posrandom >= 4 and posrandom <= 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                        posrandom = 0
                    end
                end)
            end
              --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            end 
        end
    end
end
end

task.spawn(function()
    while task.wait() do
    pcall(function()
        if _G.Settings.AutoFarm then
            if _G.DoubleQuest then
                if SubQuest == true then
                    if LevelFarm then
                        if tonumber(LevelFarm - 1) ~= 0 then
                            CheckOldQuest(tonumber(LevelFarm - 1))
                        end
                    end
                else
                    CheckQuest()
                    oldmob = Name
                    oldcheckquest = NameMon
                    spawn(function()
                        pcall(function()
                            if NoLoopDuplicate == false then
                                if CheckNotifyComplete() and _G.AutoFarm then
                                    NoLoopDuplicate = true
                                    while task.wait() do
                                        SubQuest = true
                                        if CheckNotifyComplete() or _G.AutoFarm == false then
                                            break;
                                        end
                                    end
                                    SubQuest = false
                                    NoLoopDuplicate = false
                                end
                            end
                        end)
                    end)
                    if SubQuest == true then
                        if LevelFarm then
                            if tonumber(LevelFarm - 1) ~= 0 then
                                CheckOldQuest(tonumber(LevelFarm - 1))
                            end
                        end
                    end
                end
            else
                CheckQuest()
            end
            AutoFarmLevel()
        end
    end)
    end
    end)


Main_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Farm Nearest [ Mobs ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.NeareastFarm = value
        _G.Settings.NeareastFarm = value
        SaveSettings() 
        if value == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    end,
})

spawn(function()
    while wait(.1) do
        if _G.Settings.NeareastFarm then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.SelectWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                v.Humanoid:ChangeState(16)
                                StartMagnet = true
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.NeareastFarm or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                        end
                    end
                end
            end)
        end
    end
end)

--[[CheckNotifyComplete]]
function CheckNotifyComplete()
for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
    if v.Name == "NotificationTemplate" then
        if string.lower(v.Text):find("quest completed") then
            pcall(function()
                v:Destroy()
            end)
            return true
        end
    end
end
return false
end

Main_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Farm [ Chest ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoFarmChest = value
        _G.Settings.AutoFarmChest = value
            SaveSettings()
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    end,
})



spawn(function() 
    while wait() do 
        if _G.Settings.AutoFarmChest or _G.AutoFarmChest then
            for _, child in ipairs(Workspace:GetChildren()) do
                if string.find(child.Name, "Chest") then
                    toTarget(child.CFrame * CFrame.new(0,0,0))
                    if (child.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                        UnEquipWeapon(_G.SelectWeapon)
                    else
                        EquipWeapon(_G.SelectWeapon)
                    end
                    end
                end
            end
        end
    end)
    Main_Section:addLabel({
        Section = 1,
        text = 'Mirage Island',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    Main_Section:addButton({
        Section = 1,
        title = "Check Full Moon [ Notification ]",
        disabled = false,
        corner = 5,
        callback = function() 
            if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 100%",Icon = "rbxassetid://15511158491",Duration = 1})

            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 75%",Icon = "rbxassetid://15511158491",Duration = 1})

            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 50%",Icon = "rbxassetid://15511158491",Duration = 1})

            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 25%",Icon = "rbxassetid://15511158491",Duration = 1})

            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then

                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 15%",Icon = "rbxassetid://15511158491",Duration = 1})
            else
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Full Moon 0%",Icon = "rbxassetid://15511158491",Duration = 1})
            end
        end,
    })
    Main_Section:addButton({
        Section = 1,
        title = "Check Mirage Island [ Notification ]",
        disabled = false,
        corner = 5,
        callback = function() 
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "🏝️ : Mirage Island is Spawning 🟢",Icon = "rbxassetid://15511158491",Duration = 1})
                else
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "🏝️ : Mirage Island Not Found ❌",Icon = "rbxassetid://15511158491",Duration = 1})
            end
        end,
    })
    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Mirage Island",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.Mirage = value
            _G.Settings.Mirage = value
            SaveSettings() 
            _G.AutoMirageIsland = value 
            if value == false then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
        })

        spawn(function()
            pcall(function()
                while task.wait() do
                    if _G.AutoMirageIsland or _G.Mirage then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            toTarget(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 300, 0))
                        end
                    end
                end
            end)
        end)

    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Teleport To Gear",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.Auto_Gear = value
            _G.Settings.Auto_Gear = value
                SaveSettings() 
            task.spawn(function()
                while task.wait(.01) do
                    if _G.Auto_Gear then
                        for i,v in pairs(game:GetService("Workspace").Map:FindFirstChild('MysticIsland'):GetChildren()) do
                            if v.Name == "Part" then
                                if v.ClassName == "MeshPart" then
                                    toTarget(v.CFrame)
                                    v.Transparency = 0
                                end
                            end
                        end
                    end
                end
            end)
        end
    })


    _G.MobHealth = 15
    Main_Section:addLabel({
        Section = 1,
        text = 'Mastery',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Fruit Mastery",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoFarmFruitMastery = value
            _G.Settings.AutoFarmFruitMastery = value
                    SaveSettings()
            if value == false then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
        })

        Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Gun Mastery",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoFarmGunMastery = value
                _G.Settings.AutoFarmGunMastery = value
                        SaveSettings()
            if value == false then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
            end
            })

            Main_Section:addSlider({
                Section = 1,
                Max = 100,
                Min = 0,
                Default = 15,
                title = "Kill At (%)",
                disabled = false,
                corner = 5,
                callback = function(x) 
                    _G.MobHealth = x
                end
            })

            Main_Section:addLabel({
                Section = 1,
                text = 'Skill',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,
            })

            _G.SkillZ = true
            Main_Section:addCheckbox({
                Section = 1,
                default = true,
                corner = 5,
                title = "Skill Z",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.SkillZ = value
                end
                })
            Main_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Skill X",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.SkillX = value
                end
                })
                Main_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Skill C",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        _G.SkillC = value
                    end
                    })
                    Main_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Skill V",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.SkillV = value
                        end
                        })
                        Main_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Skill F",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(value) 
                                _G.SkillF = value
                            end
                            })

                            task.spawn(function()
                                while task.wait() do
                                if _G.AutoFarmGunMastery  then
                                    CheckQuest()
                                end
                                end
                                end)
                                if _G.AutoFarmGunMastery or _G.AutoFarmFruitMastery then
                                    SelectSpeedFast = "Slow"
                                else
                                    SelectSpeedFast = "Fast"
                                end
                                task.spawn(function()
                                while task.wait() do
                                if _G.AutoFarmFruitMastery then
                                    CheckQuest()
                                end
                                end
                            end)

                            function GetAllMeleeFarm()
                                if SupComplete == false then
                                local args = {
                                    [1] = "BuySuperhuman"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                if CheckMasteryWeapon("Superhuman", 400) == "true UpTo" then
                                    SupComplete = true
                                end
                                end
                                wait(.5)
                                if EClawComplete == false then
                                local string_1 = "BuyElectricClaw";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                
                                if CheckMasteryWeapon("Electric Claw", 400) == "true UpTo" then
                                    EClawComplete = true
                                end
                                end
                                wait(.5)
                                if TalComplete == false then
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                
                                if CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo" then
                                    TalComplete = true
                                end
                                end
                                wait(.5)
                                if SharkComplete == false then
                                local args = {
                                    [1] = "BuySharkmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                
                                if CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo" then
                                    SharkComplete = true
                                end
                                end
                                wait(.5)
                                if DeathComplete == false then
                                local args = {
                                    [1] = "BuyDeathStep"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                
                                if CheckMasteryWeapon("Death Step", 400) == "true UpTo" then
                                    DeathComplete = true
                                end
                                end
                                if GodComplete == false then
                                local args = {
                                    [1] = "BuyGodhuman"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                
                                if CheckMasteryWeapon("Godhuman", 350) == "true UpTo" then
                                    GodComplete = true
                                end
                                end
                                end
                                
                                spawn(function()
                                    local gg = getrawmetatable(game)
                                    local old = gg.__namecall
                                    setreadonly(gg, false)
                                    gg.__namecall = newcclosure(function(...)
                                        local method = getnamecallmethod()
                                        local args = { ... }
                                        if tostring(method) == "FireServer" then
                                            if tostring(args[1]) == "RemoteEvent" then
                                                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                                                    if UseSkillMasteryDevilFruit and _G.AutoFarmFruitMastery then
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
                                    local gt = getrawmetatable(game)
                                    local old = gt.__namecall
                                    setreadonly(gt, false)
                                    gt.__namecall = newcclosure(function(...)
                                        local args = { ... }
                                        if getnamecallmethod() == "InvokeServer" then
                                            if _G.SelectWeaponGun then
                                                if _G.SelectWeaponGun == "Soul Guitar" then
                                                    if tostring(args[2]) == "TAP" then
                                                        if _G.AutoFarmGunMastery and UseSkillMasteryGun then
                                                            args[3] = PositionSkillMasteryGun
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        return old(unpack(args))
                                    end)
                                    setreadonly(gt, true)
                                end)
                                
                                task.spawn(function()
                                    while wait() do
                                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v:FindFirstChild("RemoteFunctionShoot") then
                                                    _G.SelectWeaponGun = v.Name
                                                end
                                            end
                                        end
                                    end
                                end)
                                
                                spawn(function()
                                    local gt = getrawmetatable(game)
                                    local old = gt.__namecall
                                    setreadonly(gt,false)
                                    gt.__namecall = newcclosure(function(...)
                                        local args = {...}
                                        if getnamecallmethod() == "InvokeServer" then 
                                            if _G.SelectWeaponGun then
                                                if _G.SelectWeaponGun == "Soul Guitar" then
                                                    if tostring(args[2]) == "TAP" then
                                                        if  _G.AutoFarmGunMastery and _G.UseSkillMasteryGun then
                                                            args[3] = PositionSkillMasteryGun
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        return old(unpack(args))
                                    end) 
                                    setreadonly(gt,true)
                                end)
                                spawn(function()
                                    while wait() do
                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Gun" then
                                                    _G.SelectWeaponGun = v.Name
                                                end
                                            end
                                        end
                                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Gun" then
                                                    _G.SelectWeaponGun = v.Name
                                                end
                                            end
                                        end
                                    end
                                end)
                                spawn(function()
                                    while wait() do
                                    pcall(function()
                                    if _G.Settings.AutoFarmGunMastery then
                                  if  game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                        StartMagnet = false
                                         -- FastAttack = false
                                        Questtween = toTarget(CFrameQuest.Position, CFrameQuest)
                                        if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Questtween then Questtween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Questtween then Questtween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                        elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Questtween then Questtween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                        elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Questtween then Questtween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                            if Questtween then Questtween:Stop() end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                            wait(1)
                                            if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                                                Com("F_", "StartQuest", QuestName, LevelQuest)
                                            end
                                        end
                                        end
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                            if _G.AutoFarmGunMastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonHumanoidRootPart = v.HumanoidRootPart
                                                PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                                repeat
                                                    task.wait()
                                                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if FarmtoTarget then FarmtoTarget:Stop() end
                                                        StartMagnet = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                        end
                                                        HealthMin = v.Humanoid.MaxHealth * _G.MobHealth / 100
                                                        PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                            EquipWeapon(_G.SelectWeaponGun)
                                                            UseSkillMasteryGun = true
                                                           v.HumanoidRootPart.CanCollide = false
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
                                                               mouse1click()
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position,
                                                                    [2] = v.HumanoidRootPart
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                            end
                                                        else
                                                            UseSkillMasteryGun = false
                                                            EquipWeapon(_G.SelectWeapon)
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                                        end
                                                    end
                                                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.AutoFarmGunMastery or v.Humanoid.Health <= 0 or not v.Parent
                                                UseSkillMasteryGun = false
                                                StartMagnet = false
                                            end
                                        end
                                    else
                                        StartMagnet = false
                                        Modstween = toTarget(CFrameMon)
                                        if OldWorld and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif OldWorld and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                        elseif OldWorld and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                                        elseif OldWorld and (Name == "Shanda" or Name == "Royal Squad" or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                        elseif NewWorld and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Modstween then Modstween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                        elseif NewWorld and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Modstween then Modstween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                                Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                            if Modstween then 
                                                Modstween:Stop()
                                                spawn(function()
                                                    if posrandom <= 1 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 1 and posrandom <= 2 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 2 and posrandom <= 3 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 3 and posrandom <= 4  then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                        posrandom = posrandom + 0.1
                                                elseif posrandom >=4 and posrandom <= 5 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                    posrandom = 0
                                                end
                                            end)
                                        end
                                           -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                        end
                                    end
                                end
                                end
                                end)
                                end
                                end)
                                
                                
                                local Cam = workspace.CurrentCamera
                                    local hotkey = true
                                    function lookAt(target, eye)
                                        Cam.CFrame = CFrame.new(target, eye)
                                    end
                                    function CheckMonFF(trg_part)
                                        local nearest = nil
                                        local last = math.huge
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == QuestCheck()[3] then
                                                local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v[trg_part].Position)
                                                local AccPos = Vector2.new(ePos.x, ePos.y)
                                                local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
                                                local distance = (AccPos - mousePos).magnitude
                                                if distance < last and vissss and hotkey == true and distance < 1500 then
                                                    last = distance
                                                    nearest = v
                                                end
                                            end
                                        end
                                        return nearest
                                    end
                                    spawn(function()
                                        while wait() do
                                            if _G.AutoFarmGunMastery  and _G.UseSkillMasteryGun == true then
                                                local closest = CheckMonFF("HumanoidRootPart")
                                                lookAt(Cam.CFrame.p, closest:FindFirstChild("HumanoidRootPart").Position)
                                                local args = {
                                                    [1] = PositionSkillMasteryGun
                                                }
                                                
                                                game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteEvent:FireServer(unpack(args))
                                                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                                end
                                            end
                                        end
                                    end)
                                    spawn(function()
                                        while wait() do
                                            if _G.AutoFarmGunMastery  and _G.UseSkillMasteryGun == true then
                                                local args = {
                                                    [1] = PositionSkillMasteryGun,
                                                    [2] = MonHumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            end
                                        end
                                    end)
                                
                                    spawn(function()
                                        while wait() do
                                            pcall(function()
                                                if _G.Settings.AutoFarmFruitMastery then
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                        StartMagnet = false
                                        FastAttack = false
                                        Questtween = toTarget(CFrameQuest.Position, CFrameQuest)
                                        if World1 and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Questtween then Questtween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif World1 and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Questtween then Questtween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                        elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Questtween then Questtween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                        elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Questtween then Questtween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                            if Questtween then Questtween:Stop() end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                            wait(1)
                                            if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                                                Com("F_", "StartQuest", QuestName, LevelQuest)
                                            end
                                        end
                                        end
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if _G.AutoFarmFruitMastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    FarmtoTarget = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame * MethodFarm) 
                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if FarmtoTarget then FarmtoTarget:Stop() end
                                                        StartMagnet = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        HealthMin = v.Humanoid.MaxHealth * _G.MobHealth / 100
                                                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                            EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                                UseSkillMasteryDevilFruit = true
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                                    MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                                                    DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                                    MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                                                    DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                                end
                                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                                    if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                                    end
                                                                    if Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                                    end
                                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                                    if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                    else
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                                    end
                                                                    if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                                    end
                                                                    if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                                                    end
                                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
                                                                    if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                                    end
                                                                    if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                                    end
                                                                    if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                                                    end
                                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                        
                                                                    if _G.SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                                                    end
                                                                    if _G.SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                                                    end
                                                                    if _G.SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                                                    end
                                                                    if _G.SkilV and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                                                                    if _G.SkillF and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.F then
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                                                                    end
                                                                    end
                                                                end
                                                            end
                                                        else
                                                            game:GetService('VirtualUser'):CaptureController()
                                                            game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158),game:GetService("Workspace").Camera.CFrame)
                                                            UseSkillMasteryDevilFruit = false
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * MethodFarm
                                                        end
                                                    end
                                                until v.Humanoid.Health <= 0 or not _G.AutoFarmFruitMastery
                                                StartMagnet = false
                                            end
                                        end
                                        else
                                        StartMagnet = false
                                        Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                        if OldWorld and (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif OldWorld and not (Name == "Fishman Commando" or Name == "Fishman Warrior") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                        elseif OldWorld and (Name == "God's Guard" or Name == "Sky Bandit" or Name == "Dark Master") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                                        elseif OldWorld and (Name == "Shanda" or Name == "Royal Squad" or Name == "Royal Soldier") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
                                            if Modstween then Modstween:Stop() end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                        elseif NewWorld and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Modstween then Modstween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                        elseif NewWorld and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                            if Modstween then Modstween:Stop() end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                            if Modstween then 
                                                Modstween:Stop()
                                                spawn(function()
                                                    if posrandom <= 1 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 1 and posrandom <= 2 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 2 and posrandom <= 3 then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                        posrandom = posrandom + 0.1
                                                    elseif posrandom >= 3 and posrandom <= 4  then
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                        posrandom = posrandom + 0.1
                                                elseif posrandom >=4 and posrandom <= 5 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                    posrandom = 0
                                                end
                                            end)
                                        end
                                          --  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                        end
                                        end
                                        end
                                        end
                                        end)
                                        end
                                        end)
                                
                                function CheckMasteryWeapon(NameWe, MasNum)
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
                                if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                                    return "true DownTo"
                                elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                                    return "true UpTo"
                                end
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
                                if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                                    return "true DownTo"
                                elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                                    return "true UpTo"
                                end
                                end
                                return "else"
                                end
                                
                                function CheckMasteryWeapon(NameWe,MasNum)
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
                                        if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                                            return "true DownTo"
                                        elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                                            return "true UpTo"
                                        end
                                    end
                                    if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
                                        if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
                                            return "true DownTo"
                                        elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
                                            return "true UpTo"
                                        end
                                    end
                                    return "else"
                                end
                                
                                local function inmyself(name)
                                    return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
                                end

        

    Main_Section:addLabel({
        Section = 1,
        text = 'Boss',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    if World1 then
        local tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
    Main_Section:addDropdown({
        Section = 1,
        title = "Select Boss List",
        corner = 5,
        List = tableBoss,
	    keybind = false,
        multi = false,
        callback = function(v) 
            _G.SelectBoss = v
        end
    })
end

if World2 then
    local tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
Main_Section:addDropdown({
    Section = 1,
    title = "Select Boss List",
    corner = 5,
    List = tableBoss,
    keybind = false,
    multi = false,
    callback = function(v) 
        _G.SelectBoss = v
    end
})
end

if World3 then
    local tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
Main_Section:addDropdown({
    Section = 1,
    title = "Select Boss List",
    corner = 5,
    List = tableBoss,
    keybind = false,
    multi = false,
    callback = function(v) 
        _G.SelectBoss = v
    end
})
end
    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Farm On Select Boss",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoFarmBoss = value
            if value == false then
            task.wait()
             toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
              task.wait()
            end
        end
        })

        task.spawn(function()
            while task.wait() do
            if _G.AutoFarmBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    StartMagnet = true
                                    FastAttack = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    if not FastAttack then
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",math.huge)
                                until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                    end
                end
            end)
            end
            end
            end)

            Main_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Farm All Boss",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoAllBoss = value
                    if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                    end
                end
                })


                task.spawn(function()
                    while task.wait() do
                    if _G.AutoAllBoss then
                    pcall(function()
                        for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                            if v.Name == "Cyborg" or v.Name == "The Gorilla King" or v.Name == "Wysper" or v.Name == "Thunder God" or v.Name == "Mob Leader" or v.Name == "Bobby" or v.Name == "Saber Expert" or v.Name == "Warden" or v.Name == "Chief Warden" or v.Name == "Swan" or v.Name == "Magma Admiral"  or v.Name == "Fishman Lord" or v.Name == "Wysper" or v.Name == "Ice Admiral" or v.Name == "Diamond" or v.Name == "Jeremy" or v.Name == "Fajita" or v.Name == "Don Swan" or v.Name == "Smoke Admiral" or v.Name == "Awakened Ice Admiral" or v.Name == "Tide Keeper" or v.Name == "Darkbeard" or v.Name == "Stone" or v.Name == "Island Empress" or v.Name == "Kilo Admiral" or v.Name == "Captain Elephant" or v.Name == "Beautiful Pirate" or v.Name == "Cake Queen" or v.Name == "Greybeard" or v.Name == "Order" or v.Name == "Cursed Captain" or v.Name == "Soul Reaper" or v.Name == "Rip indra" or v.Name == "Mihawk Boss" or v.Name == "Cake Prince" or v.Name == "Dough King" or v.Name == "Cursed Skeleton Boss" or v.Name == "Factory" 
                            then
                                repeat
                                    task.wait()
                                    StartMagnet = true
                                    FastAttack = true
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    if not FastAttack then 
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent 
                            end
                        end
                    end)
                    end
                    end
                    end)

        Main_Section:addLabel({
            Section = 1,
            text = 'Event Sea',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })


        Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Get Boat",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoBuyBoat = value
            end
        })

                task.spawn(function()
                    while wait() do
                        pcall(function()
                            if _G.AutoBuyBoat then
                                if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                                    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then 
                                        if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                                buyb = toTarget(CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625))
                                                if (CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                    if buyb then buyb:Stop() end
                                                    local args = {
                                                        [1] = "BuyBoat",
                                                        [2] = "PirateBrigade"
                                                    }
                        
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                                    toTarget(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                                elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                                    repeat wait()
                                                        if (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                            toTarget(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                                        end
                                                    until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.AutoBuyBoat == false
                                                end
                                            end
                                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                            for is,vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                                if vs.Name == "PirateBrigade" then
                                                    if vs:FindFirstChild("VehicleSeat") then
                                                        repeat wait()
                                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                            toTarget(vs.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoBuyBoat == false
                                                    end
                                                end
                                            end
                                        end
                                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                        for iss,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                            if v.Name == "PirateBrigade" then
                                                if v:FindFirstChild("VehicleSeat") then
                                                    repeat wait()
                                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                        toTarget(v.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                                    until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.AutoBuyBoat == false
                                                end
                                            end
                                        end
                                    end
                                elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then  
                                    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                        if v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait()
                                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                                EquipAllWeapon()  
                                                AutoSkill = true
                                                AimBotSkillPosition = v.HumanoidRootPart
                                                Skillaimbot = true
                                            until not v:FindFirstChild("HumanoidRootPart") or _G.AutoBuyBoat == false
                                            AutoSkill = false
                                            Skillaimbot = false
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            

    if not World1 and not World2 then
         Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Leviathan",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.TeleporttoSeaBeast = value
                if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                end
                task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            if  _G.TeleporttoSeaBeast then
                                for i, v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") or v.Name == "SeaBeast1" or v.Name == "Leviathan" then
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        })
    end

    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Kill Piranha",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoKillPiranha = value
        end
    })

    spawn(function()
        while wait() do
            if  _G.AutoKillPiranha then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Click()
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until not  _G.farmpiranya or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                     
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else  
                        end
                    end
                end)
            end
        end
     end)

    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Kill Terrorshark",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoTerrorshark = value
        end
    })

    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Click()
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
            end
        end
     end)

    if not World1 then
        Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Teleport to Sea Beast",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.TeleporttoSeaBeast = value
                    if value == false then
                        task.wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        task.wait()
                    end
                    task.spawn(function()
                        while task.wait() do
                            pcall(function()
                                if _G.TeleporttoSeaBeast then
                                    for i, v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                                        if v:FindFirstChild("HumanoidRootPart") or v.Name == "SeaBeast1" then
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                end
            })
        end

    if World2 or World3 then
        Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Increase Boat Speed",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.increaseboatspeed = value
                local vehicleSeats = {}
                for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                    if v:IsA("VehicleSeat") then
                        table.insert(vehicleSeats, v)
                    end
                end
                if _G.increaseboatspeed then
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 350
                    end
                else
                    for _, v in pairs(vehicleSeats) do
                        v.MaxSpeed = 100
                    end
                end
            end,
        })
    end
        Main_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Sail",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoSail = value
                while _G.AutoSail do task.wait(0)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
                end
            end,
        })

Main_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Noclip [ Rock ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.Nocliprock = value
        spawn(function()
                while wait() do
                    if _G.Nocliprock then
                        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                            for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                                if v:IsA("BasePart") and v.CanCollide == true then
                                    v.CanCollide = false
                                end
                            end
                            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") and v.CanCollide == true then
                                    v.CanCollide = false
                                end
                            end
                        elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                            for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
                                if v:IsA("BasePart") and v.CanCollide == false then
                                    v.CanCollide = true
                                end
                            end
                            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") and v.CanCollide == false then
                                    v.CanCollide = true
                                end
                            end
                        end
                    end
                end
            end)
        end,
    })

    Main_Section:addLabel({
        Section = 1,
        text = 'Farm Materail',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    Main_Section:addDropdown({
        Section = 1,
        title = "Select Material",
        corner = 5,
        List = AllMaterial,
	    keybind = false,
        multi = false,
        callback = function(v) 
            SelectModeMaterial = v
        end
    })

    Main_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Farm Material",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(x) 
            AutoFarmMaterial = x
            if x == false then
                toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
            task.spawn(function()
                while task.wait() do
                    if AutoFarmMaterial then
                        xpcall(function()
                            if (SelectModeMaterial ~= "") then
                                CheckMaterial(SelectModeMaterial);
                                if CustomFindFirstChild(MaterialMob) then
                                    for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
                                            repeat
                                                task.wait();
                                                FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
                                                if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
                                                    if FarmtoTarget then FarmtoTarget:Stop(); end
                                                    FastAttack = true;
                                                    EquipWeapon(_G.SelectWeapon);
                                                    spawn(function()
                                                        for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                            if (v5.Name == v1.Name) then
                                                                spawn(function()
                                                                    if InMyNetWork(v5.HumanoidRootPart) then
                                                                        v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
                                                                        v5.Humanoid.JumpPower = 0;
                                                                        v5.Humanoid.WalkSpeed = 0;
                                                                        v5.HumanoidRootPart.CanCollide = false;
                                                                        v5.Humanoid:ChangeState(14);
                                                                        v5.Humanoid:ChangeState(16);
                                                                        v5.Humanoid:ChangeState(11);
                                                                        v5.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
                                                                    end
                                                                end);
                                                            end
                                                        end
                                                    end);
                                                    if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
                                                        game:service("VirtualInputManager"):SendKeyEvent(true, "V", false,game);
                                                        game:service("VirtualInputManager"):SendKeyEvent(false, "V",false, game);
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
                                                end
                                            until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health <= 0) or not v1.Parent
                                            FastAttack = false;
                                        end
                                    end
                                else
                                    FastAttack = false;
                                    Modstween = toTarget(CFrameMon);
                                    if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                        if Modstween then Modstween:Stop(); end
                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                                    elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                        if Modstween then Modstween:Stop(); end
                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                                    elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
                                        if Modstween then Modstween:Stop(); end
                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance",
                                            Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                                    elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
                                        if Modstween then 
                                            Modstween:Stop()
                                            spawn(function()
                                                if posrandom <= 1 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                    posrandom = posrandom + 0.1
                                                elseif posrandom >= 1 and posrandom <= 2 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                    posrandom = posrandom + 0.1
                                                elseif posrandom >= 2 and posrandom <= 3 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                    posrandom = posrandom + 0.1
                                                elseif posrandom >= 3 and posrandom <= 4  then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                    posrandom = posrandom + 0.1
                                            elseif posrandom >=4 and posrandom <= 5 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                posrandom = 0
                                            end
                                        end)
                                    end
                                       -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                                    end
                                end
                            end
                        end, function(x)
                            print("Auto Farm Material Error : " .. x)
                        end)
                    else
                        break;
                    end
                end
            end)
        end,
    })

    function LockMoon()
        local Lighting = game:GetService("Lighting")
        local Cam = game.Workspace.CurrentCamera
        local CFNew, CFAng = CFrame.new, CFrame.Angles
        local asin = math.asin
        
        local Camera = workspace.CurrentCamera
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Root = Character:WaitForChild("HumanoidRootPart")
        local Neck = Character:FindFirstChild("Neck", true)
        local YOffset = Neck.C0.Y
        game:GetService("RunService").RenderStepped:Connect(function()
        if _G.LockMoon then
            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
        
            local pos = Vector3.new(0, 0, 0)
            local lookAt = Lighting:GetMoonDirection()
            local cameraCFrame = CFrame.new(pos, lookAt)
            workspace.CurrentCamera.CFrame = cameraCFrame
            local CameraDirection = Root.CFrame:toObjectSpace(cameraCFrame).lookVector.unit
            if Neck and Lock then
                Neck.C0 = CFNew(0, YOffset, 0) * CFAng(0, -asin(CameraDirection.x), 0) * CFAng(asin(CameraDirection.y), 0, 0)
            end
        else
            Cam.FieldOfView = 70
        end
        end)
        end

    Main_Section:addLabel({
        Section = 1,
        text = 'Race V4',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })

    Main_Section:addLabel({
        Section = 1,
        text = 'Coming Soon',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })




Item_Section:addLabel({
    Section = 1,
    text = 'Auto Item',
    textsize = nil, -- auto
    textxalignment = Enum.TextXAlignment.Left,
    textyalignment = Enum.TextYAlignment.Center,
})

if World1 then
Item_Section:addLabel({
    Section = 1,
    text = 'Status : World 1',
    textsize = nil, -- auto
    textxalignment = Enum.TextXAlignment.Left,
    textyalignment = Enum.TextYAlignment.Center,
})

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Farm [ World ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoNewWorld = value
        if value == false then
            task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            task.wait()
        end
        end,
    })
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoNewWorld then
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                        if _G.AutoFarm then
                            _G.AutoFarm = false
                        end
                        if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
                            EquipWeapon("Key")
                            repeat
                                task.wait()
                                toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNewWorld
                            wait(3)
                        elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            EquipWeapon(_G.SelectWeapon)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            FastAttack = true
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        until v.Humanoid.Health <= 0 or not v.Parent
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end
            end)
        end
    end)
end

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Saber",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoSaber  = value
        if value == false then
            task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            task.wait()
        end
        end,
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoSaber  and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
                    if _G.AutoFarm then
                        _G.AutoFarm = false
                        _G.BypassTP = false
                    end
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279,3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724,-4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587,-1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09,-0.761243105, 3.47544882e-10, -0.648466587))
                                else
                                    toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551,-0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198,3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup",
                                    game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                            toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564,-0.0227849055, 0.939347804, 0.0251603816, 0.999569714,0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
                                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                    repeat
                                                        task.wait()
                                                        StartMagnet = true
                                                        FastAttack = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                        end
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                    until v.Humanoid.Health <= 0 or _G.AutoSaber  == false
                                                end
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494,5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08,-0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08,0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08,0.85820812))
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Saber Expert" then
                                    repeat
                                        task.wait()
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                    until v.Humanoid.Health <= 0 or _G.AutoSaber  == false
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

    Item_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Pole",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoPole = value
            if value == false then
                task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                task.wait()
            end
        end
    })
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoPole then
                    if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Farmtween = toTarget(v.HumanoidRootPart.Position,
                                            v.HumanoidRootPart.CFrame)
                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Farmtween then Farmtween:Stop() end
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                    end
                                until not _G.AutoPole or v.Humanoid.Health <= 0 or not v.Parent
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    else
                        Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
                        if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Questtween then Questtween:Stop() end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406,5606.90918, -2267.46436)
                        end
                    end
                end
            end)
        end
    end)
    Item_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Buy [ Ablility ]",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoBuyAbility = value
            if value == false then
                task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                task.wait()
            end
        end
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoBuyAbility then
                    local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
                    local BusoCheck = false
                    local SoruCheck = false
                    local GeppoCheck = false
                    local KenCheck = false
                    if Beli >= 885000 then
                        repeat
                            task.wait()
                            local args = {
                                [1] = "BuyHaki",
                                [2] = "Buso"
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            BusoCheck = true
                            local args = {
                                [1] = "BuyHaki",
                                [2] = "Geppo"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            GeppoCheck = true
                            local args = {
                                [1] = "BuyHaki",
                                [2] = "Soru"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            SoruCheck = true
                            local args = {
                                [1] = "KenTalk",
                                [2] = "Start"
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                            local args = {
                                [1] = "KenTalk",
                                [2] = "Buy"
                            }

                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            KenCheck = true
                            if World1 then
                                local args = {
                                    [1] = "LoadItem",
                                    [2] = "Black Cape"
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild(
                                    "CommF_"):InvokeServer(unpack(args))
                            end
                            if W2 then
                                local args = {
                                    [1] = "LoadItem",
                                    [2] = "Warrior Helmet"
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild(
                                    "CommF_"):InvokeServer(unpack(args))
                            end
                            if W3 then
                                local args = {
                                    [1] = "LoadItem",
                                    [2] = "Warrior Helmet"
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild(
                                    "CommF_"):InvokeServer(unpack(args))
                            end
                            while task.wait() do
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki",
                                    "Buso")

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem",
                                    "Black Cape")

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki",
                                    "Geppo")



                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki",
                                    "Soru")


                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk",
                                    "Buy")
                            end
                        until not BusoCheck and not GeppoCheck and not SoruCheck and not KenCheck or not _G.AutoBuyAbility
                    end
                end
            end)
        end
    end)

    if World2 then
        Item_Section:addLabel({
            Section = 1,
            text = 'Status : World 2',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Farm [ World 3 ]",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoThirdSea = value
                if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                end
            end
        })
    end
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if _G.AutoThirdSea then
                    if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                        if _G.AutoFarm then
                            _G.AutoFarm = false
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                                Com("F_", "TravelZou")
                                if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
                                    if game.Workspace.Enemies:FindFirstChild("rip_indra") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                            v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        FastAttack = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes
                                                                    .CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                        end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    end
                                                until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
                                                wait(.5)
                                                Check = 2
                                                repeat
                                                    task.wait()
                                                    Com("F_", "TravelZou")
                                                until Check == 1
                                                    FastAttack = false
                                            end
                                        end
                                    else
                                        Com("F_", "ZQuestProgress", "Check")
                                        Com("F_", "ZQuestProgress", "Begin")
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                                    Com("F_", "TravelZou")
                                else
                                    if game.Workspace.Enemies:FindFirstChild("Don Swan") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Don Swan" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                            v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        FastAttack = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes
                                                                    .CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                        end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        v.Humanoid:ChangeState(11)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    end
                                                until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
                                                FastAttack = false
                                            end
                                        end
                                    else
                                        TweenDonSwanthireworld = toTarget(
                                            CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
                                        if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if TweenDonSwanthireworld then TweenDonSwanthireworld:Stop()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
                                            end
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                    TabelDevilFruitStore = {}
                                    TabelDevilFruitOpen = {}

                                    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                        for i1, v1 in pairs(v) do
                                            if i1 == "Name" then
                                                table.insert(TabelDevilFruitStore, v1)
                                            end
                                        end
                                    end

                                    for i, v in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                        if v.Price >= 1000000 then
                                            table.insert(TabelDevilFruitOpen, v.Name)
                                        end
                                    end

                                    for i, DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                                        for i1, DevilFruitStore in pairs(TabelDevilFruitStore) do
                                            if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                                if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
                                                    Com("F_", "LoadFruit", DevilFruitStore)
                                                else
                                                    Com("F_", "TalkTrevor", "1")
                                                    Com("F_", "TalkTrevor", "2")
                                                    Com("F_", "TalkTrevor", "3")
                                                end
                                            end
                                        end
                                    end

                                    Com("F_", "TalkTrevor", "1")
                                    Com("F_", "TalkTrevor", "2")
                                    Com("F_", "TalkTrevor", "3")
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Swan Pirate" then
                                                pcall(function()
                                                    repeat
                                                        task.wait()
                                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                            Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                                v.HumanoidRootPart.CFrame)
                                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                            if Farmtween then Farmtween:Stop() end
                                                            FastAttack = true
                                                            StartMagnet = true
                                                            if _G.AutoHaki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                task.wait()
                                                                EquipWeapon(_G.FastType)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not _G.FastAttack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            v.Humanoid.JumpPower = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Humanoid:ChangeState(11)
                                                            v.Humanoid:ChangeState(14)
                                                            v.Humanoid:ChangeState(16)
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        end
                                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        FastAttack = false
                                                    StartMagnet = false
                                                end)
                                            end
                                        end
                                    else
                                        Questtween = toTarget(
                                            CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position,CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))
                                        if (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Bartilotween then Bartilotween:Stop() end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)
                                        end
                                    end
                                else
                                    Bartilotween = toTarget(
                                        CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
                                    if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Bartilotween then Bartilotween:Stop() end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                                        Com("F_", "StartQuest", "BartiloQuest", 1)
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                                if game.Workspace.Enemies:FindFirstChild("Jeremy") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Jeremy" then
                                            repeat
                                                task.wait()
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                    Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                        v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    FastAttack = true
                                                    if _G.AutoHaki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_
                                                                :InvokeServer("Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                        task.wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not _G.FastAttack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    v.Humanoid:ChangeState(14)
                                                    v.Humanoid:ChangeState(16)
                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false
                                                FastAttack = false
                                        end
                                    end
                                else
                                    Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
                                    if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Bartilotween then Bartilotween:Stop() end
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                                if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
                                elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Bartilotween then Bartilotween:Stop() end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
                                    wait(.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                                    wait(.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
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
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = PosMonEvo
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
            end
        end)
    end)
end)

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Evo Race [ V2 ]",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.Auto_Evo_Race_V2 = value
        spawn(function()
               while wait() do
                   pcall(function()
                   if _G.Auto_Evo_Race_V2 then
                       if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                           if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                               two(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                               if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                   wait(1.3)
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                               end
                           elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                               pcall(function()
                                   if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                       two(game:GetService("Workspace").Flower1.CFrame)
                                   elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                       two(game:GetService("Workspace").Flower2.CFrame)
                                   elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                       if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                               if string.find(v.Name, "Swan Pirate") then
                                                   repeat wait()
                                                       AutoHaki()
                                                       EquipWeapon(_G.Select_Weapon)
                                                       two(v.HumanoidRootPart.CFrame * MethodFarm)
                                                       v.HumanoidRootPart.CanCollide = false
                                                       v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                       game:GetService'VirtualUser':CaptureController()
                                                       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                       PosMonEvo = v.HumanoidRootPart.CFrame
                                                       StartEvoMagnet = true
                                                   until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
                                                   StartEvoMagnet = false
                                               end
                                           end
                                       else
                                           StartEvoMagnet = false
                                           two(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
                                       end
                                   end
                               end)
                           elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                           end
                       end
                   end
               end)
           end
       end)
    end
})

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Bartilo Quest",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoBartiloQuest   = value
        _G.Settings.AutoBartiloQuest = value
        SaveSettings() 
 
        if value == false then
            task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            task.wait()
        end
    end
})
task.spawn(
function()
    while task.wait() do
        pcall(function()
                if _G.Settings.AutoBartiloQuest then
                    if game.Players.LocalPlayer.Data.Level.Value >= 850 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate" then
                                            pcall(function()
                                                    repeat
                                                        task.wait()
                                                        if
                                                            (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300
                                                         then
                                                            Farmtween =
                                                                toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                        elseif
                                                            (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300
                                                         then
                                                            if Farmtween then
                                                                Farmtween:Stop()
                                                            end
                                                            FastAttack = true
                                                            StartMagnet = true
                                                            if _G.AutoHaki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso")
                                                                 then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                task.wait()
                                                                EquipWeapon(_G.SelectWeapon)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not _G.FastAttack then
                                                                game:GetService "VirtualUser":CaptureController()
                                                                game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            v.Humanoid:ChangeState(14)
                                                            v.Humanoid:ChangeState(16)
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        end
                                                    until not v.Parent or v.Humanoid.Health <= 0 or
                                                        _G.AutoBartiloQuest == false or
                                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false
                                                    StartMagnet = false
                                                    FastAttack = false
                                                end
                                            )
                                        end
                                    end
                                else
                                    Questtween =
                                        toTarget(CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position,CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))
                                    if
                                        (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300
                                     then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)
                                    end
                                end
                            else
                                Bartilotween =
                                    toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
                                if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Bartilotween then
                                        Bartilotween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                                    local args = {
                                        [1] = "StartQuest",
                                        [2] = "BartiloQuest",
                                        [3] = 1
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end
                        end
                    elseif
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1
                     then
                        if game.Workspace.Enemies:FindFirstChild("Jeremy") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Jeremy" then
                                    repeat
                                        task.wait()
                                        if
                                            (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300
                                         then
                                            Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                        elseif
                                            (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300
                                         then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon)
                                             then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService "VirtualUser":CaptureController()
                                                game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        end
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartiloQues == false
                                    FastAttack = false
                                end
                            end
                        else
                            Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
                            if
                                (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300
                             then
                                if Bartilotween then
                                    Bartilotween:Stop()
                                end
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                            end
                        end
                    elseif
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2
                     then
                        if
                            (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300
                         then
                            Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position, CFrame.new(-1836, 11, 1714))
                        elseif
                            (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300
                         then
                            if Bartilotween then
                                Bartilotween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
                            wait(.5)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                    end
                end
            end
        end)
    end
end)

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Dark Coat",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoDarkCoat = value
        if value == false then
            task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            task.wait()
        end
    end
})

task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if _G.AutoDarkCoat then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    v.Name == ("Darkbeard" or v.Name == "Darkbeard") and v.Humanoid.Health > 0 and
                                        v:IsA("Model") and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart")
                                 then
                                    repeat
                                        task.wait()
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService "VirtualUser":CaptureController()
                                            game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until _G.AutoDarkCoat == false or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    FastAttack = false
                                end
                            end
                        else
                            toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                        end
                    end
                end
            )
        end
    end
)

Item_Section:addCheckbox({
    Section = 1,
    default = false,
    corner = 5,
    title = "Auto Ectoplasm",
    disabled = false,
    Group = nil, -- nil == no group
    callback = function(value) 
        _G.AutoEctoplasm = value
        if value == false then
            task.wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            task.wait()
        end
    end
})

task.spawn(function()
    while task.wait() do
    pcall(function()
    if _G.AutoEctoplasm then
    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" or v.Name == "Arctic Warrior" then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    repeat
                        task.wait()
                        StartMagnet = true
                        FastAttack = true
                        if _G.AutoHaki then
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                        end
                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                            task.wait()
                            EquipWeapon(_G.SelectWeapon)
                        end
                        PosMon = v.HumanoidRootPart.CFrame
                        if not _G.FastAttack then
                            game:GetService 'VirtualUser':CaptureController()
                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end
                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                        v.Humanoid.JumpPower = 0
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        v.Humanoid:ChangeState(16)
                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                    until not _G.AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
                    StartMagnet = false
                    FastAttack = false
                end
            end
        end
    else
        StartMagnet = false
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                end
            end)
        end
    end)

    Item_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Factory",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoFactory = value
            if value == false then
                task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                task.wait()
            end
        end
    })

    task.spawn(function()
        while task.wait() do
        pcall(function()
            if _G.AutoFactory then
                if workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 1 then
                    repeat
                        task.wait()
                        FastAttack = true
                        if _G.AutoHai then
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                        end
                        EquipWeapon(_G.SelectWeapon)
                        if not _G.FastAttack then
                            game:GetService 'VirtualUser':CaptureController()
                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end
                        toTarget(CFrame.new(456.917724609375, 182.5244903564453, -430.490966796875))
                    until not _G.AutoFactory or workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0
                        FastAttack = false
                end
            elseif workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0 then
                _G.AutoFactory = false
            end
        end)
        end
        end)

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto True Triple Katana",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoTrueTriplKatana = value
                if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                end
            end
        })

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoTrueTriplKatana then
                        local string_1 = "MysteriousMan";
                        local string_2 = "2";
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1, string_2);
                    end
                end)
            end
        end)

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Rengoku Swords",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoRengoku = value
                if value == false then
                    toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        })

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoRengoku then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                            EquipWeapon("Hidden Key")
                            toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                        elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                        FastAttack = false
                                end
                            end
                        else
                            StartMagnet = false
                                FastAttack = false
                            toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
                        end
                    end
                end)
            end
        end)

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Swan Glasses",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoSwanGlasses = value
                if value == false then
                    toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        })

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoSwanGlasses then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    repeat
                                        task.wait()
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until not _G.AutoSwanGlasses or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    FastAttack = false
                                end
                            end
                        else
                            repeat
                                task.wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                            until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not _G.AutoSwanGlasses
                        end
                    end
                end)
            end
        end)
    
    if World3 then
        Item_Section:addLabel({
            Section = 1,
            text = 'Status : World 3',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Rainbow Haki",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoRainbowHaki = value
                if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                end
            end
        })

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoRainbowHaki then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan",
                                    "Bet")
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Stone" then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717,-0.592676699,0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077,-0.0137055516, 0.0186523199))
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Island Empress" then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0,-0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Kilo Admiral" then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0,-0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant" then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                            FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289,7.98849911e-08,0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08,0.714521289))
                            end
                        elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Beautiful Pirate" then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                            end
                        else
                            toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                            if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                            end
                        end
                    end
                end)
            end
        end)  

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Ken-Haki V2",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoKenHakiV2 = value
                if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                end
            end
        })

        task.spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoKenHakiV2 then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat
                                toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                                task.wait()
                            until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest", 1)
                        else
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                                repeat
                                    toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                                    task.wait()
                                until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                                repeat
                                    toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                                    task.wait()
                                until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate" then
                                            repeat
                                                task.wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(16)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            until not _G.AutoKenHakiV2 or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                else
                                    repeat
                                        toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625))
                                        task.wait()
                                    until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Captain Elephant" then
                                            repeat
                                                task.wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(16)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            until not _G.AutoKenHakiV2 or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                else
                                    repeat
                                        toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                                        task.wait()
                                    until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
                                end
                            else
                                for i, v in pairs(game.Workspace:GetDescendants()) do
                                    if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                            task.wait()
                                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle, 0)
                                            task.wait()
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end)

        Item_Section:addLabel({
            Section = 1,
            text = 'Cursed Dual Katana',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        
        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Cursed [ Dual Katana ]",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.Auto_Cursed_Dual_Katana = value
            end
        })

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Holy Torch",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoHolyTorch = value
                _G.BypassTP = false
                if value == false then
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        })

        spawn(function()
            while wait() do
                if _G.AutoHolyTorch then
                    if game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency == 1 then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                            EquipWeapon("Holy Torch")
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            if game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled ~= true then
                                if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame)
                                elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if HolyTorchtween then
                                        HolyTorchtween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch1.CFrame
                                end
                            elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled ~= true then
                                if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame)
                                elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if HolyTorchtween then
                                        HolyTorchtween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch2.CFrame
                                end
                            elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled ~= true then
                                if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame)
                                elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if HolyTorchtween then
                                        HolyTorchtween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch3.CFrame
                                end
                            elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled ~= true then
                                if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame)
                                elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if HolyTorchtween then
                                        HolyTorchtween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch4.CFrame
                                end
                            elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled ~= true then
                                if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame)
                                elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if HolyTorchtween then
                                        HolyTorchtween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch5.CFrame
                                end
                            end
                        else
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame
                        end
                    end
                end
            end
        end)
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.Auto_Cursed_Dual_Katana then
                        if GetWeaponInventory("Cursed Dual Katana") == true then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
            
                            else
                                print("Get Weapon")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
                            end
                        else
                            if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    else
                                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if v.Name == "Tushita" and v:IsA("Tool") then
                                                if v.Level.Value >= 350 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                                                    _G.AutoFarmBone = false
                                                else
                                                    _G.Select_Weapon = "Tushita"
                                                    _G.AutoFarmBone = true
                                                end
                                            end
                                        end
                                    end
                                elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                        EquipWeapon("Yama")
                                    else
                                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if v.Name == "Yama" and v:IsA("Tool") then
                                                if v.Level.Value >= 350 then
                                                    Auto_CDK_Quest = true
                                                    _G.AutoFarmBone = false
                                                else
                                                    _G.Select_Weapon = "Yama"
                                                    _G.AutoFarmBone = true
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                            end      
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    if Auto_CDK_Quest then
                        if GetMaterial("Alucard Fragment") == 0 then
                            Auto_Quest_Yama_1 = true
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 1 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = true
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 2 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = true
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        elseif GetMaterial("Alucard Fragment") == 3 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = true
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 4 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = true
                            Auto_Quest_Tushita_3 = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 5 then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        elseif GetMaterial("Alucard Fragment") == 6 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                                Auto_Quest_Yama_1 = false
                                Auto_Quest_Yama_2 = false
                                Auto_Quest_Yama_3 = false
                                Auto_Quest_Tushita_1 = false
                                Auto_Quest_Tushita_2 = false
                                Auto_Quest_Tushita_3 = false
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                            if v.Humanoid.Health > 0 then
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    end
                                end
                            else
                                if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                    wait(1)
                                    toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)
                                    toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                                else
                                    toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                end   
                            end
                        end
                    end
                end)
            end
        end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Yama_1 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Mythological Pirate" then
                                    repeat wait()
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                    until not Auto_CDK_Quest or not _G.Auto_Cursed_Dual_Katana 
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                                end
                            end
                        else
                            toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                        end
                    end)
                end
            end
            end)
            
            spawn(function()
            while wait() do
                pcall(function()
                    if Auto_Quest_Yama_2 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50,50,50,50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                v.HazeESP.Size = UDim2.new(50,50,50,50)
                                v.HazeESP.MaxDistance = "inf"
                            end
                        end
                    end
                end)
            end
            end)
            
            spawn(function()
            while wait() do
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMonsEsp
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                vc.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end)
            end
        end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Yama_2 then 
                    pcall(function() 
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HazeESP") then
                                repeat wait()
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        toTarget(v.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
                                    else
                                        StartMagnet = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        PosMonsEsp = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
                                    end      
                                until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                            else
                                for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if y:FindFirstChild("HazeESP") then
                                        if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                            toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Yama_3 then
                    pcall(function()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                            _G.AutoFarmBone = false           
                            toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                        elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                            repeat wait()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    StartMagnet = true
                                                    FastAttack = true
                                                    if _G.AutoHaki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                        wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
            
                                                    PosMonsEsp = v.HumanoidRootPart.CFrame
                                                    if not _G.FastAttack then
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)        
                                    toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                                end
                            until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Soul Reaper" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                                until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                            end
                                        end
                                    end
                                else
                                    toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                                end
                            else
                                _G.AutoFarmBone = true
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                            end
                        end
                    end)
                end
            end
            end)
            
            spawn(function() 
            while wait() do
                if Auto_Quest_Tushita_1 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                end
            end
            end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Tushita_1 then
                    toTarget(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                    wait(5)
                    toTarget(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                    wait(5)
                    toTarget(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
                end
            end
            end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Tushita_2 then
                    pcall(function()
                        if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                        repeat wait()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                    end
                                end
                            end
                        else
                            toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                        end
                    end)
                end
            end
            end)
            
            spawn(function()
            while wait() do
                if Auto_Quest_Tushita_3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                    wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                if not _G.FastAttack then
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                        end
                                    end
                                end
                            else
                                toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                            end
                        elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                            repeat wait()
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                            if v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    if _G.AutoHaki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                        wait()
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                    if not _G.FastAttack then
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                            end
                                        end
                                    end
                                else
                                    wait(5)
                                    toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)        
                                    toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                    wait(1.5)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                    wait(1.5)     
                                    toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                                end
                            until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
                        else
                            Hop()
                        end
                    end)
                end
            end
            end)
            Tushita_Quest1 = nil

            Item_Section:addLabel({
                Section = 1,
                text = 'Yama Quest',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Yama Quest : 1",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    YamaQuest1 = value
                    if value == false then
                        wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                    end
                    task.spawn(function()
                        while wait() do
                            pcall(function()
                                if YamaQuest1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                                    wait(.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                                    wait(.1)
                                    toTarget(CFrame.new(-13284.16796875, 332.4040222167969, -7899.060546875))
                                end
                            end)
                        end
                    end)
                end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Yama Quest : 2",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    YamaQuest2 = value
                    if value == false then
                        wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                    end
                    task.spawn(function()
                        while wait() do
                            pcall(function()
                                if YamaQuest2 then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if YamaQuest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HazeESP") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                    wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            until not YamaQuest2 or not v.Parent or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Mob Aura",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    MobAura = value
                    if value == false then
                        wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                    end
                    task.spawn(function()
                        while wait() do
                            pcall(function()
                                if MobAura then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                            repeat wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                    wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                MagnetMobAura = true
                                                if delay then
                                                    delay(1,function()
                                                        MagnetMobAura = true
                                                    end)
                                                end 
                                            until not MobAura or not v.Parent or v.Humanoid.Health <= 0
                                            MagnetMobAura = false
                                            FastAttack = false
                                            StartMagnet = false
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                end
            })

         task.spawn(function()
            while wait() do
                pcall(function()
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    if MobAura then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 350 then
                                v.HumanoidRootPart.CFrame = PosMonAura
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    end
                end)
            end
        end)
    

        Item_Section:addLabel({
            Section = 1,
            text = 'Soul Guitar',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        Item_Section:addLabel({
            Section = 1,
            text = 'Fragement: 5000',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        Item_Section:addLabel({
            Section = 1,
            text = 'Bones: 500',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        Item_Section:addLabel({
            Section = 1,
            text = 'Fragement: 5000',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })
        Item_Section:addLabel({
            Section = 1,
            text = 'DarkFragment: 1',
            textsize = nil, -- auto
            textxalignment = Enum.TextXAlignment.Left,
            textyalignment = Enum.TextYAlignment.Center,
        })

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Soul Guitar",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                AutoSoulGuitar = value
                spawn(function()
                        while task.wait() do
                            pcall(function()
                                    if AutoSoulGuitar then
                                        if (GetWeaponInventory("Soul Guitar") == false) then
                                            if
                                                ((CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000)
                                             then
                                                if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                                                elseif
                                                    (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0)
                                                 then
                                                    if
                                                        (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0)
                                                     then
                                                        Quest2 = true
                                                        repeat
                                                            task.wait()
                                                            toTarget(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                                                        until ((CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                                        wait(1)
                                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                                        wait(1)
                                                    elseif
                                                        game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector")
                                                     then
                                                        if
                                                            game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector")
                                                         then
                                                            Quest4 = true
                                                            repeat
                                                                task.wait()
                                                                toTarget(CFrame.new(-9553.5986328125,65.62338256835938,6041.58837890625))
                                                            until ((CFrame.new(-9553.5986328125,65.62338256835938,6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar
                                                            wait(1)
                                                            toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                                            wait(1)
                                                            toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                            wait(1)
                                                            toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                            wait(1)
                                                            toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                                            wait(1)
                                                            toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                            wait(1)
                                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                        else
                                                            Quest3 = true
                                                        end
                                                    else
                                                        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                                            local args = {[1] = "GuitarPuzzleProgress", [2] = "Ghost"}
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                                if
                                                                    (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0))
                                                                 then
                                                                    if (v.Name == "Living Zombie") then
                                                                          EquipWeapon(_G.SelectWeapon)
                                                                          StartMagnet = true
                                                                            FastAttack = true
                                                                            if _G.AutoHaki then
                                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                                end
                                                                            end
                                                                            if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                                                wait()
                                                                                EquipWeapon(_G.SelectWeapon)
                                                                            end
                                    
                                                                            PosMon = v.HumanoidRootPart.CFrame
                                                                            if not _G.FastAttack then
                                                                                game:GetService'VirtualUser':CaptureController()
                                                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                            end
                                                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                                            v.Humanoid.JumpPower = 0
                                                                            v.Humanoid.WalkSpeed = 0
                                                                            v.HumanoidRootPart.CanCollide = false
                                                                            v.Humanoid:ChangeState(11)
                                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                                        MonFarm = v.Name
                                                                       
                                                                    end
                                                                end
                                                            end
                                                        else
                                                            toTarget(CFrame.new(-10160.787109375,138.6616973876953,5955.03076171875))
                                                        end
                                                    end
                                                elseif
                                                    string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2),"Error")
                                                 then
                                                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Go to Grave",Icon = "rbxassetid://15511158491",Duration = 3})
                                                    toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                                elseif
                                                    string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2),"Nothing")
                                                 then
                                                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Speed Hub X",Text = "Wait Next Night",Icon = "rbxassetid://15511158491",Duration = 3})
                                                else
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                                end
                                            else
                                                toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                                            end
                                        end
                                    end
                                end)
                            end
                        end)
                    end
                })

                Item_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Auto Try Luck",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        TryLuck = value
                    end
                })
  
                Item_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Auto Pray",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        Pray = value
                    end
                })
         
                spawn(function()
                    while wait(0.1) do
                        if TryLuck then
                            toTarget(CFrame.new(-8652.99707,143.450119,6170.50879,-0.983064115,-2.4800553e-10,0.18326205,-1.7891039e-9,1,-8.243923e-9,-0.18326205,-8.43218e-9,-0.983064115))
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
                        end
                    end
                end)
            spawn(function()
                    while wait(0.1) do
                        if Pray then
                            toTarget(
                                CFrame.new(-8652.99707,143.450119,6170.50879,-0.983064115,-2.4800553e-10,0.18326205,-1.7891039e-9,1,-8.243923e-9,-0.18326205,-8.43218e-9,-0.983064115))
                            wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        end
                    end
                end)
        
        
        function Elite()
                task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            if _G.AutoEliteHunter then
                                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
                                        for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
                                            if string.find(v.Name, "Diablo") then
                                                EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                    if EliteHunter then
                                                        EliteHunter:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                                        .HumanoidRootPart.CFrame
                                                end
                                            end
                                            if string.find(v.Name, "Urban") then
                                                EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                    if EliteHunter then
                                                        EliteHunter:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                                        .HumanoidRootPart.CFrame
                                                end
                                            end
                                            if string.find(v.Name, "Deandre") then
                                                EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                    if EliteHunter then
                                                        EliteHunter:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                                        .HumanoidRootPart.CFrame
                                                end
                                            end
                                        end
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if _G.AutoEliteHunter and string.find(v.Name, "Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
                                                        FastAttack = true
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
                                                    FastAttack = false
                                            end
                                            if _G.AutoEliteHunter and string.find(v.Name, "Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
                                                        FastAttack = true
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
                                                    FastAttack = false
                                            end
                                            if _G.AutoEliteHunter and string.find(v.Name, "Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
                                                        FastAttack = true
                                                        EquipWeapon(_G.SelectWeapon)
                                                    end
                                                until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
                                                FastAttack = false
                                            end
                                        end
                                    else
                                        local string_1 = "EliteHunter";
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                        Target:InvokeServer(string_1);
                                    end
                                else
                                    local string_1 = "EliteHunter";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                            end
                        end)
                    end
                end)
            if _G.AutoEliteHunterHop then  
                if not (game.Workspace.Enemies:FindFirstChild("Deandre") or game.Workspace.Enemies:FindFirstChild("Urban") or game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo")) then
                    wait(10)
                Teleport()
                Hop()
            end
        end
    end

    Item_Section:addLabel({
        Section = 1,
        text = 'Elite Hunter',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,  
    })   

    Item_Section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "Auto Elite Hunter Hop",
        disabled = false,
        Group = nil, -- nil == no group
        callback = function(value) 
            _G.AutoEliteHunterHop = value
            Elite()
            if value == false then
                toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
    })
        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Elite Hunter",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoEliteHunter = value
                Elite()
                if value == false then
                    toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Castle Raid",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoCastleRaid = value
                    if value == false then
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            })

                spawn(function()
                    while wait() do
                        pcall(function()
                            if _G.AutoCastleRaid then
                                if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                            repeat wait()
                                                PosMon = v.HumanoidRootPart.CFrame
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                StartMagnet = true
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                end
                                            until not _G.AutoCastleRaid or not v.Parent or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                        end
                                    end
                                else
                                    if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            end
                                        end
                                    end
                                    toTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
                                end
                            end
                        end)  
                    end
                end)

                local  GetQuestBone = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                Item_Section:addLabel({
                    Section = 1,
                    text = 'Bones',
                    textsize = nil, -- auto
                    textxalignment = Enum.TextXAlignment.Left,
                    textyalignment = Enum.TextYAlignment.Center,  
                })  

                Item_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Auto Farm Bone",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        _G.AutoFarmBone  = value
                        _G.Settings.AutoFarmBone = value
                        SaveSettings() 
                        if value == false then
                            task.wait()
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            task.wait()
                        end 
                    end
                })

                task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            if _G.Settings.AutoFarmBone then
                                if GetQuestBone.Visible == false and _G.AccetpQuestBone then
                                    CFrameQuestBone = CFrame.new(-9513, 172, 6079)
                                    if (CFrameQuestBone.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 2)
                                else
                                    toTarget(CFrameQuestBone)
                                end
                        elseif GetQuestBone.Visible == true or not _G.AccetpQuestBone then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    StartMagnet = true
                                                    FastAttack = true
                                                    if _G.AutoHaki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                        end
                                                    end
                                                    EquipWeapon(_G.SelectWeapon)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not _G.FastAttack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                until not _G.AutoFarmBone  or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                                StartMagnet = false
                                                FastAttack = false
                                            end
                                        end
                                    end
                                else
                                    two(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                                    end
                                end
                            end
                        end)
                    end
                end)
                  

                Item_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Auto Random Bone",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        _G.AutoRandomBone = value
                    end
                })
                spawn(function()
                    while wait(.1) do
                        if _G.AutoRandomBone then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        end
                    end
                end)
            end

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Spawn Boss Soul Reaper",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.SpawnBossHallow = value
                    toTarget(CFrame.new(-8933.0537109375, 146.79251098632812, 6063.353515625))
                    if value == false then
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end
            })

            Item_Section:addLabel({
                Section = 1,
                text = 'Dough Boss',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 
            
            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Katakuri",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoCakePrince  = value
                    if value == false then
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "VectorHub",Text = "ปิดวาร์ปเร็ว",Icon = "rbxassetid://14645512457",Duration = 1})
                    task.spawn(function()
                        while task.wait() do
                            pcall(function() 
                            if _G.AutoCakePrince  then
                                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if _G.AutoCakePrince  and string.find(v.Name, "Cake Prince") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        if _G.AutoCakePrince  and game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                                            _G.FastType = "Normal"
                                                        else
                                                            _G.FastType = "Fast"
                                                        end
                                                        FastAttack = true 
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    end
                                                until not _G.AutoCakePrince  or not v.Parent or v.Humanoid.Health <= 0
                                                FastAttack = false
                                            end
                                        end
                                    else
                                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 100 then -- 2000
                                            FastAttack = false
                                            Questtween = toTarget(CFrame.new(-2174.35546875, 69.97904968261719, -12396.609375))
                                            if (CFrame.new(-2174.35546875, 69.97904968261719, -12396.609375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then Questtween:Stop() end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153,149.315704, -12404.9053)
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2174.35546875,69.97904968261719, -12396.609375)
                                                wait(.1)
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if string.find(v.Name, "Cookie") or string.find(v.Name, "Cake") or string.find(v.Name, "Baking") or string.find(v.Name, "Head")  and v.Humanoid.Health > 0 then
                                                repeat
                                                    task.wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        _G.FastType = "Fast"
                                                        FastAttack = true
                                                        StartMagnet = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    end
                                                until not _G.AutoCakePrince  or not v.Parent or v.Humanoid.Health <= 0
                                                StartMagnet = false
                                                FastAttack = false
                                            end
                                        end
                                    else
                                        Questtween = toTarget(CFrame.new(-2079.6826171875, 227.9525909423828, -12321.923828125))
                                        if (CFrame.new(-2079.6826171875, 227.9525909423828, -12321.923828125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then Questtween:Stop() end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2079.6826171875,227.9525909423828, -12321.923828125)
                                            end
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Spawn Katakuri",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.Spawnka = value
                    while _G.Spawnka do wait()
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    end
                end
            })

            Item_Section:addLabel({
                Section = 1,
                text = ' Fighting Style',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto God Human",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoGodHuman = value
                    BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
                    if BuyGodhuman then
                        if BuyGodhuman ~= 1 then
                            GetAllMeleeFarm()
                        end
                    end
                end
            }) 

                    task.spawn(function()
                        while task.wait() do
                            pcall(function()
                                if _G.AutoGodHuman then
                                    BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "BuyGodhuman", true))
                                    if BuyGodhuman then
                                        if BuyGodhuman == 1 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                                            _G.AutoGodHuman = false
                                        end
                                    end
                                    if not HasTalon then
                                        BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BuyDragonTalon", true))
            
                                        if BuyDragonTalon then
                                            if BuyDragonTalon == 1 then
                                                HasTalon = true
                                            end
                                        end
                                    end
                                    if not HasSuperhuman then
                                        BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BuySuperhuman", true))
            
                                        if BuySuperhuman then
                                            if BuySuperhuman == 1 then
                                                HasSuperhuman = true
                                            end
                                        end
                                    end
                                    if not HasKarate then
                                        BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_
                                            :InvokeServer("BuySharkmanKarate", true))
            
                                        if BuySharkmanKarate then
                                            if BuySharkmanKarate == 1 then
                                                HasKarate = true
                                            end
                                        end
                                    end
                                    if not HasDeathStep then
                                        BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BuyDeathStep", true))
            
                                        if BuyDeathStep then
                                            if BuyDeathStep == 1 then
                                                HasDeathStep = true
                                            end
                                        end
                                    end
                                    if not HasElectricClaw then
                                        BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "BuyElectricClaw", true))
                                        if BuyElectricClaw then
                                            if BuyElectricClaw == 1 then
                                                HasElectricClaw = true
                                            end
                                        end
                                    end
            
                                    if not HasSuperhuman then
                                        if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                                                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
                                                                    local args = {
                                                                        [1] = "BuyElectro"
                                                                    }
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        unpack(args))
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            _G.SelectWeapon = GetFightingStyle("Melee")
            
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                                                local args = {
                                                    [1] = "BuyElectro"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                                                local args = {
                                                    [1] = "BuyBlackLeg"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                                                local args = {
                                                    [1] = "BuyBlackLeg"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                                                local args = {
                                                    [1] = "BuyFishmanKarate"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                                                local args = {
                                                    [1] = "BuyFishmanKarate"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                                                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "VectorHub",Text = "เปิดออโต้ดันเจี้ยนต้องการเงินม่วง1500",Icon = "rbxassetid://14645512457",Duration = 1})
                                                game:GetService("StarterGui"):SetCore("SendNotification",{Title = "VectorHub",Text = "OpenAutoRaidYouneed1500Fragment",Icon = "rbxassetid://14645512457",Duration = 1})
            
                                                local args = {
                                                    [1] = "BlackbeardReward",
                                                    [2] = "DragonClaw",
                                                    [3] = "2"
                                                }
                                                HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                if _G.AutoGodHuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
                                                    if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                                        if _G.AutoFarm then _G.AutoFarm = false end
                                                    end
                                                else
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BlackbeardReward",
                                                        [2] = "DragonClaw",
                                                        [3] = "2"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                                                local args = {
                                                    [1] = "BlackbeardReward",
                                                    [2] = "DragonClaw",
                                                    [3] = "2"
                                                }
                                                HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    unpack(args))
                                                if _G.AutoGodHuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
                                                    if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                                        if _G.AutoFarm then _G.AutoFarm = false end
                                                    end
                                                else
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BlackbeardReward",
                                                        [2] = "DragonClaw",
                                                        [3] = "2"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                end
                                            end
            
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                                                if _G.AutoFarm then _G.AutoFarm = true end
                                                local args = {
                                                    [1] = "BuySuperhuman"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                                                if _G.AutoFarm then _G.AutoFarm = true end
                                                local args = {
                                                    [1] = "BuySuperhuman"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                        end
                                    elseif not HasKarate then
                                        if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                                                    local args = {
                                                        [1] = "BuyFishmanKarate"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
            
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                                    if World2 then
                                                        KillSharkMan = true
                                                        if _G.AutoFarm then _G.AutoFarm = false end
                                                    else
                                                        KillSharkMan = false
                                                        if _G.AutoFarm then _G.AutoFarm = true end
                                                    end
                                                elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)) == 1 then
                                                    KillSharkMan = false
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BuySharkmanKarate"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                                    KillSharkMan = false
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BuySharkmanKarate"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
            
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                                    if World2 then
                                                        KillSharkMan = true
                                                        if _G.AutoFarm then _G.AutoFarm = false end
                                                    else
                                                        if _G.AutoFarm then _G.AutoFarm = true end
                                                        KillSharkMan = false
                                                    end
                                                elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)) == 1 then
                                                    KillSharkMan = false
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BuySharkmanKarate"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                                    KillSharkMan = false
                                                    if _G.AutoFarm then _G.AutoFarm = true end
                                                    local args = {
                                                        [1] = "BuySharkmanKarate"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                            _G.SelectWeapon = GetFightingStyle("Melee")
                                        end
                                    elseif not HasDeathStep then
                                        if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                                                local args = {
                                                    [1] = "BuyDeathStep"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                                                local args = {
                                                    [1] = "BuyDeathStep"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            _G.SelectWeapon = GetFightingStyle("Melee")
                                        end
                                    elseif not HasTalon then
                                        if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                            _G.SelectWeapon = GetFightingStyle("Melee")
            
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                                    local string_1 = "Bones";
                                                    local string_2 = "Buy";
                                                    local number_1 = 1;
                                                    local number_2 = 1;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, string_2, number_1, number_2);
            
                                                    local string_1 = "BuyDragonTalon";
                                                    local bool_1 = true;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, bool_1);
                                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "BuyDragonTalon")
                                                else
                                                    local string_1 = "Bones";
                                                    local string_2 = "Buy";
                                                    local number_1 = 1;
                                                    local number_2 = 1;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, string_2, number_1, number_2);
                                                end
                                            end
            
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                                    local string_1 = "Bones";
                                                    local string_2 = "Buy";
                                                    local number_1 = 1;
                                                    local number_2 = 1;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, string_2, number_1, number_2);
            
                                                    local string_1 = "BuyDragonTalon";
                                                    local bool_1 = true;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, bool_1);
                                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "BuyDragonTalon")
                                                else
                                                    local string_1 = "Bones";
                                                    local string_2 = "Buy";
                                                    local number_1 = 1;
                                                    local number_2 = 1;
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1, string_2, number_1, number_2);
                                                end
                                            end
                                        end
                                    elseif not HasElectricClaw then
                                        if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                            _G.SelectWeapon = GetFightingStyle("Melee")
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                                                local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "BuyElectricClaw", true);
                                                if v175 == 4 then
                                                    local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "BuyElectricClaw", "Start");
                                                    if v176 == nil then
                                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                                            -12548, 337, -7481)
                                                    end
                                                else
                                                    local string_1 = "BuyElectricClaw";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                end
                                            end
            
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                                local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "BuyElectricClaw", true);
                                                if v175 == 4 then
                                                    local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "BuyElectricClaw", "Start");
                                                    if v176 == nil then
                                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                                            -12548, 337, -7481)
                                                    end
                                                else
                                                    local string_1 = "BuyElectricClaw";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                end
                                            end
                                        end
                                    end
                                    if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
                                        if HasSuperhuman and not SupComplete then
                                            local args = {
                                                [1] = "BuySuperhuman"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            wait(0.2)
                                            if CheckMasteryWeapon("Superhuman", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) == "true" and SupComplete == false then
                                                SupComplete = true
                                            end
                                        elseif HasTalon and not TalComplete then
                                            local args = {
                                                [1] = "BuyDragonTalon"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            wait(0.2)
                                            if CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) == "true" and TalComplete == false then
                                                TalComplete = true
                                            end
                                        elseif HasKarate and not SharkComplete then
                                            local args = {
                                                [1] = "BuySharkmanKarate"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            wait(0.2)
                                            if CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) == "true" and SharkComplete == false then
                                                SharkComplete = true
                                            end
                                        elseif HasDeathStep and not DeathComplete then
                                            local args = {
                                                [1] = "BuyDeathStep"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            wait(0.2)
                                            if CheckMasteryWeapon("Death Step", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) == "true" and DeathComplete == false then
                                                DeathComplete = true
                                            end
                                        elseif HasElectricClaw and not EClawComplete then
                                            local args = {
                                                [1] = "BuyElectricClaw"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            wait(0.2)
                                            if CheckMasteryWeapon("Electric Claw", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) == "true" and EClawComplete == false then
                                                EClawComplete = true
                                            end
                                        end
                                    end
            
                                    if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
                                        if GetMaterial("Fish Tail") >= 20 then
                                            if GetMaterial("Magma Ore") >= 20 then
                                                if GetMaterial("Dragon Scale") >= 10 then
                                                    if GetMaterial("Mystic Droplet") >= 10 then
                                                        Com("F_", "BuyGodhuman")
                                                        BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_
                                                            :InvokeServer("BuyGodhuman", true))
            
                                                        if BuyGodhuman then
                                                            if BuyGodhuman == 1 then
                                                                _G.AutoGodHuman = false
                                                            end
                                                        end
                                                        if _G.AutoFarm then _G.AutoFarm = true end
                                                    elseif not World2 then
                                                        Com("F_", "TravelDressrosa")
                                                    elseif World2 then
                                                        if _G.AutoFarm then _G.AutoFarm = false end
                                                        CheckMaterial("Mystic Droplet")
                                                        if CustomFindFirstChild(MaterialMob) then
                                                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                                if _G.AutoGodHuman and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                                    repeat
                                                                        task.wait()
                                                                        FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame *
                                                                            CFrame.new(0, 30, 1))
                                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                                            if FarmtoTarget then FarmtoTarget:Stop() end
                                                                            FastAttack = true
                                                                            EquipWeapon(_G.SelectWeapon)
                                                                            spawn(function()
                                                                                for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                                                    if v2.Name == v.Name then
                                                                                        spawn(function()
                                                                                            if InMyNetWork(v2.HumanoidRootPart) then
                                                                                                v2.HumanoidRootPart.CFrame = v
                                                                                                    .HumanoidRootPart.CFrame
                                                                                                v2.Humanoid.JumpPower = 0
                                                                                                v2.Humanoid.WalkSpeed = 0
                                                                                                v2.HumanoidRootPart.CanCollide = false
                                                                                                v2.Humanoid:ChangeState(11)
                                                                                                v2.HumanoidRootPart.Size = Vector3
                                                                                                    .new(80, 80, 80)
                                                                                            end
                                                                                        end)
                                                                                    end
                                                                                end
                                                                            end)
                                                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                                            end 
                                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                        end
                                                                    until not CustomFindFirstChild(MaterialMob) or not _G.AutoGodHuman or v.Humanoid.Health <= 0 or not v.Parent
                                                                   FastAttack = false
                                                                end
                                                            end
                                                        else
                                                            FastAttack = false
                                                            Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                                        if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                                                        elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                                                        elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                                                        elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
                                                            if Modstween then 
                                                                Modstween:Stop()
                                                                spawn(function()
                                                                    if posrandom <= 1 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 1 and posrandom <= 2 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 2 and posrandom <= 3 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 3 and posrandom <= 4  then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                                        posrandom = posrandom + 0.1
                                                                elseif posrandom >=4 and posrandom <= 5 then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                    posrandom = 0
                                                                end
                                                            end)
                                                        end
                                                          --  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                                                            end
                                                        end
                                                    end
                                                elseif not World3 then
                                                    Com("F_", "TravelZou")
                                                elseif World3 then
                                                    if _G.AutoFarm then _G.AutoFarm = false end
                                                    CheckMaterial("Dragon Scale")
                                                    if CustomFindFirstChild(MaterialMob) then
                                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                            if _G.AutoGodHuman and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                                repeat
                                                                    task.wait()
                                                                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                                        if FarmtoTarget then FarmtoTarget:Stop() end
                                                                        FastAttack = true
                                                                        EquipWeapon(_G.SelectWeapon)
                                                                        spawn(function()
                                                                            for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                                                if v2.Name == v.Name then
                                                                                    spawn(function()
                                                                                        if InMyNetWork(v2.HumanoidRootPart) then
                                                                                            v2.HumanoidRootPart.CFrame = v
                                                                                                .HumanoidRootPart.CFrame
                                                                                            v2.Humanoid.JumpPower = 0
                                                                                            v2.Humanoid.WalkSpeed = 0
                                                                                            v2.HumanoidRootPart.CanCollide = false
                                                                                            v2.Humanoid:ChangeState(11)
                                                                                            v2.HumanoidRootPart.Size = Vector3.new(
                                                                                                80, 80, 80)
                                                                                        end
                                                                                    end)
                                                                                end
                                                                            end
                                                                        end)
                                                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                            game:service('VirtualInputManager'):SendKeyEvent(true,
                                                                                "V", false, game)
                                                                            game:service('VirtualInputManager'):SendKeyEvent(false,
                                                                                "V", false, game)
                                                                        end
                                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                    end
                                                                until not CustomFindFirstChild(MaterialMob) or not _G.AutoGodHuman or v.Humanoid.Health <= 0 or not v.Parent
                                                                FastAttack = false
                                                            end
                                                        end
                                                    else
                                                        FastAttack = false
                                                        Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                                        if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                                                        elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                                                        elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
                                                            if Modstween then Modstween:Stop(); end
                                                            wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                                                        elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
                                                            if Modstween then 
                                                                Modstween:Stop()
                                                                spawn(function()
                                                                    if posrandom <= 1 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 1 and posrandom <= 2 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 2 and posrandom <= 3 then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                                        posrandom = posrandom + 0.1
                                                                    elseif posrandom >= 3 and posrandom <= 4  then
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                                        posrandom = posrandom + 0.1
                                                                elseif posrandom >=4 and posrandom <= 5 then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                    posrandom = 0
                                                                end
                                                            end)
                                                        end
                                                          --  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                                                        end
                                                    end
                                                end
                                            elseif not World1 then
                                                Com("F_", "TravelMain")
                                            elseif World1 then
                                                if _G.AutoFarm then _G.AutoFarm = false end
                                                CheckMaterial("Magma Ore")
                                                if CustomFindFirstChild(MaterialMob) then
                                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if _G.AutoGodHuman and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                            repeat
                                                                task.wait()
                                                                FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                                    if FarmtoTarget then FarmtoTarget:Stop() end
                                                                    FastAttack = true
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    spawn(function()
                                                                        for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                                            if v2.Name == v.Name then
                                                                                spawn(function()
                                                                                    if InMyNetWork(v2.HumanoidRootPart) then
                                                                                        v2.HumanoidRootPart.CFrame = v
                                                                                            .HumanoidRootPart.CFrame
                                                                                        v2.Humanoid.JumpPower = 0
                                                                                        v2.Humanoid.WalkSpeed = 0
                                                                                        v2.HumanoidRootPart.CanCollide = false
                                                                                        v2.Humanoid:ChangeState(11)
                                                                                        v2.HumanoidRootPart.Size = Vector3.new(80, 80,
                                                                                            80)
                                                                                    end
                                                                                end)
                                                                            end
                                                                        end
                                                                    end)
                                                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V",
                                                                            false, game)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V",
                                                                            false, game)
                                                                    end
                                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                end
                                                            until not CustomFindFirstChild(MaterialMob) or not _G.AutoGodHuman or v.Humanoid.Health <= 0 or not v.Parent
                                                            FastAttack = false
                                                        end
                                                    end
                                                else
                                                    FastAttack = false
                                                    Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                                    if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                        if Modstween then Modstween:Stop(); end
                                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                                                    elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                        if Modstween then Modstween:Stop(); end
                                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                                                    elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
                                                        if Modstween then Modstween:Stop(); end
                                                        wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "requestEntrance",
                                                            Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                                                    elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
                                                        if Modstween then 
                                                            Modstween:Stop()
                                                            spawn(function()
                                                                if posrandom <= 1 then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                                    posrandom = posrandom + 0.1
                                                                elseif posrandom >= 1 and posrandom <= 2 then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                    posrandom = posrandom + 0.1
                                                                elseif posrandom >= 2 and posrandom <= 3 then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                                    posrandom = posrandom + 0.1
                                                                elseif posrandom >= 3 and posrandom <= 4  then
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                                    posrandom = posrandom + 0.1
                                                            elseif posrandom >=4 and posrandom <= 5 then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                posrandom = 0
                                                            end
                                                        end)
                                                    end
                                                       -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                                                    end
                                                end
                                            end
                                        elseif not World1 then
                                            Com("F_", "TravelMain")
                                        elseif World1 then
                                            if _G.AutoFarm then _G.AutoFarm = false end
                                            CheckMaterial("Fish Tail")
                                            if CustomFindFirstChild(MaterialMob) then
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if _G.AutoGodHuman and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                        repeat
                                                            task.wait()
                                                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                                if FarmtoTarget then FarmtoTarget:Stop() end
                                                                FastAttack = true
                                                                EquipWeapon(_G.SelectWeapon)
                                                                spawn(function()
                                                                    for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                                        if v2.Name == v.Name then
                                                                            spawn(function()
                                                                                if InMyNetWork(v2.HumanoidRootPart) then
                                                                                    v2.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                        .CFrame
                                                                                    v2.Humanoid.JumpPower = 0
                                                                                    v2.Humanoid.WalkSpeed = 0
                                                                                    v2.HumanoidRootPart.CanCollide = false
                                                                                    v2.Humanoid:ChangeState(11)
                                                                                    v2.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                                                end
                                                                            end)
                                                                        end
                                                                    end
                                                                end)
                                                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false,
                                                                        game)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V",
                                                                        false, game)
                                                                end
                                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                            end
                                                        until not CustomFindFirstChild(MaterialMob) or not _G.AutoGodHuman or v.Humanoid.Health <= 0 or not v.Parent
                                                        FastAttack = false
                                                    end
                                                end
                                            else
                                                FastAttack = false
                                                Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                                if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                    if Modstween then Modstween:Stop(); end
                                                    wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                                                elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
                                                    if Modstween then Modstween:Stop(); end
                                                    wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                                                elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
                                                    if Modstween then Modstween:Stop(); end
                                                    wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "requestEntrance",
                                                        Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                                                elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
                                                    if Modstween then 
                                                        Modstween:Stop()
                                                        spawn(function()
                                                            if posrandom <= 1 then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
                                                                posrandom = posrandom + 0.1
                                                            elseif posrandom >= 1 and posrandom <= 2 then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                                posrandom = posrandom + 0.1
                                                            elseif posrandom >= 2 and posrandom <= 3 then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
                                                                posrandom = posrandom + 0.1
                                                            elseif posrandom >= 3 and posrandom <= 4  then
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
                                                                posrandom = posrandom + 0.1
                                                        elseif posrandom >=4 and posrandom <= 5 then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
                                                            posrandom = 0
                                                        end
                                                    end)
                                                end
                                                    --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                                                end
                                            end
                                        end
                                    end
                                end
                            end)
                        end
                    end)
                
            
            
                task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            if _G.AutoGodHuman and World2 then
                                if game.Workspace.Enemies:FindFirstChild("Tide Keeper") or game.ReplicatedStorage:FindFirstChild("Tide Keeper") then
                                    if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks.") then
                                        if KillFish then KillFish:Stop() end
                                        Com("F_", "SetSpawnPoint")
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Tide Keeper" then
                                                repeat
                                                    task.wait()
                                                    if game.Workspace.Enemies:FindFirstChild(v.Name) then
                                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
                                                            Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                                                            if Farmtween then Farmtween:Stop() end
                                                            FastAttack = true
                                                            if _G.AutoHaki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                task.wait()
                                                                EquipWeapon(_G.SelectWeapon)
                                                            end
                                                            if not _G.FastAttack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false,
                                                                    game)
                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "V", false,
                                                                    game)
                                                            end
                                                        end
                                                    end
                                                until not v.Parent or not _G.AutoGodHuman or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
                                               FastAttack = false
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                                        KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "Tide Keeper").HumanoidRootPart.CFrame)
                                    else
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks." then
                                            Hop()
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end
            )

            if _G.Get_Fruit then
                if Inventory_Fruit then
                    Inventory_Fruit = nil
                end
                TabelDevilFruitStore = {}
        
                for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                    for i1, v1 in pairs(v) do
                        if i1 == "Name" then
                            table.insert(TabelDevilFruitStore, v1)
                            end
                        end
                    end
        
                fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
             for i1, v in pairs(TabelDevilFruitStore) do
                 if not game.Players.LocalPlayer.Backpack:FindFirstChild(TabelDevilFruitStore) then
                       for i,v in pairs(fruit) do
                    if v["Price"] < 10000000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                                end
                        end
                    end
                 end
              end

              Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Electric Claw",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoElectricClaw = value
                    if _G.AutoElectricClaw then
                        Com("F_", "BuyElectro")
                    end
                end
            })
            task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoElectricClaw then
                            if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
                                    _G.SelectWeapon = "Electro"
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
                                    _G.SelectWeapon = "Electro"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                                    local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
                                    if v175 == 4 then
                                        local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw",
                                            "Start");
                                        if v176 == nil then
                                            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548,
                                                337, -7481)
                                        end
                                    else
                                        local string_1 = "BuyElectricClaw";
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                        Target:InvokeServer(string_1);
                                    end
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                                    local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
                                    if v175 == 4 then
                                        local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw",
                                            "Start");
                                        if v176 == nil then
                                            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548,
                                                337, -7481)
                                        end
                                    else
                                        local string_1 = "BuyElectricClaw";
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                        Target:InvokeServer(string_1);
                                    end
                                end
                            end
                        end
                    end)
                end
            end)

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Death Step",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoDeathStep = value
                    if _G.AutoDeathStep then
                        Com("F_", "BuyBlackLeg")
                    end
                end
            })
            task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoDeathStep then
                            if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                                    local args = {
                                        [1] = "BuyDeathStep"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    _G.SelectWeapon = "Death Step"
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                                    local args = {
                                        [1] = "BuyDeathStep"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    
                                    _G.SelectWeapon = "Death Step"
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
                                    _G.SelectWeapon = "Black Leg"
                                end
                            end
                        elseif _G.AutoFullyDeathStep then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                                if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
                                        EquipWeapon("Library Key")
                                        repeat
                                            task.wait()
                                            toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))
                                        until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoDeathStep
                                        if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                            wait(1.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                            wait(0.5)
                                        end
                                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Awakened Ice Admiral" then
                                                        repeat
                                                            task.wait() task.wait()
                                                            if game.Workspace.Enemies:FindFirstChild(v.Name) then
                                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
                                                                    Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                                                                    if Farmtween then Farmtween:Stop() end
                                                                    FastAttack = true
                                                                    if _G.AutoHaki then
                                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                        end
                                                                    end
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                        task.wait()
                                                                        EquipWeapon(_G.SelectWeapon)
                                                                    end
                                                                    if not _G.FastAttack then
                                                                        game:GetService 'VirtualUser':CaptureController()
                                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                    end
                                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                    v.Humanoid.JumpPower = 0
                                                                    v.Humanoid.WalkSpeed = 0
                                                                    v.HumanoidRootPart.CanCollide = false
                                                                    v.Humanoid:ChangeState(11)
                                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                                    end
                                                                end
                                                            end
                                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoDeathStep == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                        FastAttack = false
                                                    end
                                                end
                                            else
                                                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral").HumanoidRootPart.CFrame)
                                            end
                                        end
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                            end
                        end
                    end)
                end
            end)

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto SharkmanKarate",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoSharkManKarate = value
                    if _G.AutoSharkManKarate then
                        Com("F_", "BuySharkmanKarate")
                    end
                end
            })

            task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoSharkManKarate then
                            if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            _G.SelectWeapon  = "Sharkman Karate"
                                    end
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            _G.SelectWeapon  = "Sharkman Karate"
                                    end
                                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
                                        _G.SelectWeapon = "Fishman Karate"
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                                end
                            end
                        elseif _G.AutoFullySharkManKarate then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                        repeat
                                            task.wait()
                                            toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413,0, 1,0, 0.999093413, 0, 0.0425701365)
                                        until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
                                        if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                            wait(1.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            wait(0.5)
                                        end
                                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Tide Keeper" then
                                                        repeat
                                                            task.wait()
                                                            if game.Workspace.Enemies:FindFirstChild(v.Name) then
                                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
                                                                    Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                                                                    if Farmtween then Farmtween:Stop() end
                                                                    FastAttack = true
                                                                    if _G.AutoHaki then
                                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                        end
                                                                    end
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                        task.wait()
                                                                        EquipWeapon(_G.SelectWeapon)
                                                                    end
                                                                    if not _G.FastAttack then
                                                                        game:GetService 'VirtualUser':CaptureController()
                                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                    end
                                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                    v.Humanoid.JumpPower = 0
                                                                    v.Humanoid.WalkSpeed = 0
                                                                    v.HumanoidRootPart.CanCollide = false
                                                                    v.Humanoid:ChangeState(11)
                                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                                    end
                                                                end
                                                            end
                                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoDeathStep == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                         FastAttack = false 
                                                    end
                                                end
                                            else
                                                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame)
                                            end
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                        end
                    end)
                end
            end)

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Dragon Talon",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoDragonTalon = value
                    if _G.AutoDragonTalon then
                        Com("F_", "BlackbeardReward", "DragonClaw", "2")
                    end
                end
            })

            task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoDragonTalon then
                            if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                    _G.SelectWeapon = "Dragon Claw"
                                end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                    _G.SelectWeapon = "Dragon Claw"
                                end
    
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                    _G.SelectWeapon = "Dragon Claw"
                                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                        local string_1 = "Bones";
                                        local string_2 = "Buy";
                                        local number_1 = 1;
                                        local number_2 = 1;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                        Target:InvokeServer(string_1, string_2, number_1, number_2);
    
                                        local string_1 = "BuyDragonTalon";
                                        local bool_1 = true;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                        Target:InvokeServer(string_1, bool_1);
                                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    else
                                        local string_1 = "BuyDragonTalon";local bool_1 = true;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1, bool_1);
                                        local string_1 = "BuyDragonTalon";
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1);
                                    end
                                end
    
                                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                    _G.SelectWeapon = "Dragon Claw"
                                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                        local string_1 = "Bones";
                                        local string_2 = "Buy";
                                        local number_1 = 1;
                                        local number_2 = 1;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1, string_2, number_1, number_2);
    
                                        local string_1 = "BuyDragonTalon";
                                        local bool_1 = true;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1, bool_1);
                                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                    else
                                        local string_1 = "BuyDragonTalon";
                                        local bool_1 = true;
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1, bool_1);
                                        local string_1 = "BuyDragonTalon";
                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];Target:InvokeServer(string_1);
                                    end
                                end
                            end
                        end
                    end)
                end
            end)

            Item_Section:addLabel({
                Section = 1,
                text = 'Observation Hki',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            Item_Section:addLabel({
                Section = 1,
                text = 'Observation Range Level : '..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value),
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Farm Observation",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoObservation = value
                    _G.Settings.AutoObservation = value
                    SaveSettings() 
                    if value == false then
                        task.wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        task.wait()
                    end
                end
            })

            spawn(function()
                while wait() do
                    pcall(function()
                            if _G.Settings.AutoObservation then
                                repeat
                                    task.wait()
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                        wait(5)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):SetKeyDown("0x65")
                                        wait(2)
                                        game:GetService("VirtualUser"):SetKeyUp("0x65")
                                    end
                                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                            end
                        end
                    )
                end
            end
        )

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Farm Observation Hop",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoObservation_Hop = value
                _G.Settings.AutoObservation_Hop = value
                SaveSettings()
            end
        })

        spawn(function()
            pcall(function()
                    while wait() do
                        if _G.Settings.AutoObservation then
                            if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 6000 then
                                game:GetService("StarterGui"):SetCore("SendNotification",
                                    {
                                        Icon = "rbxassetid://15511158491",
                                        Title = "Speed Hub X",
                                        Text = "You Have Max Observation"
                                    }
                                )
                                wait(2)
                            else
                                if World2 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                        if
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                         then
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                            until _G.AutoObservation == false or
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                                    wait(1)
                                                if
                                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true
                                                 then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or
                                                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        two(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                                    end
                                elseif World1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
                                        if
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                         then
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                            until _G.AutoObservation == false or
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                                    wait(1)
                                                if
                                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true
                                                 then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or
                                                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        two(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                                    end
                                elseif World3 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                        if
                                            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                         then
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                            until _G.AutoObservation == false or
                                                not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        else
                                            repeat
                                                task.wait()
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                                wait(1)
                                                if
                                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true
                                                 then
                                                    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                                end
                                            until _G.AutoObservation == false or
                                                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                        end
                                    else
                                        two(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                                    end
                                end
                            end
                        end
                    end
                end)
            end)

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Hallow Scythe",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoFarmBossHallow = value
                    if value == false then
                        task.wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        task.wait()
                        task.spawn(function()
                            while task.wait() do
                                pcall(function()
                                    if _G.AutoFarmBossHallow then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if string.find(v.Name , "Soul Reaper") then
                                                    repeat task.wait()
                                                        StartMagnet = true
                                                        FastAttack = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        EquipWeapon(_G.SelectWeapon)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService'VirtualUser':CaptureController()
                                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    until v.Humanoid.Health <= 0 or not _G.AutoFarmBossHallow
                                                    StartMagnet = false
                                                    FastAttack = false
                                                end
                                            end
                                        else
                                            toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
                                        end
                                    end
                                end)
                            end
                        end)
                    end
                end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Buddy Swords",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoBuddySwords = value
                    if value == false then
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    end
                    task.spawn(function()
                    while task.wait() do
                        pcall(function()
                            if _G.AutoBuddySwords then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == ("Cake Queen" or v.Name == "Cake Queen") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat
                                                task.wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(16)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            until not _G.AutoBuddySwords or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                end
                            end
                        end)
                    end
                    end)
                end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Musketeer Hat",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoMusketeerHat = value
                    if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                    task.spawn(function()
                        while task.wait() do
                            pcall(function()
                                if _G.AutoMusketeerHat then
                                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Forest Pirate" then
                                                        repeat
                                                            task.wait()
                                                            StartMagnet = true
                                                            FastAttack = true
                                                            if _G.AutoHaki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                task.wait()
                                                                EquipWeapon(_G.SelectWeapon)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not _G.FastAttack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            v.Humanoid:ChangeState(14)
                                                            v.Humanoid:ChangeState(16)
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        until not _G.AutoMusketeerHat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        StartMagnet = false
                                                        FastAttack = false
                                                    end
                                                end
                                            else
                                                toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                            end
                                        else
                                            toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                                wait(1.5)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest", 1)
                                            end
                                        end
                                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v.Name == "Captain Elephant" then
                                                        OldCFrameElephant = v.HumanoidRootPart.CFrame
                                                        repeat
                                                            task.wait()
                                                            StartMagnet = true
                                                            FastAttack = true
                                                            if _G.AutoHaki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                                task.wait()
                                                                EquipWeapon(_G.SelectWeapon)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not _G.FastAttack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            v.Humanoid:ChangeState(14)
                                                            v.Humanoid:ChangeState(16)
                                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                        until not _G.AutoMusketeerHat or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        StartMagnet = false
                                                        FastAttack = false
                                                    end
                                                end
                                            else
                                                toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                            end
                                        else
                                            toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                                wait(1.5)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                                            end
                                        end
                                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                                        toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                                    end
                                end
                            end)
                        end
                    end)
                end
            end
        })

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Cavander",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoCavander = value
                if value == false then
                task.wait()
                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                task.wait()
                end
                task.spawn(function()
                while task.wait() do
                    pcall(function()
                        if _G.AutoCavander then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == ("Beautiful Pirate") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoCavander or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
                            end
                        end
                    end)
                end
                end)
            end
        })

        Item_Section:addCheckbox({
            Section = 1,
            default = false,
            corner = 5,
            title = "Auto Yama Sword",
            disabled = false,
            Group = nil, -- nil == no group
            callback = function(value) 
                _G.AutoYamaSword = value
                spawn(function()
                while task.wait() do
                    if _G.AutoYamaSword then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                            repeat
                                task.wait()
                                fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not AutoYama
                        end
                    end
                end
                end)
            end
            })

            Item_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Tushita Sword",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoTushitaSword = value
                    if value == false then
                    task.wait()
                    toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                    task.wait()
                    end
                    task.spawn(function()
                    while task.wait() do
                        if _G.AutoTushitaSword then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                        repeat
                                            task.wait()
                                            StartMagnet = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(16)
                                            toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                        until not _G.AutoTushitaSword or not v.Parent or v.Humanoid.Health <= 0
                                        StartMagnet = false
                                        FastAttack = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                            end
                        end
                    end
                    end)
                end
                })

                Item_Section:addCheckbox({
                    Section = 1,
                    default = false,
                    corner = 5,
                    title = "Auto Serpent Bow",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        _G.AutoSerpentBow = value
                        if value == false then
                        task.wait()
                        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                        task.wait()
                        end
                        task.spawn(function()
                        while task.wait() do
                            if _G.AutoSerpentBow then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == ("Island Empress" or v.Name == "Island Empress") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat
                                                task.wait()
                                                StartMagnet = true
                                                FastAttack = true
                                                if _G.AutoHaki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not _G.FastAttack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                v.Humanoid:ChangeState(14)
                                                v.Humanoid:ChangeState(16)
                                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            until not _G.AutoSerpentBow or not v.Parent or v.Humanoid.Health <= 0
                                            StartMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                else
                                    toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
                                end
                            end
                        end
                        end)
                    end
                    })

                    Item_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Dark Dagger",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoDarkDagger = value
                            if value == false then
                            task.wait()
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            task.wait()
                            end
                            task.spawn(function()
                            while task.wait() do
                                pcall(function()
                                    if _G.AutoDarkDagger then
                                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
                                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == ("rip_indra True Form" or v.Name == "rip_indra True Form") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                                    repeat
                                                        task.wait()
                                                        StartMagnet = true
                                                        FastAttack = true
                                                        if _G.AutoHaki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                        end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not _G.FastAttack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        v.Humanoid:ChangeState(16)
                                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    until not _G.AutoDarkDagger or not v.Parent or v.Humanoid.Health <= 0
                                                    StartMagnet = false
                                                        FastAttack = false
                                                end
                                            end
                                        else
                                            toTarget(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                                        end
                                    end
                                end)
                            end
                            end)
                        end
                        })

                        ------------(Settings)-------------


            Stats_Section:addLabel({
                Section = 1,
                text = 'Stats',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            local StatsList = {"Melee","Defense","Sword","Gun","Fruit"}

            Stats_Section:addDropdown({
                Section = 1,
                title = "Select Stats List",
                corner = 5,
                List = StatsList,
                keybind = false,
                multi = false,
                callback = function(value) 
                    _G.SelectStats = value
                end
            })

            Stats_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Stats",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.EnabledAutoStats = value
                end
            })

            spawn(function()
                pcall(function()
                    while task.wait() do
                        if _G.EnabledAutoStats then
                            if _G.SelectStats == "Melee" then
                                local args = {
                                    [1] = "AddPoint",
                                    [2] = "Melee",
                                    [3] = 100
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif _G.SelectStats == "Defense" then
                                local args = {
                                    [1] = "AddPoint",
                                    [2] = "Defense",
                                    [3] = 100
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif _G.SelectStats == "Sword" then
                                local args = {
                                    [1] = "AddPoint",
                                    [2] = "Sword",
                                    [3] = 100
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif _G.SelectStats == "Gun" then
                                local args = {
                                    [1] = "AddPoint",
                                    [2] = "Gun",
                                    [3] = 100
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif _G.SelectStats == "Fruit" then
                                local args = {
                                    [1] = "AddPoint",
                                    [2] = "Demon Fruit",
                                    [3] = 100
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                    end
                end)
            end)

            spawn(function()
                while task.wait() do
                    if _G.AutoStatsKaitun then
                        if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Melee",
                                [3] = 100
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        else
                            local args = {
                                [1] = "AddPoint",
                                [2] = "Defense",
                                [3] = 100
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                end
            end)

            Stats_Section:addLabel({
                Section = 1,
                text = 'Shop',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            listShop =  {"Refund Stat [2,500F]","Reroll Race [3,000F]","Haki [25,00$]", "Geppo [10,000$]", "Soru [100,000$]", "KenHaki [750,000$]", "Black Leg [150,000$]", "Electro [500,000$]", "Fishman Karate [750,000$]", "Dragon Claw [1,500F]",
            "Superhuman [3,000,000]", "Death Step [2,500,000/5,000F]", "Sharkman Karate [2,500,000/5,000F]", "Electric Claw [3,000,000/5,000F]", "Dragon Talon [3,000,000/5,000F]", "Godhuman [5,000,000/5,000F]", "SanguineArt [5,000,000/5,000F]", "Katana [1,000]",
            "Cutlass [1,000]", "Duel Katana [12,000]", "Iron Mace [25,000]", "Pipe [100,000]", "Triple Katana [60,000]", "Dual-Headed Blade [400,000]", "Bisento [1,000,000]", "Soul Cane [750,000]", "Slingshot [5,000]", "Musket [8,000]", "Flintlock [10,500]", "Refined Flintlock [65,000]", "Cannon [100,000]", "Kabucha [1500F]",
            "Black Cape [50,000]", "Toemo Ring [500,000]", "Swordsman Hat [150,000]"}

            Stats_Section:addDropdown({
                Section = 1,
                title = "Select Shop List",
                corner = 5,
                List = listShop,
                keybind = false,
                multi = false,
                callback = function(v) 
                    _G.ListShopBuy = v
                end
            })

            Stats_Section:addButton({
                Section = 1,
                title = "Buy On Select Shop",
                disabled = false,
                corner = 5,
                callback = function() 
                    if _G.ListShopBuy == "Refund Stat [2,500F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")   
                    elseif _G.ListShopBuy == "Reroll Race [3,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
                    elseif _G.ListShopBuy == "Haki [25,00$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                    elseif _G.ListShopBuy == "Geppo [10,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                    elseif _G.ListShopBuy == "Soru [100,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
                    elseif _G.ListShopBuy == "KenHaki [750,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                    elseif _G.ListShopBuy == "Black Leg [150,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    elseif _G.ListShopBuy == "Electro [500,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    elseif _G.ListShopBuy == "Fishman Karate [750,000$]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    elseif _G.ListShopBuy == "Dragon Claw [1,500F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
                    elseif _G.ListShopBuy == "Superhuman [3,000,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    elseif _G.ListShopBuy == "Death Step [2,500,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    elseif _G.ListShopBuy == "Sharkman Karate [2,500,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    elseif _G.ListShopBuy == "Electric Claw [3,000,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    elseif _G.ListShopBuy == "Dragon Talon [3,000,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    elseif _G.ListShopBuy == "Godhuman [5,000,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                    elseif _G.ListShopBuy == "SanguineArt [5,000,000/5,000F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
                    elseif _G.ListShopBuy == "Katana [1,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                    elseif _G.ListShopBuy == "Cutlass [1,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                    elseif _G.ListShopBuy == "Duel Katana [12,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
                    elseif _G.ListShopBuy == "Iron Mace [25,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                    elseif _G.ListShopBuy == "Pipe [100,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                    elseif _G.ListShopBuy == "Triple Katana [60,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                    elseif _G.ListShopBuy == "Dual-Headed Blade [400,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                    elseif _G.ListShopBuy == "Bisento [1,000,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                    elseif _G.ListShopBuy == "Soul Cane [750,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
                    elseif _G.ListShopBuy == "Slingshot [5,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
                    elseif _G.ListShopBuy == "Musket [8,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
                    elseif _G.ListShopBuy == "Flintlock [10,500]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
                    elseif _G.ListShopBuy == "Refined Flintlock [65,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
                    elseif _G.ListShopBuy == "Cannon [100,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
                    elseif _G.ListShopBuy == "Kabucha [1500F]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
                    elseif _G.ListShopBuy == "Black Cape [50,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
                    elseif _G.ListShopBuy == "Toemo Ring [500,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
                    elseif _G.ListShopBuy == "Swordsman Hat [150,000]" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
                    end
                end,
            })

            Teleport_Section:addLabel({
                Section = 1,
                text = 'Island',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            TeleportTable = {}

            if World1 then
            TeleportTable = { "StraterIsland", "Marine1", "Marine2", "Midle Town", "Jungle", "Pirate Village", "Desert",
            "Frozen Village", "Colosseum", "Prison", "Mob Leader", "Magma Village", "UnderWater Gate", "UnderWater City",
            "Fountain City", "Sky1", "Sky2", "Sky3" }
            elseif World2 then
            TeleportTable = { "Dock", "Mansion", "Kingdom Of Rose", "Cafe", "Sunflower Field", "Jeramy Mountain", "Colossuem",
            "Factory", "The Bridge", "Green Bit", "Graveyard", "Dark Area", "Snow Mountain", "Hot Island", "Cold Island",
            "Ice Castle", "Usopp's Island", "inscription Island", "Forgotten Island", "Ghost Ship" }
            elseif World3 then
            TeleportTable = { "Port Town", "Hydra Island", "Gaint Tree", "Mansion", "Castle on the Sea", "Haunted Castle",
            "Icecream Island", "Peanut Island", "Lab", "Cake Loaf", "TikiOutpost" }
            end

            Teleport_Section:addDropdown({
                Section = 1,
                title = "Select Island",
                corner = 5,
                List = TeleportTable,
                keybind = false,
                multi = false,
                callback = function(v) 
                    _G.SelectLocalTeleport = v
                end
            })

            Teleport_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Teleport To Island",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                _G.TeleportIsland = value
                if _G.TeleportIsland then
if World1  then
    if _G.SelectLocalTeleport == "Jones Salad" then
        toTarget(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
    end
    if _G.SelectLocalTeleport == "Marine1" then
        toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
    end
    if _G.SelectLocalTeleport == "Marine2" then
        toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
    end
    if _G.SelectLocalTeleport == "Midle Town" then
        toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
    end
    if _G.SelectLocalTeleport == "Jungle" then
        toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
    end
    if _G.SelectLocalTeleport == "Pirate Village" then
        toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
    end
    if _G.SelectLocalTeleport == "Desert" then
        toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
    end
    if _G.SelectLocalTeleport == "Frozen Village" then
        toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
    end
    if _G.SelectLocalTeleport == "Colosseum" then
        toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
    end
    if _G.SelectLocalTeleport == "Prison" then
        toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
    end
    if _G.SelectLocalTeleport == "Mob Leader" then
        toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
    end
    if _G.SelectLocalTeleport == "Magma Village" then
        toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
    end
    if _G.SelectLocalTeleport == "UnderWater Gate" then
        toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
    end
    if _G.SelectLocalTeleport == "UnderWater City" then
        toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
    end
    if _G.SelectLocalTeleport == "Fountain City" then
        toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
    end
    if _G.SelectLocalTeleport == "Sky1" then
        toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
    end
    if _G.SelectLocalTeleport == "Sky2" then
        toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
    end
    if _G.SelectLocalTeleport == "Sky3" then
        toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
    end
elseif World2 then
    if _G.SelectLocalTeleport == "Dock" then
        toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
    end
    if _G.SelectLocalTeleport == "Mansion" then
        toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
    end
    if _G.SelectLocalTeleport == "Kingdom Of Rose" then
        toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
    end
    if _G.SelectLocalTeleport == "Cafe" then
        toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
    end
    if _G.SelectLocalTeleport == "Sunflower Field" then
        toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
    end
    if _G.SelectLocalTeleport == "Jeramy Mountain" then
        toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
    end
    if _G.SelectLocalTeleport == "Colossuem" then
        toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
    end
    if _G.SelectLocalTeleport == "Factory" then
        toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
    end
    if _G.SelectLocalTeleport == "The Bridge" then
        toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
    end
    if _G.SelectLocalTeleport == "Green Bit" then
        toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
    end
    if _G.SelectLocalTeleport == "Graveyard" then
        toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
    end
    if _G.SelectLocalTeleport == "Dark Area" then
        toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
    end
    if _G.SelectLocalTeleport == "Snow Mountain" then
        toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
    end
    if _G.SelectLocalTeleport == "Hot Island" then
        toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
    end
    if _G.SelectLocalTeleport == "Cold Island" then
        toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
    end
    if _G.SelectLocalTeleport == "Ice Castle" then
        toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
    end
    if _G.SelectLocalTeleport == "Usopp's Island" then
        toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
    end
    if _G.SelectLocalTeleport == "inscription Island" then
        toTarget(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
    end
    if _G.SelectLocalTeleport == "Forgotten Island" then
        toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
    end
    if _G.SelectLocalTeleport == "Ghost Ship" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
    end
elseif World3 then
    if _G.SelectLocalTeleport == "Port Town" then
        toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
    end
    if _G.SelectLocalTeleport == "Mansion" then
        local args = {
            [1] = "requestEntrance",
            [2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
    if _G.SelectLocalTeleport == "Castle on the Sea" then
        local args = {
            [1] = "requestEntrance",
            [2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
    if _G.SelectLocalTeleport == "Hydra Island" then
        toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
    end
    if _G.SelectLocalTeleport == "Gaint Tree" then
        toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
    end
    if _G.SelectLocalTeleport == "Haunted Castle" then
        toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
    end
    if _G.SelectLocalTeleport == "Icecream Island" then
        toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572,
            2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
    end
    if _G.SelectLocalTeleport == "Peanut Island" then
        toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837,
            -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
    end
    if _G.SelectLocalTeleport == "Lab" then
        toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
    end
    if _G.SelectLocalTeleport == "Cake Loaf" then
        toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
    end
    if _G.SelectLocalTeleport == "TikiOutpost" then
        toTarget(CFrame.new(-16753.5977, 189.528107, 451.797333, -0.777145505, 0, -0.629321039, 0, 1, 0, 0.629321039, 0, -0.777145505))
    end
    end
end

end
})                    
            Teleport_Section:addButton({
            Section = 1,
            title = "Stop Teleport",
            disabled = false,
            corner = 5,
            callback = function() 
                toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
            })

            Fruit_Section:addLabel({
                Section = 1,
                text = 'Devil Fruit',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

            Fruit_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Bring Fruit",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.Auto_Bring_Fruit = value
                end
            })

            Fruit_Section:addCheckbox({
                Section = 1,
                default = false,
                corner = 5,
                title = "Auto Random Fruit",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.AutoBuyRandomFruits = value
                end
            })

            Fruit_Section:addButton({
                Section = 1,
                title = "Devil Fruit Shop",
                disabled = false,
                corner = 5,
                callback = function() 
                    local args = {
                        [1] = "GetFruits"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
                end
            })

            spawn(function()
                while task.wait() do
                if _G.AutoBuyRandomFruits then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                end
                end
                end)
        
                    Fruit_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Store Fruits",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoStoreFruits = value
                        end
                    })

                    Fruit_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Store Fruits",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoStoreFruits = value
                        end
                    })

                    spawn(function()
                        while wait() do
                            if _G.Auto_Bring_Fruit then
                                pcall(function()
                                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                                        if v:IsA("Tool") and string.find(v.Name,"Fruit") then 
                                            if (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                                Bypass(v.Handle.CFrame * CFrame.new(0,50,0))
                                                repeat wait() Bypass(v.Handle.CFrame * CFrame.new(0,50,0)) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
                                                repeat wait() two(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
                                            else
                                                repeat wait() two(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.Auto_Bring_Fruit
                                            end
                                        end
                                    end
                                end)
                            end
                        end
                    end)
                    function DropFruit()
                        pcall(function()
                            game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
                            game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
                            local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
                            wait(.3)
                            for i,v in pairs(invenfruit:GetChildren()) do
                                if string.find(v.Name,"-") then
                                    for _,Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                        FruitStoreF = string.split(Backpack.Name, " ")[1]
                                        FruitStoreR = FruitStoreF.."-"..FruitStoreF
                                        if v.Name == FruitStoreR then
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
                                        end												
                                    end
                                end
                            end
                            for i,v in pairs(invenfruit:GetChildren()) do
                                if string.find(v.Name,"-") then
                                    for _,Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                                        FruitStoreF = string.split(Character.Name, " ")[1]
                                        FruitStoreR = FruitStoreF.."-"..FruitStoreF
                                        if v.Name == FruitStoreR then
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
                                        end												
                                    end
                                end
                            end
                        end)
                    end
                    spawn(function()
                    while task.wait() do
                        if _G.AutoStoreFruits then
                            pcall(function()
                                if _G.AutoStore_Drop then
                                DropFruit()
                                end
                                task.wait()
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon",
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard",
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                                end
                            end)
                        end
                    end
                end)

                Raid_Section:addLabel({
                    Section = 1,
                    text = 'Dungeon',
                    textsize = nil, -- auto
                    textxalignment = Enum.TextXAlignment.Left,
                    textyalignment = Enum.TextYAlignment.Center,  
                }) 

                local SelectRaids = {
                    "Flame",
                    "Ice",
                    "Quake",
                    "Light",
                    "Dark",
                    "String",
                    "Rumble",
                    "Magma",
                    "Human: Buddha",
                    "Sand",
                    "Bird: Phoenix",
                    "Dough"
                    }

                    Raid_Section:addDropdown({
                        Section = 1,
                        title = " Select Raid List",
                        corner = 5,
                        List = SelectRaids,
                        keybind = false,
                        multi = false,
                        callback = function(v) 
                            _G.SelectRaids = v
                        end
                    })

                    Raid_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Raids",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoRaids = value
                            if value == false then
                                task.wait()
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                task.wait()
                            end
                        end
                    })

                    Raid_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Kill Aura",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.KillAura = value
                        end
                    })

                    
                    Raid_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Next Island",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoNextPlace = value
                            if value == false then
                                toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            end
                        end
                    })

                    Raid_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Awakened",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoAwakened = value
                        end
                    })

                    task.spawn(function()
                        while task.wait() do
                            if _G.AutoRaids and not _G.AutoFarm then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                                        if World2 then
                                            fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                                        elseif World3 then
                                            fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                                        end
                                        wait(0)
                                    elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                                        pcall(function()
                                            repeat
                                                task.wait()
                                                if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x, 60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
                                                    if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                                        Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
                                                    elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10))
                                                    end
                                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x, 60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
                                                    if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                                        Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
                                                    elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame * CFrame.new(4, 65, 10))
                                                    end
                                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x, 60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
                                                    if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                                        Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
                                                    elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10))
                                                    end
                                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x, 60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
                                                    if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                                        Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
                                                    elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame *CFrame.new(4, 65, 10))
                                                    end
                                                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x, 60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
                                                    if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                                        Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
                                                    elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10))
                                                    end
                                                end
                                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if _G.AutoRaids and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                                                        repeat
                                                            task.wait()
                                                            v.Humanoid.Health = 0
                                                            v:BreakJoints()
                                                        until not _G.AutoRaids or v.Humanoid.Health <= 0 or not v.Parent
                                                    end
                                                end
                                                if _G.AutoAwakened then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                                                end
                                            until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
                                            if _G.AutoAwakened then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                                            end
                                        end)
                                    end
                                else
                                    if _G.AutoAwakened then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                                    end
                                    local args = {
                                        [1] = "RaidsNpc",
                                        [2] = "Select",
                                        [3] = tostring(_G.SelectRaids)
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end
                        end
                        end)
                        
                        
                        spawn(function()
                            while task.wait(0) do
                                if _G.KillAura then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                       -- if v.Humanoid.Health > 0 then
                                            pcall(function()
                                                repeat task.wait(.1)
                                                    v.Humanoid.Health = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                until not _G.KillAura 
                                            end)
                                       -- end
                                    end
                                end
                            end
                        end)
                        
                        spawn(function()
                        pcall(function()
                            while task.wait() do
                                if _G.AutoNextPlace then
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                            toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10))
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                            toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *  CFrame.new(4, 65, 10))
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                            toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10))
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                            toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10))
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                            toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10))
                                        end
                                    elseif World2 then
                                        toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                                    elseif World3 then
                                        toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                                    end
                                end
                            end
                        end)
                        end)

                        Raid_Section:addLabel({
                            Section = 1,
                            text = 'ESP',
                            textsize = nil, -- auto
                            textxalignment = Enum.TextXAlignment.Left,
                            textyalignment = Enum.TextYAlignment.Center,  
                        }) 

                        local function round(n)
                            return math.floor(tonumber(n) + 0.5)
                            end
                            
                            Number = math.random(1, 1000000)
                            function ESPMirageIsland()
                            pcall(function()
                                if _G.ESPMirageIsland then
                                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                        pcall(function()
                                            if v.Name == 'Center' then
                                                if not v:FindFirstChild('EspMirage') then
                                                    local bill = Instance.new('BillboardGui',v)
                                                    bill.Name = 'EspMirage'
                                                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                                    bill.Size = UDim2.new(1,200,1,30)
                                                    bill.Adornee = v
                                                    bill.AlwaysOnTop = true
                                                    local name = Instance.new('TextLabel',bill)
                                                    name.Font = "GothamBold"
                                                    name.FontSize = "Size14"
                                                    name.TextWrapped = true
                                                    name.Size = UDim2.new(1,0,1,0)
                                                    name.TextYAlignment = 'Top'
                                                    name.BackgroundTransparency = 1
                                                    name.TextStrokeTransparency = 0.5
                                                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                                                    name.Text = ("Mirage Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
                                                else
                                                    v.EspMirage.TextLabel.Text = ("Mirage Island" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
                                                    v.EspMirage.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                                end
                                            end
                                        end)
                                    end
                                else
                                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                        if v.Name == 'Center' then
                                            if v:FindFirstChild('EspMirage') then
                                                v:FindFirstChild('EspMirage'):Destroy()
                                            end
                                        end
                                    end
                                end
                            end)
                            end
                            
                            spawn(function()
                            while wait() do 
                                if _G.ESPMirageIsland then
                                    ESPMirageIsland()
                                end
                            end
                            end)

                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = false,
                                corner = 5,
                                title = "ESP [ Mirage Island ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    _G.ESPMirageIsland = value
                                    ESPMirageIsland()
                                end
                            })
                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = ESPPlayer,
                                corner = 5,
                                title = "ESP [ Player ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    ESPPlayer = value
                                    while ESPPlayer do wait()
                                        UpdatePlayerChams()
                                    end
                                end
                            })
                            spawn(function()
                                while wait() do
                                    if ESPPlayer then
                                        UpdatePlayerChams()
                                    end
                                end
                            end)
                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = ChestESP,
                                corner = 5,
                                title = "ESP [ Chest ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    ChestESP = value
                                    while ChestESP do wait()
                                        UpdateChestEsp() 
                                    end
                                end
                            })
                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = DevilFruitESP,
                                corner = 5,
                                title = "ESP [ Devil Fruit ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    DevilFruitESP = value
                                    while DevilFruitESP do wait()
                                        UpdateBfEsp() 
                                    end
                                end
                            })

                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = FlowerESP,
                                corner = 5,
                                title = "ESP [ Flower ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    FlowerESP = value
                                    while FlowerESP do wait()
                                        UpdateFlowerEsp() 
                                    end
                                end
                            })

                            Raid_Section:addCheckbox({
                                Section = 1,
                                default = IslandESP,
                                corner = 5,
                                title = "ESP [ ESP Island ]",
                                disabled = false,
                                Group = nil, -- nil == no group
                                callback = function(value) 
                                    IslandESP = value
                                    while IslandESP do wait()
                                        UpdateIslandESP() 
                                    end
                                end
                            })

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
                                                name.Font = "Code"
                                                name.FontSize = "Size14"
                                                name.TextWrapped = true
                                                name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                                                name.Size = UDim2.new(1, 0, 1, 0)
                                                name.TextYAlignment = 'Top'
                                                name.BackgroundTransparency = 1
                                                name.TextStrokeTransparency = 0.5
                                                if v.Team == game.Players.LocalPlayer.Team then
                                                    name.TextColor3 = Color3.new(255, 0, 0)
                                                else
                                                    name.TextColor3 = Color3.new(0, 0, 255)
                                                end
                                            else
                                                v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
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
                                function UpdateSeaBeastsESP()
                                for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                pcall(function()
                                    if SeaBeastsESP then
                                        if v.Name ~= "SeaBeast" then
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
                                                v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
                                                name.Font = "Code"
                                                name.FontSize = "Size14"
                                                name.TextWrapped = true
                                                name.Size = UDim2.new(1, 0, 1, 0)
                                                name.TextYAlignment = 'Top'
                                                name.BackgroundTransparency = 1
                                                name.TextStrokeTransparency = 0.5
                                                name.TextColor3 = Color3.fromRGB(67, 186, 28)
                                            else
                                                v['NameEsp'].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
                                function UpdateChestEsp()
                                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
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
                                                    name.Font = "Code"
                                                    name.FontSize = "Size14"
                                                    name.TextWrapped = true
                                                    name.Size = UDim2.new(1, 0, 1, 0)
                                                    name.TextYAlignment = 'Top'
                                                    name.BackgroundTransparency = 1
                                                    name.TextStrokeTransparency = 0.5
                                                    name.TextColor3 = Color3.fromRGB(186, 186, 28)
                                                    if v.Name == "Chest1" then
                                                        name.Text = ("Chest 1" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                                                    end
                                                    if v.Name == "Chest2" then
                                                        name.Text = ("Chest 2" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                                                    end
                                                    if v.Name == "Chest3" then
                                                        name.Text = ("Chest 3" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                                                    end
                                                else
                                                    v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
                                function UpdateBfEsp()
                                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
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
                                                name.Font = "Code"
                                                name.FontSize = "Size14"
                                                name.TextWrapped = true
                                                name.Size = UDim2.new(1, 0, 1, 0)
                                                name.TextYAlignment = 'Top'
                                                name.BackgroundTransparency = 1
                                                name.TextStrokeTransparency = 0.5
                                                name.TextColor3 = Color3.fromRGB(255, 255, 255)
                                                name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                                            else
                                                v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
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
                                function UpdateFlowerEsp()
                                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
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
                                                name.Font = "Code"
                                                name.FontSize = "Size14"
                                                name.TextWrapped = true
                                                name.Size = UDim2.new(1, 0, 1, 0)
                                                name.TextYAlignment = 'Top'
                                                name.BackgroundTransparency = 1
                                                name.TextStrokeTransparency = 0.5
                                                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                                if v.Name == "Flower1" then
                                                    name.Text = ("Blue Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                                                    name.TextColor3 = Color3.fromRGB(0, 0, 255)
                                                end
                                                if v.Name == "Flower2" then
                                                    name.Text = ("Red Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                                                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                                end
                                            else
                                                v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
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
                                            name.Font = "Code"
                                            name.FontSize = "Size14"
                                            name.TextWrapped = true
                                            name.Size = UDim2.new(1, 0, 1, 0)
                                            name.TextYAlignment = 'Top'
                                            name.BackgroundTransparency = 1
                                            name.TextStrokeTransparency = 0.5
                                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                            name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                                        else
                                            v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
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
                                            name.Font = "Code"
                                            name.FontSize = "Size14"
                                            name.TextWrapped = true
                                            name.Size = UDim2.new(1, 0, 1, 0)
                                            name.TextYAlignment = 'Top'
                                            name.BackgroundTransparency = 1
                                            name.TextStrokeTransparency = 0.5
                                            name.TextColor3 = Color3.fromRGB(255, 174, 0)
                                            name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                                        else
                                            v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
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
                                            name.Font = "Code"
                                            name.FontSize = "Size14"
                                            name.TextWrapped = true
                                            name.Size = UDim2.new(1, 0, 1, 0)
                                            name.TextYAlignment = 'Top'
                                            name.BackgroundTransparency = 1
                                            name.TextStrokeTransparency = 0.5
                                            name.TextColor3 = Color3.fromRGB(251, 255, 0)
                                            name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                                        else
                                            v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                                        end
                                    else
                                        if v.Handle:FindFirstChild('NameEsp' .. Number) then
                                            v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                                        end
                                    end
                                end
                                end
                                end
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
                                                name.Font = "Code"
                                                name.FontSize = "Size14"
                                                name.TextWrapped = true
                                                name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                                                name.Size = UDim2.new(1, 0, 1, 0)
                                                name.TextYAlignment = 'Top'
                                                name.BackgroundTransparency = 1
                                                name.TextStrokeTransparency = 0.5
                                                if v.Team == game.Players.LocalPlayer.Team then
                                                    name.TextColor3 = Color3.new(255, 0, 0)
                                                else
                                                    name.TextColor3 = Color3.new(0, 0, 255)
                                                end
                                            else
                                                v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. ' | ' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. round(v.Character.Humanoid.Health * 100 / v.Character.Humanoid.MaxHealth) .. '%')
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


            Settings_Section:addLabel({
                Section = 1,
                text = 'Setting',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 

                local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
                local CombatFrameworkR = getupvalues(CombatFramework)[2]
                local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
                local RigControllerR = getupvalues(RigController)[2]
                
                function CurrentWeapon()
                    local ac = CombatFrameworkR.activeController
                    local ret = ac.blades[1]
                    if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
                    pcall(function()
                        while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
                    end)
                    if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
                    return ret
                end
                
                function getAllBladeHitsPlayers(Sizes)
                    local Hits = {}
                    local Client = game.Players.LocalPlayer
                    local Characters = game:GetService("Workspace").Characters:GetChildren()
                    for i=1,#Characters do local v = Characters[i]
                        local Human = v:FindFirstChildOfClass("Humanoid")
                        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                            table.insert(Hits,Human.RootPart)
                        end
                    end
                    return Hits
                end
                
                function getAllBladeHits(Sizes)
                    local Hits = {}
                    local Client = game.Players.LocalPlayer
                    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
                    for i=1,#Enemies do local v = Enemies[i]
                        local Human = v:FindFirstChildOfClass("Humanoid")
                        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                            table.insert(Hits,Human.RootPart)
                        end
                    end
                    return Hits
                end
                
                function DamageAura()
                    local ac = CombatFrameworkR.activeController
                    if ac and ac.equipped then
                        for indexincrement = 1, 1 do
                            local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
                            if #bladehit or #a > 0 then
                                local AcAttack8 = debug.getupvalue(ac.attack, 5)
                                local AcAttack9 = debug.getupvalue(ac.attack, 6)
                                local AcAttack7 = debug.getupvalue(ac.attack, 4)
                                local AcAttack10 = debug.getupvalue(ac.attack, 7)
                                local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                                local NumberAc13 = AcAttack7 * 798405
                                (function()
                                    NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                                    AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                                    AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                                end)()
                                AcAttack10 = AcAttack10 + 1
                                debug.setupvalue(ac.attack, 5, AcAttack8)
                                debug.setupvalue(ac.attack, 6, AcAttack9)
                                debug.setupvalue(ac.attack, 4, AcAttack7)
                                debug.setupvalue(ac.attack, 7, AcAttack10)
                                for k, v in pairs(ac.animator.anims.basic) do
                                    v:Play(0.01,0.01,0.01)
                                end                 
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
                                end
                            end
                        end
                    end
                end
                
                function AttackFunction()
                    local ac = CombatFrameworkR.activeController
                    if ac and ac.equipped then
                        for indexincrement = 1, 1 do
                            local bladehit = getAllBladeHits(60)
                            if #bladehit > 0 then
                                local AcAttack8 = debug.getupvalue(ac.attack, 5)
                                local AcAttack9 = debug.getupvalue(ac.attack, 6)
                                local AcAttack7 = debug.getupvalue(ac.attack, 4)
                                local AcAttack10 = debug.getupvalue(ac.attack, 7)
                                local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                                local NumberAc13 = AcAttack7 * 798405
                                (function()
                                    NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                                    AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                                    AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                                end)()
                                AcAttack10 = AcAttack10 + 1 
                                debug.setupvalue(ac.attack, 5, AcAttack8)
                                debug.setupvalue(ac.attack, 6, AcAttack9)
                                debug.setupvalue(ac.attack, 4, AcAttack7)
                                debug.setupvalue(ac.attack, 7, AcAttack10)
                                for k, v in pairs(ac.animator.anims.basic) do
                                    v:Play(0.01,0.01,0.01)
                                end                 
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
                                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
                                end
                            end
                        end
                    end
                end
                
                task.spawn(function()
                    pcall(function()
                    while task.wait(_G.Fast_Delay) do
                        if FastAttack then
                            AttackFunction()
                           end
                        end
                    end)
                end)

                Settings_Section:addCheckbox({
                    Section = 1,
                    default = true,
                    corner = 5,
                    title = "Auto Haki",
                    disabled = false,
                    Group = nil, -- nil == no group
                    callback = function(value) 
                        _G.AutoHaki = value
                    end
                })

                task.spawn(function()
                    while task.wait() do
                    pcall(function()
                        if _G.AutoHaki then
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                        end
                    end)
                    end
                    end)

                    Settings_Section:addCheckbox({
                        Section = 1,
                        default = false,
                        corner = 5,
                        title = "Auto Ken",
                        disabled = false,
                        Group = nil, -- nil == no group
                        callback = function(value) 
                            _G.AutoKen = value
                        end
                    })

                    spawn(function()
                        while task.wait() do
                        pcall(function()
                            if _G.AutoKen then  
                                if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                else
                                    wait(1)
                                    game:service('VirtualUser'):CaptureController()
                                    game:service('VirtualUser'):SetKeyDown('0x65')
                                    wait(2)
                                    game:service('VirtualUser'):SetKeyUp('0x65')
                                end
                            end
                        end)
                        end
                        end)
                        _G.BringMob = true
            Settings_Section:addCheckbox({
                Section = 1,
                default = true,
                corner = 5,
                title = "Bring Mon",
                disabled = false,
                Group = nil, -- nil == no group
                callback = function(value) 
                    _G.BringMob = value
                end
            })

            task.spawn(function()
                while task.wait() do
                if _G.BringMob then
                pcall(function()
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if not string.find(v.Name,"Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                  if InMyNetWork(v.HumanoidRootPart) then
                    if InMyNetWork(v.HumanoidRootPart) then
                  v.HumanoidRootPart.CFrame = FarmPos
                  v.HumanoidRootPart.CanCollide = false
                  v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                  if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                  end
                end
                  end
                  end
                  end)
                end
        
            end
        end)


           Settings_Section:addButton({
                Section = 1,
                title = "Remove Sound",
                disabled = false,
                corner = 5,
                callback = function() 
                    for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                        if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                        v:Destroy()
                        end
                    end
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Remove Effect Damage",
                disabled = false,
                corner = 5,
                callback = function() 
                    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
                end
            })

            Settings_Section:addLabel({
                Section = 1,
                text = 'Misc',
                textsize = nil, -- auto
                textxalignment = Enum.TextXAlignment.Left,
                textyalignment = Enum.TextYAlignment.Center,  
            }) 
            Settings_Section:addButton({
                Section = 1,
                title = "Hop Low Player Server",
                disabled = false,
                corner = 5,
                callback = function() 
                    Teleport()
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Hop Low Player Server",
                disabled = false,
                corner = 5,
                callback = function() 
                    Hop()
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Rejoin",
                disabled = false,
                corner = 5,
                callback = function() 
                    local ts = game:GetService("TeleportService")
                    local p = game.Players.LocalPlayer
                    ts:Teleport(game.PlaceId, p)
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Join Pirates Team",
                disabled = false,
                corner = 5,
                callback = function() 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Join Marines Team",
                disabled = false,
                corner = 5,
                callback = function() 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
                end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Show Awakened Skill",
                disabled = false,
                corner = 5,
                callback = function() 
                    local args = {
                        [1] = "getAwakenedAbilities"
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
                    end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Show Title Name",
                disabled = false,
                corner = 5,
                callback = function() 
                    local args = {
                        [1] = "getTitles"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
                    end
            })
            Settings_Section:addButton({
                Section = 1,
                title = "Show Color Haki",
                disabled = false,
                corner = 5,
                callback = function() 
                    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
                    end
            })
            function InfAbility()
                if _G.InfAbility then
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        local inf = Instance.new("ParticleEmitter")
                        inf.Acceleration = Vector3.new(0, 0, 0)
                        inf.Archivable = true
                        inf.Drag = 20
                        inf.EmissionDirection = Enum.NormalId.Top
                        inf.Enabled = true
                        inf.Lifetime = NumberRange.new(0.2, 0.2)
                        inf.LightInfluence = 0
                        inf.LockedToPart = true
                        inf.Name = "Agility"
                        inf.Rate = 500
                        local numberKeypoints2 = {
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 4),
                        }
                        inf.Size = NumberSequence.new(numberKeypoints2)
                        inf.RotSpeed = NumberRange.new(999, 9999)
                        inf.Rotation = NumberRange.new(0, 0)
                        inf.Speed = NumberRange.new(30, 30)
                        inf.SpreadAngle = Vector2.new(360, 360)
                        inf.Texture = "rbxassetid://243098098"
                        inf.VelocityInheritance = 0
                        inf.ZOffset = 2
                        inf.Transparency = NumberSequence.new(0)
                        inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 255))
                        inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    end
                else
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
                    end
                end
                end
                function Fly()
                    local main = Instance.new("ScreenGui")
                    local Frame = Instance.new("Frame")
                    local goup = Instance.new("TextButton")
                    local godown = Instance.new("TextButton")
                    local onof = Instance.new("TextButton")
                    local plus = Instance.new("TextButton")
                    local speed = Instance.new("TextLabel")
                    local mine = Instance.new("TextButton")
                    local Close = Instance.new("TextButton")
                    local UICorner = Instance.new("UICorner")
                    local minimize = Instance.new("TextButton")
                    local UICorner_2 = Instance.new("UICorner")
                    local minimize2 = Instance.new("TextButton")
                    local UICorner_3 = Instance.new("UICorner")
                    main.Name = "main"
                    main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                    main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    Frame.Parent = main
                    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Frame.BorderSizePixel = 2
                    Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
                    Frame.Size = UDim2.new(0, 190, 0, 57)
                    goup.Name = "go up"
                    goup.Parent = Frame
                    goup.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    goup.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    goup.Position = UDim2.new(0.589473605, 0, 0, 0)
                    goup.Size = UDim2.new(0, 78, 0, 29)
                    goup.Font = Enum.Font.SourceSans
                    goup.Text = "UP"
                    goup.TextColor3 = Color3.fromRGB(0, 0, 0)
                    goup.TextScaled = true
                    goup.TextSize = 14.000
                    goup.TextWrapped = true
                    godown.Name = "go down"
                    godown.Parent = Frame
                    godown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    godown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    godown.Position = UDim2.new(0.589473605, 0, 0.508771956, 0)
                    godown.Size = UDim2.new(0, 78, 0, 28)
                    godown.Font = Enum.Font.SourceSans
                    godown.Text = "DOWN"
                    godown.TextColor3 = Color3.fromRGB(0, 0, 0)
                    godown.TextScaled = true
                    godown.TextSize = 14.000
                    godown.TextWrapped = true
                    onof.Name = "onof"
                    onof.Parent = Frame
                    onof.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    onof.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    onof.BorderSizePixel = 0
                    onof.Position = UDim2.new(-0.00243988028, 0, 0.491228074, 0)
                    onof.Size = UDim2.new(0, 60, 0, 28)
                    onof.Font = Enum.Font.SourceSans
                    onof.Text = "Fly"
                    onof.TextColor3 = Color3.fromRGB(0, 0, 0)
                    onof.TextScaled = true
                    onof.TextSize = 14.000
                    onof.TextWrapped = true
                    plus.Name = "plus"
                    plus.Parent = Frame
                    plus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    plus.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    plus.Position = UDim2.new(0.315789551, 0, 0, 0)
                    plus.Size = UDim2.new(0, 56, 0, 28)
                    plus.Font = Enum.Font.SourceSans
                    plus.Text = "+"
                    plus.TextColor3 = Color3.fromRGB(0, 0, 0)
                    plus.TextScaled = true
                    plus.TextSize = 14.000
                    plus.TextWrapped = true
                    speed.Name = "speed"
                    speed.Parent = Frame
                    speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    speed.Position = UDim2.new(8.03094196e-08, 0, 0, 0)
                    speed.Size = UDim2.new(0, 59, 0, 28)
                    speed.Font = Enum.Font.SourceSans
                    speed.Text = "1"
                    speed.TextColor3 = Color3.fromRGB(0, 0, 0)
                    speed.TextScaled = true
                    speed.TextSize = 14.000
                    speed.TextWrapped = true
                    mine.Name = "mine"
                    mine.Parent = Frame
                    mine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    mine.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    mine.Position = UDim2.new(0.316052645, 0, 0.508771956, 0)
                    mine.Size = UDim2.new(0, 56, 0, 28)
                    mine.Font = Enum.Font.SourceSans
                    mine.Text = "-"
                    mine.TextColor3 = Color3.fromRGB(0, 0, 0)
                    mine.TextScaled = true
                    mine.TextSize = 14.000
                    mine.TextWrapped = true
                    Close.Name = "Close"
                    Close.Parent = Frame
                    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Close.BorderSizePixel = 0
                    Close.Position = UDim2.new(-0.00526315812, 0, 0.61403507, 27)
                    Close.Size = UDim2.new(0, 36, 0, 19)
                    Close.Font = Enum.Font.SourceSans
                    Close.Text = "X"
                    Close.TextColor3 = Color3.fromRGB(0, 0, 0)
                    Close.TextSize = 20.000
                    Close.TextWrapped = true
                    UICorner.Parent = Close
                    minimize.Name = "minimize"
                    minimize.Parent = Frame
                    minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    minimize.BorderSizePixel = 0
                    minimize.Position = UDim2.new(0.0894736871, 44, 0.61403507, 27)
                    minimize.Size = UDim2.new(0, 36, 0, 19)
                    minimize.Font = Enum.Font.SourceSans
                    minimize.Text = "Hide"
                    minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
                    minimize.TextSize = 20.000
                    minimize.TextWrapped = true   
                    UICorner_2.Parent = minimize
                    minimize2.Name = "minimize2"
                    minimize2.Parent = Frame
                    minimize2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    minimize2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    minimize2.BorderSizePixel = 0
                    minimize2.Position = UDim2.new(0.0894736871, 44, -0.491228074, 57)
                    minimize2.Size = UDim2.new(0, 36, 0, 19)
                    minimize2.Visible = false
                    minimize2.Font = Enum.Font.SourceSans
                    minimize2.Text = "open"
                    minimize2.TextColor3 = Color3.fromRGB(0, 0, 0)
                    minimize2.TextSize = 20.000
                    minimize2.TextWrapped = true
                    UICorner_3.Parent = minimize2
                    speeds = 10
                    local speaker = game:GetService("Players").LocalPlayer
                    local chr = game.Players.LocalPlayer.Character
                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                    nowe = false
                    Frame.Active = true -- main = gui
                    Frame.Draggable = true
                    onof.MouseButton1Down:connect(function()
                        if nowe == true then
                            nowe = false
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
                            speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                        else 
                            nowe = true
                            for i = 1, speeds do
                                spawn(function()
                                    local hb = game:GetService("RunService").Heartbeat	
                                    tpwalking = true
                                    local chr = game.Players.LocalPlayer.Character
                                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                        if hum.MoveDirection.Magnitude > 0 then
                                            chr:TranslateBy(hum.MoveDirection)
                                        end
                                    end
                    
                                end)
                            end
                            game.Players.LocalPlayer.Character.Animate.Disabled = true
                            local Char = game.Players.LocalPlayer.Character
                            local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
                    
                            for i,v in next, Hum:GetPlayingAnimationTracks() do
                                v:AdjustSpeed(0)
                            end
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
                            speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
                            speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
                            local plr = game.Players.LocalPlayer
                            local torso = plr.Character.Torso
                            local flying = true
                            local deb = true
                            local ctrl = {f = 0, b = 0, l = 0, r = 0}
                            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                            local maxspeed = 50
                            local speed = 0
                            local bg = Instance.new("BodyGyro", torso)
                            bg.P = 9e4
                            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                            bg.cframe = torso.CFrame
                            local bv = Instance.new("BodyVelocity", torso)
                            bv.velocity = Vector3.new(0,0.1,0)
                            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                            if nowe == true then
                                plr.Character.Humanoid.PlatformStand = true
                            end
                            while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                                game:GetService("RunService").RenderStepped:Wait()
                                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                    speed = speed+.5+(speed/maxspeed)
                                    if speed > maxspeed then
                                        speed = maxspeed
                                    end
                                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                    speed = speed-1
                                    if speed < 0 then
                                        speed = 0
                                    end
                                end
                                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                else
                                    bv.velocity = Vector3.new(0,0,0)
                                end
                                --	game.Players.LocalPlayer.Character.Animate.Disabled = true
                                bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                            end
                            ctrl = {f = 0, b = 0, l = 0, r = 0}
                            lastctrl = {f = 0, b = 0, l = 0, r = 0}
                            speed = 0
                            bg:Destroy()
                            bv:Destroy()
                            plr.Character.Humanoid.PlatformStand = false
                            game.Players.LocalPlayer.Character.Animate.Disabled = false
                            tpwalking = false
                        else
                            local plr = game.Players.LocalPlayer
                            local UpperTorso = plr.Character.UpperTorso
                            local flying = true
                            local deb = true
                            local ctrl = {f = 0, b = 0, l = 0, r = 0}
                            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                            local maxspeed = 50
                            local speed = 0
                            local bg = Instance.new("BodyGyro", UpperTorso)
                            bg.P = 9e4
                            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                            bg.cframe = UpperTorso.CFrame
                            local bv = Instance.new("BodyVelocity", UpperTorso)
                            bv.velocity = Vector3.new(0,0.1,0)
                            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                            if nowe == true then
                                plr.Character.Humanoid.PlatformStand = true
                            end
                            while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                                wait()
                    
                                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                    speed = speed+.50+(speed/maxspeed)
                                    if speed > maxspeed then
                                        speed = maxspeed
                                    end
                                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                    speed = speed-1
                                    if speed < 0 then
                                        speed = 0
                                    end
                                end
                                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                else
                                    bv.velocity = Vector3.new(0,0,0)
                                end
                    
                                bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                            end
                            ctrl = {f = 0, b = 0, l = 0, r = 0}
                            lastctrl = {f = 0, b = 0, l = 0, r = 0}
                            speed = 0
                            bg:Destroy()
                            bv:Destroy()
                            plr.Character.Humanoid.PlatformStand = false
                            game.Players.LocalPlayer.Character.Animate.Disabled = false
                            tpwalking = false
                        end
                    end) 
                    local tis
                    goup.MouseButton1Down:connect(function()
                        tis = goup.MouseEnter:connect(function()
                            while tis do
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
                            end
                        end)
                    end)
                    goup.MouseLeave:connect(function()
                        if tis then
                            tis:Disconnect()
                            tis = nil
                        end
                    end)
                    local dis
                    godown.MouseButton1Down:connect(function()
                        dis = godown.MouseEnter:connect(function()
                            while dis do
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
                            end
                        end)
                    end)
                    godown.MouseLeave:connect(function()
                        if dis then
                            dis:Disconnect()
                            dis = nil
                        end
                    end) 
                    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
                        wait(0.7)
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                        game.Players.LocalPlayer.Character.Animate.Disabled = false
                    
                    end)
                    plus.MouseButton1Down:connect(function()
                        speeds = speeds + 1
                        speed.Text = speeds
                        if nowe == true then
                            tpwalking = false
                            for i = 1, speeds do
                                spawn(function()
                                    local hb = game:GetService("RunService").Heartbeat	
                                    tpwalking = true
                                    local chr = game.Players.LocalPlayer.Character
                                    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                        if hum.MoveDirection.Magnitude > 0 then
                                            chr:TranslateBy(hum.MoveDirection)
                                        end
                                    end
                                end)
                            end
                        end
                    end)
                    mine.MouseButton1Down:connect(function()
                        if speeds == 1 then
                            speed.Text = 'cannot be less than 1'
                            wait(1)
                            speed.Text = speeds
                        else
                            speeds = speeds - 1
                            speed.Text = speeds
                            if nowe == true then
                                tpwalking = false
                                for i = 1, speeds do
                                    spawn(function()
                                        local hb = game:GetService("RunService").Heartbeat	
                                        tpwalking = true
                                        local chr = game.Players.LocalPlayer.Character
                                        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                            if hum.MoveDirection.Magnitude > 0 then
                                                chr:TranslateBy(hum.MoveDirection)
                                            end
                                        end
                    
                                    end)
                                end
                            end
                        end
                    end)
                    Close.MouseButton1Click:Connect(function()
                        main:Destroy()
                    end)
                    minimize.MouseButton1Click:Connect(function()
                        goup.Visible = false
                        godown.Visible = false
                        onof.Visible = false
                        plus.Visible = false
                        speed.Visible = false
                        mine.Visible = false
                        minimize.Visible = false
                        minimize2.Visible = true
                        main.Frame.BackgroundTransparency = 1
                        Close.Position =  UDim2.new(0, 0, -1, 57)
                    end)
                    
                    minimize2.MouseButton1Click:Connect(function()
                        goup.Visible = true
                        godown.Visible = true
                        onof.Visible = true
                        plus.Visible = true
                        speed.Visible = true
                        mine.Visible = true
                        minimize.Visible = true
                        minimize2.Visible = false
                        main.Frame.BackgroundTransparency = 0 
                        Close.Position =  UDim2.new(0, 0, -1, 27)
                    end)
                end
                Settings_Section:addButton({
                    Section = 1,
                    title = "Fly",
                    disabled = false,
                    corner = 5,
                    callback = function() 
                        Fly()
                    end
                })
                function FPSBOOSTER()
                    setfpscap(9999)
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
                                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                                    e.Enabled = false
                                end
                            end
                        end
                        Settings_Section:addButton({
                            Section = 1,
                            title = "FPS Booster",
                            disabled = false,
                            corner = 5,
                            callback = function() 
                                FPSBOOSTER()
                            end
                        })
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Auto Click",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.click = v
                            end
                        })
                        spawn(function()
                            game:GetService("RunService").RenderStepped:Connect(function()
                                if _G.click then
                                     pcall(function()
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
                                    end)
                                end
                            end)
                        end)
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Graphic",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                if v then
                                    getgenv().mode = "Autumn" -- Choose from Summer and Autumn
                                    local a = game.Lighting
                                    a.Ambient = Color3.fromRGB(33, 33, 33)
                                    a.Brightness = 0.3
                                    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                                    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
                                    a.EnvironmentDiffuseScale = 0.105
                                    a.EnvironmentSpecularScale = 0.522
                                    a.GlobalShadows = true
                                    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
                                    a.ShadowSoftness = 0.04
                                    a.GeographicLatitude = -15.525
                                    a.ExposureCompensation = 0.75
                                    local b = Instance.new("BloomEffect", a)
                                    b.Name = "BloomEffect_Graphic"
                                    b.Enabled = true
                                    b.Intensity = 0.04
                                    b.Size = 1900
                                    b.Threshold = 0.915
                                    local c = Instance.new("ColorCorrectionEffect", a)
                                    c.Name = 'ColorCorrectionEffect1_Graphic'
                                    c.Brightness = 0.176
                                    c.Contrast = 0.39
                                    c.Enabled = true
                                    c.Saturation = 0.2
                                    c.TintColor = Color3.fromRGB(217, 145, 57)
                                    if getgenv().mode == "Summer" then
                                        c.TintColor = Color3.fromRGB(255, 220, 148)
                                    elseif getgenv().mode == "Autumn" then
                                        c.TintColor = Color3.fromRGB(242, 193, 79)
                                    end
                                    local d = Instance.new("DepthOfFieldEffect", Graphic)
                                    d.Name =  'DepthOfFieldEffect_Graphic'
                                    d.Enabled = true
                                    d.FarIntensity = 0.077
                                    d.FocusDistance = 21.54
                                    d.InFocusRadius = 20.77
                                    d.NearIntensity = 0.277
                                    local e = Instance.new("ColorCorrectionEffect", a)
                                    e.Name = 'ColorCorrectionEffect2_Graphic'
                                    e.Brightness = 0
                                    e.Contrast = -0.07
                                    e.Saturation = 0
                                    e.Enabled = true
                                    e.TintColor = Color3.fromRGB(255, 247, 239)
                                    local e2 = Instance.new("ColorCorrectionEffect", a)
                                    e2.Name = 'ColorCorrectionEffect3_Graphic'
                                    e2.Brightness = 0.2
                                    e2.Contrast = 0.45
                                    e2.Saturation = -0.1
                                    e2.Enabled = true
                                    e2.TintColor = Color3.fromRGB(255, 255, 255)
                                    local s = Instance.new("SunRaysEffect", a)
                                    s.Name = 'SunRaysEffect_Graphic'
                                    s.Enabled = false
                                    s.Intensity = 0.01
                                    s.Spread = 0.146
                                else
                                    local a = game.Lighting
                                    a.Ambient = Color3.fromRGB(170, 170, 170)
                                    a.Brightness = 2
                                    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                                    a.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                                    a.EnvironmentDiffuseScale = 0.105
                                    a.EnvironmentSpecularScale = 0.522
                                    a.GlobalShadows = false
                                    a.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
                                    a.ShadowSoftness = 0
                                    a.GeographicLatitude = 66
                                    a.ExposureCompensation = 0.2
                                    game:GetService("Lighting")["BloomEffect_Graphic"]:Destroy()
                                    game:GetService("Lighting")["ColorCorrectionEffect1_Graphic"]:Destroy()
                                    game:GetService("Lighting")["ColorCorrectionEffect2_Graphic"]:Destroy()
                                    game:GetService("Lighting")["ColorCorrectionEffect3_Graphic"]:Destroy()
                                    game:GetService("Lighting")["SunRaysEffect_Graphic"]:Destroy()
                                end
                            end
                        })
                        if game.workspace:FindFirstChild("WaterWalk") then
                            game.workspace:FindFirstChild("WaterWalk"):Destroy()
                        end
                        _G.WalkWater = true
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = true,
                            corner = 5,
                            title = "Walk on Water",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.WalkWater = v
                            end
                        })
                        spawn(function()
                            while task.wait() do
                                pcall(function()
                                    if _G.WalkWater then
                                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                                    else
                                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                                    end
                                end)
                            end
                        end)
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "infinity Ability",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.InfAbility = v
                                InfAbility()
                            end
                        })
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Infinities Dash",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.NoDashCooldown = v
                                DodgeNoCoolDown()
                            end
                        })

                        function DodgeNoCoolDown()
                            if _G.NoDashCooldown then
                                for i, v in next, getgc() do
                                    if game.Players.LocalPlayer.Character.Dodge then
                                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                                            for i2, v2 in next, getupvalues(v) do
                                                if tostring(v2) == "0.4" then
                                                    repeat
                                                        wait(.1)
                                                        setupvalue(v, i2, 0)
                                                    until not _G.NoDashCooldown
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Infinities Geppo",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.InfinitiesSkyJump = v
                                SkyJumpNoCoolDown()
                            end
                        })
                        function SkyJumpNoCoolDown()
                            if _G.InfinitiesSkyJump then
                                for i, v in next, getgc() do
                                    if game.Players.LocalPlayer.Character.Geppo then
                                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                                            for i2, v2 in next, getupvalues(v) do
                                                if tostring(v2) == "0" then
                                                    repeat
                                                        wait(.1)
                                                        setupvalue(v, i2, 0)
                                                    until not _G.InfinitiesSkyJump
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        Settings_Section:addCheckbox({
                            Section = 1,
                            default = false,
                            corner = 5,
                            title = "Infinities Energy",
                            disabled = false,
                            Group = nil, -- nil == no group
                            callback = function(v) 
                                _G.InfinitiesEnergy = v
                                InfinitiesEnergy()
                            end
                        })


--[[            
    section:addButton({
        Section = 1,
        title = "Button",
        disabled = false,
        corner = 5,
        callback = function() end,
    })
    section:addClipboardLabel({
        Section = 1,
        text = "Clipboad Label",
        corner = 5,
    })
    section:addDualLabel({
        Section = 1,
        title = "Title",
        description = "Description",
        corner = 5,
    })
    section:addLabel({
        Section = 1,
        text = '<font color="#' .. library.Settings.theme.Accent:ToHex() .. '"><b>Lite</b></font>, the best UI ^-^',
        textsize = nil, -- auto
        textxalignment = Enum.TextXAlignment.Left,
        textyalignment = Enum.TextYAlignment.Center,
    })
    section:addSlider({
        Section = 1,
        Max = 10,
        Min = 0,
        Default = 0,
        title = "Slider",
        disabled = false,
        corner = 5,
        callback = function() end,
    })
    section:addToggle({
        Section = 1,
        title = "Toggle",
        keybind = false,
        keybind_default = Enum.KeyCode.LeftAlt,
        keybind_callback = function() end,
        keybind_changedcallback = function() end,
        default = false,
        resetonspawn = false,
        corner = 5,
        disabled = false,
        callback = function() end,
    })
    section:addCheckbox({
        Section = 1,
        default = false,
        corner = 5,
        title = "CheckBox",
        disabled = false,
        Group = "group_name", -- nil == no group
        callback = function() end,
    })
    section:addKeybind({
        Section = 1,
        title = "KeyBind",
        default = Enum.KeyCode.LeftAlt,
        corner = 5,
        disabled = false,
        callback = function() end,
        changedcallback = function() end,
    })
    section:addDropdown({
        Section = 1,
        title = "Dropdown",
        corner = 5,
        List = { 1, 2, 3, 4, 5 },
	keybind = false,
        multi = false,
        callback = function() end
    })
	section:add3DPlayer({
		Player = game.Players.LocalPlayer,
		UpdateAnim = true
	})
end]]
