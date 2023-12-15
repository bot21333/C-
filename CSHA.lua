local library =  loadstring(Game:HttpGet"https://raw.githubusercontent.com/bot21333/C-/main/BotGUI.lua")()


local window = library:new({})

if game.CoreGui:FindFirstChild("ZekromMinimze") then
  game.CoreGui:FindFirstChild("ZekromMinimze"):Destroy()
end

local UICorner = Instance.new("UICorner")

local ImageButtonZekromMinimze = Instance.new("ImageButton")

local ScreenGuiZekromMinimze = Instance.new("ScreenGui")
ScreenGuiZekromMinimze.Name = "ZekromMinimze"
ScreenGuiZekromMinimze.Parent = game.CoreGui
ScreenGuiZekromMinimze.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ImageButtonZekromMinimze.Parent = ScreenGuiZekromMinimze
ImageButtonZekromMinimze.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButtonZekromMinimze.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButtonZekromMinimze.Draggable = true
ImageButtonZekromMinimze.Position = UDim2.new(0.102097899, 0, 0.0742971897, 0)
ImageButtonZekromMinimze.Size = UDim2.new(0, 59, 0, 49)
ImageButtonZekromMinimze.Image = "http://www.roblox.com/asset/?id=15617446791"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButtonZekromMinimze
ImageButtonZekromMinimze.MouseButton1Down:connect(function()
	window:toggle()
end)

  _G.Settings = {
		Auto_Farm_Level = false,
		Auto_Farm_Fast = true,
		Auto_New_World = false,
		Auto_Third_World = false,
		Auto_Farm_Chest = false,
		Auto_Farm_Chest_Hop = false,
		Auto_Elite_Hunter = false,
		Auto_Elite_Hunter_Hop = false,
		Auto_Spawn_Cake_Prince = false,
		Auto_Cake_Prince = false,
		Auto_Farm_Boss = false,
		Select_Boss = "",
		Auto_Quest_Boss = true,
		Auto_Farm_All_Boss = false,
		SelectWeapon = "Melee",
		Auto_Set_Spawn = true,
		Method = "Upper",
		Brimob = true,
		Select_Stats = {},
		Bypass = false,
		Rejoin = true,
		FastAttack = true,
		Auto_Saber = false,
		Auto_Saber_Hop = false,
		Auto_Pole_V1_Hop = false,
		Auto_Factory_Farm = false,
		Auto_Farm_Ectoplasm = false,
		Auto_Swan_Glasses = false,
		Auto_Swan_Glasses_Hop = false,
		Auto_Farm_Bone = false,
		Auto_Trade_Bone = false,
		Auto_Rainbow_Haki = false,
		Auto_Rainbow_Haki_Hop = false,
		Auto_Canvander = false,
		Auto_Twin_Hook_Hop = false,
		Auto_Twin_Hook = false,
		Auto_Serpent_Bow = false,
		Auto_Serpent_Bow_Hop = false,
		Auto_Evo_Race_V2 = false,
		Auto_Rengoku = false,
		Auto_Buy_Legendary_Sword = false,
		Auto_Buy_Enchancement = false,
		Auto_Yama = false,
		Auto_Holy_Torch = false,
		Auto_Musketeer_Hat = false,
		Auto_Superhuman = false,
		Auto_Fully_Superhuman = false,
		Auto_Death_Step = false,
		Auto_Fully_Death_Step = false,
		Auto_SharkMan_Karate = false,
		Auto_Fully_SharkMan_Karate = false,
		Auto_Electric_Claw = false,
		Auto_Dragon_Talon = false,
		Auto_God_Human = false,
		Select_Player = "",
		Spectate_Player = false,
		Teleport_to_Player = false,
		Auto_Kill_Player = false,
		EnabledPvP = false,
		Auto_Stats = false,
		Point = 1,
		No_clip = false,
		Infinit_Energy = false,
		Dodge_No_CoolDown = false,
		Infinit_Ability = false,
		Infinit_SkyJump = false,
		Infinit_Inf_Soru = false,
		Infinit_Range_Observation_Haki = false,
		Select_Island = "",
		Start_Tween_Island = false,
		Select_Dungeon = false,
		Auto_Buy_Chips_Dungeon = false,
		Auto_Start_Dungeon = false,
		Auto_Next_Island = false,
		Kill_Aura = false,
		Auto_Awake = false,
		Auto_Buy_Law_Chip = false,
		Auto_Start_Law_Dungeon = false,
		Auto_Kill_Law = false,
		Select_Devil_Fruit = "",
		Auto_Buy_Devil_Fruit = false,
		Auto_Random_Fruit = false,
		Auto_Bring_Fruit = false,
		Auto_Store_Fruit = false,
		LockMoon = false,
		Auto_Mirage_Island = false,
		SkillZ = true,
		SkillX = true,
		SkillC = true,
		SkillV = true,
		AutoMasterySkill = false,
		HealthMs = 85,
		Distance = 30,
		DistanceY = 5,
		ESP_Mirage_Island = false,
		Auto_Awakening_One_Quest = false,
		SuperFastAttack = false,
		ESP_Chest = false,
		Auto_Dack_Coat = false,
		Auto_Sea_King = false,
		Select_Mode = "Chest",
		Remove_UI_DamageCounter = false,
		Notifications_Remove = false,
		Auto_CFrame = false,
		Auto_Gear = false,
	}
	
	if game.PlaceId == 2753915549 then
		W1 = true
	elseif game.PlaceId == 4442272183 then
		W2 = true
	elseif game.PlaceId == 7449423635 then
		W3 = true
	end
	
	repeat wait(0) until game:IsLoaded()
	
	if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
		repeat wait()
			if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
				if _G.Team == "Pirate" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				elseif _G.Team == "Marine" then
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				else
					for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
						v.Function()
					end
				end
			end
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
	end

	local EnemySpawns = Instance.new("Folder",workspace)
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
			repeat wait()
				game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
				game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
			until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") or not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn")
		end)
	end

  	------------ // SaveSetting \\ ------------
	
	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Zekrom Hub X") then
				makefolder("Zekrom Hub X")
			end
			if not isfolder("Zekrom Hub X/Blox Fruits/") then
				makefolder("Zekrom Hub X/Blox Fruits/")
			end
			if not isfile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				for i,v in pairs(Decode) do
					_G.Settings[i] = v
				end
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	function SaveSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.Settings) do
					Array[i] = v
				end
				writefile("Zekrom Hub X/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	LoadSettings()
	
	--Script 
	
	if game.PlaceId == 2753915549 then
		World1 = true 
	elseif game.PlaceId == 4442272183 then
		World2 = true
	elseif game.PlaceId == 7449423635 then
		World3 = true
	end
	
	local function QuestCheck()
		local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
		if Lvl >= 1 and Lvl <= 9 then
			if tostring(game.Players.LocalPlayer.Team) == "Marines" then
				MobName = "Trainee [Lv. 5]"
				QuestName = "MarineQuest"
				QuestLevel = 1
				Mon = "Trainee"
				NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
			elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
				MobName = "Bandit [Lv. 5]"
				Mon = "Bandit"
				QuestName = "BanditQuest1"
				QuestLevel = 1
				NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
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
			NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			local matchingCFrames = {}
			local result = string.gsub(MobName, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")
			
			for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
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
		
		--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
		local Quests = require(game:GetService("ReplicatedStorage").Quests)
		for i,v in pairs(GuideModule["Data"]["NPCList"]) do
			for i1,v1 in pairs(v["Levels"]) do
				if Lvl >= v1 then
					if not LevelRequire then
						LevelRequire = 0
					end
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
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
	
		if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
		for i,v in pairs(Quests) do
			for i1,v1 in pairs(v) do
				if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
					QuestName = i
					for i2,v2 in pairs(v1["Task"]) do
						MobName = i2
						Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
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
			NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
		elseif QuestName == "SkyExp1Quest" then
			if QuestLevel == 1 then
				NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
			elseif QuestLevel == 2 then
				NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			end
		elseif QuestName == "Area2Quest" and QuestLevel == 2 then
			QuestName = "Area2Quest"
			QuestLevel = 1
			MobName = "Swan Pirate [Lv. 775]"
			Mon = "Swan Pirate"
			LevelRequire = 775
		end
		MobName = MobName:sub(1,#MobName)
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
					MobName = v.Name
				end
			end
		end
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
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
		
		for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
			if v.Name == result4 then
				table.insert(matchingCFrames, v.CFrame)
			else
				table.insert(matchingCFrames, nil)
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
	
	function CheckBossQuest()
		if _G.Settings.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
			MsBoss = "Saber Expert [Lv. 200] [Boss]"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.Settings.Select_Boss == "The Saw [Lv. 100] [Boss]" then
			MsBoss = "The Saw [Lv. 100] [Boss]"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.Settings.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
			MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.Settings.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.Settings.Select_Boss == "Bobby [Lv. 55] [Boss]" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.Settings.Select_Boss == "Yeti [Lv. 110] [Boss]" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.Settings.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.Settings.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.Settings.Select_Boss == "Warden [Lv. 175] [Boss]" then
			MsBoss = "Warden [Lv. 175] [Boss]"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Chief Warden [Lv. 200] [Boss]" then
			MsBoss = "Chief Warden [Lv. 200] [Boss]"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Swan [Lv. 225] [Boss]" then
			MsBoss = "Swan [Lv. 225] [Boss]"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.Settings.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.Settings.Select_Boss == "Wysper [Lv. 500] [Boss]" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.Settings.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.Settings.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			-- New World
		elseif _G.Settings.Select_Boss == "Diamond [Lv. 750] [Boss]" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.Settings.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.Settings.Select_Boss == "Fajita [Lv. 925] [Boss]" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.Settings.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.Settings.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.Settings.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.Settings.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.Settings.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.Settings.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.Settings.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Thire World
		elseif _G.Settings.Select_Boss == "Stone [Lv. 1550] [Boss]" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.Settings.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.Settings.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.Settings.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.Settings.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif _G.Settings.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
			MsBoss = "Cake Queen [Lv. 2175] [Boss]"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.Settings.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
			MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.Settings.Select_Boss == "Longma [Lv. 2000] [Boss]" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.Settings.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
			MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end
	
	function AutoHaki()
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		end
	end
	
	function EquipWeapon(ToolSe)
		if not _G.NotAutoEquip then
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				wait(.1)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
			end
		end
	end
	
	function UnEquipWeapon(Weapon)
		if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
			_G.NotAutoEquip = true
			wait(.5)
			game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
			wait(.1)
			_G.NotAutoEquip = false
		end
	end
	
	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end
	
	-- [Tween Functions]
	
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
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
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
			Highlight.FillColor = Color3.new(0, 255, 0)
			Highlight.OutlineColor = Color3.new(0,255,0)
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
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
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
	
	function StopTween(target)
		if not target then
			tot:Cancel()
			_G.StopTween = true
			_G.UseSkill = false
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
			wait(0.2)
			_G.StopTween = false
			_G.Clip = false
		end
		if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
			game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
		end
	end
	
	function UseCode(Text)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
	end
	
	function toTarget(targetPos, targetCFrame)
		local tweenfunc = {}
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
		local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
		tween:Play()
	
		function tweenfunc:Stop()
			tween:Cancel()
			return tween
		end
	
		if not tween then return tween end
		return tweenfunc
	end
	
	function Hop()
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
						wait()
						pcall(function()
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
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
	
	function SkyJumpNoCoolDown()
		if _G.Infinit_SkyJump then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Geppo then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Infinit_SkyJump
							end
						end
					end
				end
			end
		end
	end
	
	function InfAbility()
		if _G.Infinit_Ability then
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				local inf = Instance.new("ParticleEmitter")
				inf.Acceleration = Vector3.new(0,0,0)
				inf.Archivable = true
				inf.Drag = 20
				inf.EmissionDirection = Enum.NormalId.Top
				inf.Enabled = true
				inf.Lifetime = NumberRange.new(0.2,0.2)
				inf.LightInfluence = 0
				inf.LockedToPart = true
				inf.Name = "Agility"
				inf.Rate = 500

				inf.Size = NumberSequence.new(0.50,0.20)
				inf.RotSpeed = NumberRange.new(999, 9999)
				inf.Rotation = NumberRange.new(0, 0)
				inf.Speed = NumberRange.new(35, 35)
				inf.SpreadAngle = Vector2.new(360,360)
				inf.Texture = "rbxassetid://14300572370"
				inf.VelocityInheritance = 0
				inf.ZOffset = 2
				inf.Transparency = NumberSequence.new(0)
				inf.Color = ColorSequence.new(Color3.fromRGB(128, 0, 255),Color3.fromRGB(128, 0, 255))
				inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			end
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
			end
		end
	end
	
	_G.Dodge_No_CoolDown = false
	function DodgeNoCoolDown()
		if _G.Dodge_No_CoolDown then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Dodge_No_CoolDown
							end
						end
					end
				end
			end
		end
	end
	
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function InfinitEnergy()
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
			if _G.Infinit_Energy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	
	function RemoveSpaces(str)
		return str:gsub(" Fruit", "")
	end
	
	local function formatNumber(number)
		local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
		return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
	end

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	
	---------------------------------------------------------------
	
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or _G.Auto_Farm_Mastery_Fruit or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
					if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity")
						Noclip.Name = "BodyClip"
						Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						Noclip.MaxForce = Vector3.new(100000,100000,100000)
						Noclip.Velocity = Vector3.new(0,0,0)
					end
				else	
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end
			end)
		end)
	end)
	
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Farm_Mastery_Fruit or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law then
					for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false    
						end
					end
				end
			end)
		end)
	end)
	
	
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
	
	function TPPlayer(Point)
		TweeSpeed = 300
		local LocalPlayer = game.Players.LocalPlayer 
		TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
		end);tot:Play()
		if TweenPlay >= 1200 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			_G.Clip = false
		elseif TweenPlay <= 300 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		end
		if _G.StopTween == true then tot:Cancel();_G.Clip = false end
		if _G.StopTween then
			tot:Cancel()
			BringMobFarm = false
			UseSkillGun = false
			_G.UseSkill = false
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			tot:Play()
		end
	end	
	
	function Check_Sword(Sword_Name)
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
			if (v.Type == "Sword") then
				if v.Name == Sword_Name then
					return true
				end
			end
		end
	end


local Main = window:addPage({
    icon = "rbxassetid://7040391851" -- or roblox image id
})

local Item = window:addPage({
  icon = "rbxassetid://11446859498" -- or roblox image id
})


local Main_Section = Main:addSection({ Divisions = 1 })
  
Main_Section:addLabel({
    Section = 1,
    text = 'Zekrom Hub X',
})
Main_Section:addLabel({
    Section = 1,
    text = 'Home',
})

Main_Section:addButton({
    Section = 1,
    title = "Get Copy Discord Link : https://discord.gg/tMXqctTAsA",
    disabled = false,
    corner = 5,
    callback = function() 
        setclipboard("https://discord.gg/tMXqctTAsA")
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
    text = 'Config:',
})

local SelectWeapon
local Weapon = {
  "Melee",
  "Sword",
  "Fruit"
}

task.spawn(function()
  while wait() do
    pcall(function()
      if SelectWeapon == "Melee" then
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
              _G.Select_Weapon = v.Name
            end
          end
        end
      elseif SelectWeapon == "Sword" then
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v.ToolTip == "Sword" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
              _G.Select_Weapon = v.Name
            end
          end
        end
      elseif SelectWeapon == "Fruit" then
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v.ToolTip == "Blox Fruit" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
              _G.Select_Weapon = v.Name
            end
          end
        end
      else
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
              _G.Select_Weapon = v.Name
            end
          end
        end
      end
    end)
  end
end)

Main_Section:addDropdown({
  Section = 1,
  title = "Select Weapon",
  List = Weapon,
  multi = false,
  callback = function(value) 
    SelectWeapon = value
    _G.Settings.SelectWeapon = value
    _G.Select_Weapon = value
    SaveSettings()
  end
})

Main_Section:addDropdown({
  Section = 1,
  title = "Select Farm Method",
  List =  {"Behind","Below","Upper"},
  multi = false,
  callback = function(value) 
    _G.Method = value
    _G.Settings.Method = value
    SaveSettings()
  end
})

_G.Select_Distance = 30

spawn(function()
  while wait() do
    pcall(function()
      if _G.Method == "Behind" then
        MethodFarm = CFrame.new(0,0,_G.Select_Distance) 
      elseif _G.Method == "Below" then
        MethodFarm = CFrame.new(0,-_G.Select_Distance,0)
      elseif _G.Method == "Upper" then
        MethodFarm = CFrame.new(0,_G.Select_Distance,0)
      else
        MethodFarm = CFrame.new(0,_G.Select_Distance,0)
      end
    end)
  end
end)
_G.Brimob = true
Main_Section:addCheckbox({
  Section = 1,
  default = true,
  title = "Bring Mob",
  disabled = false,
  callback = function(value) 
    _G.Brimob = value
    _G.Settings.Brimob = value
    SaveSettings()
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Bypass,
  title = "Bypass Tp",
  disabled = false,
  callback = function(value) 
    _G.Bypass_TP = value
    _G.HH =  value
    _G.Settings.Bypass = value
    SaveSettings()
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_CFrame,
  title = "Auto CFrame",
  disabled = false,
  callback = function(value) 
    _G.Auto_CFrame = value
    _G.Settings.Auto_CFrame = value
    SaveSettings()
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_CFrame,
  title = "Auto Rejoin",
  disabled = false,
  callback = function(value) 
    _G.Auto_CFrame = value
    _G.Settings.Auto_CFrame = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    if _G.Rejoin then
      getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
          game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
      end)
    end
  end
end)

spawn(function()
  while wait() do
    if _G.Brimob then
      _G.BringNormal = false
      wait(0.5)
      _G.BringNormal = true
      wait(0.5)
    end
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
spawn(function()
  while true do wait()
    if setscriptable then
      setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
    end
    if sethiddenproperty then
      sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    end
  end
end)
spawn(function()
  while task.wait() do
    pcall(function()
      if _G.Brimob and _G.BringNormal and BringMobFarm then
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
          if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 500 then
            if InMyNetWork(v.HumanoidRootPart) then
              v.HumanoidRootPart.CFrame = PosMon
              v.Humanoid.JumpPower = 0
              v.Humanoid.WalkSpeed = 0
              v.HumanoidRootPart.Size = Vector3.new(60,60,60)
              v.HumanoidRootPart.Transparency = 1
              v.HumanoidRootPart.CanCollide = false
              v.Head.CanCollide = false
              if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
              end
              v.Humanoid:ChangeState(11)
              v.Humanoid:ChangeState(14)
              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
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
      if _G.Brimob and _G.BringNormal then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v.Name == QuestCheck()[3] and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 225 then
            v.HumanoidRootPart.CFrame = PosMon
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
            v.HumanoidRootPart.Transparency = 1
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
              v.Humanoid.Animator:Destroy()
            end
            v.Humanoid:ChangeState(11)
            v.Humanoid:ChangeState(14)
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
          end
        end
      end
    end)
  end
end)



FastAttackList = {
  "Slow",
  "Fast",
  "Extreme",
}
Main_Section:addDropdown({
  Section = 1,
  title = "Select Attack Type",
  List = FastAttackList,
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
  title = "Fast Attack",
  disabled = false,
  callback = function(value) 
      FastAttack = value
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Remove_UI_DamageCounter,
  title = "Remove UI DamageCounter",
  disabled = false,
  callback = function(value) 
    _G.Settings.Remove_UI_DamageCounter = value
    if value == true then
      game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
    else
      game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
    end
    SaveSettings()
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Notifications_Remove,
  title = "Notifications Remove",
  disabled = false,
  callback = function(value) 
    _G.Settings.Notifications_Remove = value
    if value == true then
      game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
    else
      game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
    end
    SaveSettings()
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = true,
  title = "Auto Haki Ken",
  disabled = false,
  callback = function(value) 
    _G.Auto_Haki_Ken = value
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = true,
  title = "Auto Haki",
  disabled = false,
  callback = function(value) 
    _G.AutoHaki = value
  end
})

spawn(function()
  while wait() do
    if _G.AutoHaki then
      AutoHaki()
    end
  end
end)

spawn(function()
  while wait() do
    if _G.Auto_Haki_Ken then
      local args = {
        [1] = "Ken",
        [2] = true
      }
    
      game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
    end
  end
end)

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
    if FastAttackSpeed then
      AttackFunction()
     end
    end
  end)
end)

Main_Section:addLabel({
  Section = 1,
  text = 'Farming',
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Level,
  title = "Auto Farm Level",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Level = value 
    _G.Settings.Auto_Farm_Level = value
    StopTween(_G.Auto_Farm_Level)
    SaveSettings()
  end
})

_G.AutoFarmFast = true
Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Fast,
  title = "Auto Farm Fast",
  disabled = false,
  callback = function(value) 
    if W1 then
      _G.AutoFarmFast = value
    else
      _G.AutoFarmFast = false
    end
    _G.Settings.Auto_Farm_Fast = value
    SaveSettings()
  end
})

AttackRandomType_MonCFrame = 1
spawn(function()
  while wait() do 
    AttackRandomType_MonCFrame = math.random(1,5)
    wait(0.3)
  end
end)

	spawn(function()
		while wait() do 
			if _G.Settings.Auto_Farm_Fast and _G.AutoFarmFast_Num == 1 then
				_G.AutoFarmFast = false
			end
		end
	end)

local SetCFarme = 1
spawn(function()
  while wait() do
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
    pcall(function()
      if _G.Auto_Farm_Level then
        if _G.AutoFarmFast and (MyLevel >= 15 and MyLevel <= 300) then
          if MyLevel >= 15 and MyLevel <= 300 then
            Auto_Farm_Level_Fast()
            return
          end
        else
          if QuestC.Visible == true then
            if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == QuestCheck()[3] then
                  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    repeat task.wait()
                      if _G.Auto_CFrame then
                        SetCFarme = 1
                      end
                      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                      else
                        PosMon = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.Head.CanCollide = false
                        BringMobFarm = true
                        EquipWeapon(_G.Select_Weapon)
                        v.HumanoidRootPart.Transparency = 1
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))

                        if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO then
                          game:GetService("VirtualUser"):CaptureController()
                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        end
                      end
                    until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                  end
                end
              end
            else
              UnEquipWeapon(_G.Select_Weapon)
              if _G.Auto_CFrame and not _G.AutoFarmFast then
                getgenv().ToTarget(QuestCheck()[7][SetCFarme] * CFrame.new(0,30,5))
                if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                  if SetCFarme == nil or SetCFarme == '' then
                    SetCFarme = 1
                    print(SetCFarme)
                  elseif SetCFarme >= #QuestCheck()[7] then
                    SetCFarme = 1
                    print(SetCFarme)
                  end
                  SetCFarme =  SetCFarme + 1

                  print(SetCFarme)
                  wait(0.5)
                end
              else
                if not _G.AutoFarmFast then
                  if AttackRandomType_MonCFrame == 1 then
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                  elseif AttackRandomType_MonCFrame == 2 then
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                  elseif AttackRandomType_MonCFrame == 3 then
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
                  elseif AttackRandomType_MonCFrame == 4 then
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                  elseif AttackRandomType_MonCFrame == 5 then
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
                  else
                    getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                  end
                end
              end
            end
          else
            getgenv().ToTarget(QuestCheck()[2])
            if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
              BringMobFarm = false
              wait(0.2)
              game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
              getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
            end
          end
        end
      end
    end)
  end
end)
_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
function Auto_Farm_Level_Fast()
  local PlayersAll = game.Players:GetPlayers()
  local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
  local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
  local Player = string.split(quest," ")[2]
  getgenv().SelectPly = string.split(quest," ")[2]
  pcall(function()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
    CFrameMon = CFrame.new(-4837.64258, 850.10199, -1840.58374, -0.430530697, -4.42848638e-08, -0.90257591, -3.08042516e-08, 1, -3.43712756e-08, 0.90257591, 1.30052875e-08, -0.430530697)

    if MyLevel >= 15 and MyLevel <= 69 then
      BringMobFarm = false
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == "God's Guard [Lv. 450]" then
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            repeat task.wait()
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
              v.HumanoidRootPart.CanCollide = false
              v.Humanoid.WalkSpeed = 0
              v.Head.CanCollide = false
              BringMobFarm = true
              EquipWeapon(_G.Select_Weapon)

              if MyLevel >= 70 and MyLevel <= 310 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                end
              end

              PosMon = v.HumanoidRootPart.CFrame
              v.HumanoidRootPart.Size = Vector3.new(60,60,60)
              v.HumanoidRootPart.Transparency = 1
              getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
              if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
              end
            until not v.Parent or not _G.Auto_Farm_Level or v.Humanoid.Health < 0
          end
        else
          BringMobFarm = false
          if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
          end
          getgenv().ToTarget(CFrameMon)
        end
      end
    elseif MyLevel >= 70 and MyLevel <= 310 then
      if QuestC.Visible == false then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
      elseif QuestC.Visible == true then
        if string.find(quest,"Defeat") then
          if game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel * 2 then
            repeat task.wait()
              if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
              end

              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end

              EquipWeapon(_G.Select_Weapon)
              TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
              
              game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120,120,120)

              game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
              game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)

              game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
              game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)

              if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
              end

              if game:GetService("Players")[getgenv().SelectPly].Character.Humanoid.Health <= 0 then
                _G.AutoFarmFast_Num = 1
                _G.AutoFarmFast = false
              end

            until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not Auto_Farm_Level_Fast() or _G.AutoFarmFast_Num == 1
            _G.AutoFarmFast_Num = 1
            _G.AutoFarmFast = false
            if not game.Players:FindFirstChild(Player) then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            end
          else
            for i,v in pairs(PlayersAll) do
              if v.Data.Level.Value >= 20 and v.Data.Level.Value <= PlayerLevel * 2 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                print(v)
              else
                _G.ChackPlayer = _G.ChackPlayer + 1
                if _G.ChackPlayer >= 12 then
                  _G.AutoFarmFast = false
                else
                  print("Chack Player ".._G.ChackPlayer)
                end
              end
            end
          end
        end
      end
    end
  end)
end


spawn(function()
  game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
      if _G.BringNormal then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if _G.Auto_Farm_Level and BringMobFarm and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 225 then
            v.HumanoidRootPart.CFrame = PosMon
            v.HumanoidRootPart.CanCollide = false
            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
            if v.Humanoid:FindFirstChild("Animator") then
              v.Humanoid.Animator:Destroy()
            end
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
          end
        end
      end
    end)
  end)
end)

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Chest,
  title = "Auto Farm Chest Tween",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Chest = value 
    StopTween(_G.Auto_Farm_Chest)
    if _G.Bypass_TP == false and _G.HH then
      wait(0.5)
      _G.Bypass_TP = true
    else
      _G.Bypass_TP = false
    end
    _G.Settings.Auto_Farm_Chest = value
    SaveSettings()  
  end
})

Main_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Chest_Hop,
  title = "Auto Farm Chest Hop",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Chest_Hop = value   
    _G.Settings.Auto_Farm_Chest_Hop = value
    SaveSettings()   
    StopTween(_G.Auto_Farm_Chest_Hop)
  end
})

_G.AddPoint = 500
spawn(function()
  while wait() do 
    if _G.Auto_Farm_Chest then
      for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do 
        if v.Name:find("Chest") and v:IsA("Part") then
          if (v.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 + _G.AddPoint then
            repeat wait()
              getgenv().ToTarget(v.CFrame)
              if (v.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                UnEquipWeapon(_G.Select_Weapon)
              else
                EquipWeapon(_G.Select_Weapon)
              end
            until _G.Auto_Farm_Chest == false or not v.Parent
            break
          else
            _G.AddPoint = _G.AddPoint + 500
          end
        else
          if v.Name:find("Chest") and v:IsA("Part") then
            if (v.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 + _G.AddPoint then
              _G.AddPoint = _G.AddPoint + 500
            end
          end
        end
      end
    end
  end
end)

local FarmBoss = Main:addSection({ Divisions = 1 })

FarmBoss:addLabel({
  Section = 1,
  text = 'Bosses',
})

local Rip_Indar_All_Mon = {
  ["Mon Quest"] = {"Diablo [Lv. 1750]","Deandre [Lv. 1750]","Urban [Lv. 1750]"},
  ["Boss"] = "rip_indra True Form [Lv. 5000] [Raid Boss]",
  ["Mon"] = {"Diablo","Deandre","Urban"},
  ["Item"] = "God's Chalice",
}


FarmBoss:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Rip_Indar,
  title = "Auto Rip Indar [Boss] (Fully)",
  disabled = false,
  callback = function(value) 
    _G.Auto_Rip_Indar = value
    _G.Settings.Auto_Rip_Indar = value
    SaveSettings()
    StopTween(_G.Auto_Rip_Indar)
  end
})

spawn(function()
  while wait() do
    pcall(function()
      if _G.Auto_Rip_Indar then
        local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        for _,_l1 in next,Rip_Indar_All_Mon["Mon Quest"] do
          for _,l in next,Rip_Indar_All_Mon["Mon"] do
            if game:GetService("Workspace").Enemies:FindFirstChild(Rip_Indar_All_Mon["Boss"]) or game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
              for _,_v3 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _v3.Name == Rip_Indar_All_Mon["Boss"] then
                  if _v3:FindFirstChild("Humanoid") and _v3:FindFirstChild("HumanoidRootPart") and _v3.Humanoid.Health > 0 then
                    repeat wait()
                      EquipWeapon(_G.Select_Weapon)
                      _v3.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                      getgenv().ToTarget(_v3.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                      if (_v3.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                      end
                    until not _G.Auto_Rip_Indar or _v3.Humanoid.Health <= 0 or not _v3.Parent or _v3.Humanoid.Health <= 0
                  end
                else
                  if game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
                    getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                  else
                    EquipWeapon(Rip_Indar_All_Mon["Item"])
                    getgenv().ToTarget(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059797, -0.34787342))
                  end
                end
              end
            else
              if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
                for _, _v_1 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                  if _v_1:IsA("Part") then
                    if _v_1.Color == Color3.fromRGB(187, 187, 187) then
                      _v_1.Name = "W1"
                    elseif _v_1.Color == Color3.fromRGB(255, 0, 0) then
                      _v_1.Name = "R2"
                    elseif _v_1.Color == Color3.fromRGB(255, 0, 191) then
                      _v_1.Name = "P3"
                    end
                  end
                end
                for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                  if _v2:IsA("Part") then
                    if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                      wait(0.5)
                      repeat wait()
                        getgenv().ToTarget(_v2.CFrame)
                      until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
                      wait(0.5)
                    elseif _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                      wait(0.5)
                      repeat wait()
                        getgenv().ToTarget(_v2.CFrame)
                      until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
                      wait(0.5)
                    elseif _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                      wait(0.5)
                      repeat wait()
                        getgenv().ToTarget(_v2.CFrame)
                      until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
                      wait(0.5)
                    else
                      for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                        if _v2:IsA("Part") then
                          if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                            _G.Part1 = false
                          else
                            _G.Part1 = true
                          end
                          if _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                            _G.Part2 = false
                          else
                            _G.Part2 = true
                          end
                          if _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
                            _G.Part3 = false
                          else
                            _G.Part3 = true
                          end
                        end
                      end
                    end
                  end
                end
              else
                if QuestUI.Visible == true then
                  if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                    for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if _1.Name == _l1 then
                        if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
                          repeat wait()
                            EquipWeapon(_G.Select_Weapon)
                            _1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                            getgenv().ToTarget(_1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                            if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                              game:GetService("VirtualUser"):CaptureController()
                              game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                            end
                          until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Rip_Indar
                        end
                      else
                        if _G.Bypass_TP then
                          if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            repeat wait()
                              Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                            until not _G.Auto_Rip_Indar
                          end
                        end
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                          getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                        end
                      end
                    end
                  end
                else
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
                    return
                  else
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
                      print("Hop")
                      _G.Rejoin = false
                      wait(0.5)
                      Hop()
                    else
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
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

local BossTable = {}   
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if string.find(v.Name, "Boss") then
    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
    else
      table.insert(BossTable, v.Name)
    end
  end
end

FarmBoss:addDropdown({
  Section = 1,
  title = "Select Boss",
  List = BossTable,
  multi = false,
  callback = function(a) 
    _G.Settings.Select_Boss = a
    SaveSettings()
  end
})

FarmBoss:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Boss,
  title = "Auto Farm Boss",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Boss = value
    _G.Settings.Auto_Farm_Boss = value
    SaveSettings()
    StopTween(_G.Auto_Farm_Boss)
  end
})

FarmBoss:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Quest_Boss,
  title = "Auto Quest Boss",
  disabled = false,
  callback = function(value) 
    _G.Auto_Quest_Boss = value
    _G.Settings.Auto_Quest_Boss = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    if _G.Auto_Farm_Boss then
      pcall(function()
        CheckBossQuest()
        if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
          if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if v.Name == MsBoss then
                repeat wait()
                  EquipWeapon(_G.Select_Weapon)
                  AutoHaki()
                  getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                  v.HumanoidRootPart.CanCollide = false
                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                  game:GetService'VirtualUser':CaptureController()
                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
              end
            end
          else
            getgenv().ToTarget(CFrameBoss)
          end
        else
          if _G.Auto_Quest_Boss then
            CheckBossQuest()
            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
              repeat wait() getgenv().ToTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
              if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                wait(1.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
              end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
              if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if v.Name == MsBoss then
                    repeat wait()
                      EquipWeapon(_G.Select_Weapon)
                      AutoHaki()
                      getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                      v.HumanoidRootPart.CanCollide = false
                      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                      game:GetService'VirtualUser':CaptureController()
                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
                    until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
                  end
                end
              else
                getgenv().ToTarget(CFrameBoss)
              end
            end
          else
            if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == MsBoss then
                  repeat wait()
                    EquipWeapon(_G.Select_Weapon)
                    AutoHaki()
                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
                  until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
                end
              end
            else
              getgenv().ToTarget(CFrameBoss)
            end
          end
        end
      end)
    end
  end
end)

FarmBoss:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_All_Boss,
  title = "Auto Farm All Boss",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_All_Boss = value
    _G.Settings.Auto_Farm_All_Boss = value
    SaveSettings()
    StopTween(_G.Auto_Farm_All_Boss)
  end
})

spawn(function()
  while wait() do
    if _G.Auto_Farm_All_Boss then
      pcall(function()
        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
          if string.find(v.Name,"Boss") then
            repeat task.wait()
              if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                getgenv().ToTarget(v.HumanoidRootPart.CFrame)
              elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                AutoHaki()
                EquipWeapon(_G.Select_Weapon)
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
              end
            until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
          end
        end
      end)
    end
  end
end)

local MirageFinder = Main:addSection({ Divisions = 1 })

MirageFinder:addLabel({
  Section = 1,
  text = 'Mirage Island',
})

MirageFinder:addButton({
  Section = 1,
  title = "Check Full Moon [ Notification ]",
  disabled = false,
  callback = function() 
      if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=15617446791" then
          game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 100%",Icon = "rbxassetid://15617446791",Duration = 1})

      elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=15617446791" then
          game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 75%",Icon = "rbxassetid://15617446791",Duration = 1})

      elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=15617446791" then
          game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 50%",Icon = "rbxassetid://15617446791",Duration = 1})

      elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=15617446791" then
          game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 25%",Icon = "rbxassetid://15617446791",Duration = 1})

      elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=15617446791" then

              game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 15%",Icon = "rbxassetid://15617446791",Duration = 1})
      else
              game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Full Moon 0%",Icon = "rbxassetid://15617446791",Duration = 1})
      end
  end,
})
MirageFinder:addButton({
  Section = 1,
  title = "Check Mirage Island [ Notification ]",
  disabled = false,
  callback = function() 
      if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
              game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "🏝️ : Mirage Island is Spawning 🟢",Icon = "rbxassetid://15617446791",Duration = 1})
          else
              game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "🏝️ : Mirage Island Not Found ❌",Icon = "rbxassetid://15617446791",Duration = 1})
      end
  end,
})

local Mastery_Section = Main:addSection({ Divisions = 1 })
if W then
Mastery_Section:addLabel({
  Section = 1,
  text = 'World Farm',
})

Mastery_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_New_World,
  title = "Auto New World",
  disabled = false,
  callback = function(value) 
    _G.Auto_New_World = value
    _G.Settings.Auto_New_World = value
    SaveSettings()
    StopTween(_G.Auto_New_World)
  end
})

spawn(function()
  while wait() do
    if _G.Auto_New_World then
      pcall(function()
        if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
          _G.Auto_Farm_Level = false
          if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
            repeat wait() getgenv().ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
            EquipWeapon("Key")
            local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
            repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
            wait(3)
          elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                  repeat wait()
                    AutoHaki()
                    EquipWeapon(_G.Select_Weapon)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    v.HumanoidRootPart.Transparency = 1
                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                  until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                end
              end
            else
              getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
            end
          else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
          end
        end
      end)
    end
  end
end)
end
if W2 then
Mastery_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Third_World,
  title = "Auto Third World",
  disabled = false,
  callback = function(value) 
    _G.Auto_Third_World = value
    _G.Settings.Auto_Third_World = value
    SaveSettings()  
    StopTween(_G.Auto_Third_World)
  end
})

  spawn(function()
		while wait() do
			if _G.Auto_Third_World and W2 then
				pcall(function()
					local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
					local MyLevel = game.Players.LocalPlayer.Data.Level.Value
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then							
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
										for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
													AutoHaki()
													if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
														game:GetService("VirtualUser"):CaptureController()
														game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou") until LOL == "LOLOL"
											end
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
											for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														EquipWeapon(_G.Select_Weapon)
														v.HumanoidRootPart.Transparency = 1
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
														AutoHaki()
														if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															game:GetService("VirtualUser"):CaptureController()
															game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												else
													getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
												end
											end
										else
											getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
										end
									end
								end
							else
								for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
									if v.Price >= 1000000 then  
										table.insert(FruitPrice,v.Name)
									end
								end
								for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
									for _,x in pairs(v) do
										if _ == "Name" then 
											table.insert(FruitStore,x)
										end
									end
								end
								function CheckFruit()
									local player = game.Players.LocalPlayer
									for _, tool in pairs(player.Backpack:GetDescendants()) do
										if tool:FindFirstChild("Fruit") then
											return tool
										end
									end
								end
								function AddToNpc()
									if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(CheckFruit())) then
										wait(1.5)
										EquipWeapon(tostring(CheckFruit()))
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
									end
								end
								for _,y in pairs(FruitPrice) do
									for _,z in pairs(FruitStore) do
										if y == z and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											local args = {
												[1] = "LoadFruit",
												[2] = tostring(y)
											}
								
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											AddToNpc()
										end
									end 
								end
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
								_G.Auto_Farm_Level = false
								if QuestC.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat task.wait()
														if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
														else
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid.WalkSpeed = 0
															v.Head.CanCollide = false
															BringMobFarm = true
															EquipWeapon(_G.Select_Weapon)
															v.HumanoidRootPart.Transparency = 1
															getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
			
															if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
																game:GetService("VirtualUser"):CaptureController()
																game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
															end
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
												end
											end
										end
									else
										BringMobFarm = false
										for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
											if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
												getgenv().ToTarget(CFrameEnemySpawns * CFrame.new(0, 30, 5))
											end
										end
									end
								else
									repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
									if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
										BringMobFarm = false
										game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
									end
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
								_G.Auto_Farm_Level = false
								if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Jeremy [Lv. 850] [Boss]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													BringMobFarm = true
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
			
													if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
														game:GetService("VirtualUser"):CaptureController()
														game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
											end
										end
									end
								else
									getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
								repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Third_World == false
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
							end
						end
					end
				end)
			end
		end
	end)
end
Mastery_Section:addLabel({
  Section = 2,
  text = 'Mastery Farm',
})

Mastery_Section:addCheckbox({
  Section = 2,
  default = _G.Settings.Auto_Farm_Mastery_Fruit,
  title = "Auto Farm Mastery Fruit",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Mastery_Fruit = value    
    _G.Settings.Auto_Farm_Mastery_Fruit = value
    StopTween(_G.Auto_Farm_Mastery_Fruit)
    SaveSettings()
  end
})

function EquipBloxFruit()
  for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == "Blox Fruit" then
       if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        EquipWeapon(v.Name)
      end
    end
  end
end

spawn(function()
  while wait() do
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
    pcall(function()
      if _G.Auto_Farm_Mastery_Fruit then
        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
        if QuestC.Visible == true then
          if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if v.Name == QuestCheck()[3] then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                  repeat task.wait()
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    else
                      if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
                        _G.UseSkill = true
                        EquipBloxFruit()
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
                        PosMon = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.Head.CanCollide = false
                        BringMobFarm = true
                        v.HumanoidRootPart.TranAsparency = 1
                      else
                        _G.UseSkill = false
                        PosMon = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        BringMobFarm = true
                        EquipWeapon(_G.Select_Weapon)
                        v.HumanoidRootPart.Transparency = 1
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
                        AutoHaki()
                        if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                          game:GetService("VirtualUser"):CaptureController()
                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        end
                      end
                    end
                  until not _G.Auto_Farm_Mastery_Fruit or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                end
              end
            end
          else
            _G.UseSkill = false
            UnEquipWeapon(_G.Select_Weapon)
            if _G.Auto_CFrame then
              getgenv().ToTarget(QuestCheck()[7][SetCFarme] * CFrame.new(0,30,5))
              if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                if SetCFarme == nil or SetCFarme == '' then
                  SetCFarme = 1
                  print(SetCFarme)
                elseif SetCFarme >= #QuestCheck()[7] then
                  SetCFarme = 1
                  print(SetCFarme)
                end
                SetCFarme =  SetCFarme + 1

                print(SetCFarme)
                wait(0.5)
              end
            else
              if AttackRandomType_MonCFrame == 1 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
              elseif AttackRandomType_MonCFrame == 2 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
              elseif AttackRandomType_MonCFrame == 3 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
              elseif AttackRandomType_MonCFrame == 4 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
              elseif AttackRandomType_MonCFrame == 5 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
              else
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
              end
            end
          end
        else
          getgenv().ToTarget(QuestCheck()[2])
          if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
            BringMobFarm = false
            wait(0.2)
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5) 
            getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,5))
          end
        end
      end
    end)
  end
end)

Mastery_Section:addCheckbox({
  Section = 2,
  default = _G.Settings.Auto_Farm_Mastery_Gun,
  title = "Auto Farm Mastery Gun",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Mastery_Gun = value
    _G.Settings.Auto_Farm_Mastery_Gun = value
    StopTween(_G.Auto_Farm_Mastery_Gun)
    SaveSettings()
  end
})

_G.Skillz = true
Mastery_Section:addCheckbox({
  Section = 2,
  default = true,
  title = "Skill Z",
  disabled = false,
  callback = function(value) 
    _G.SkillZ = value
    _G.Settings.SkillZ = value
    SaveSettings()
  end
})

Mastery_Section:addCheckbox({
  Section = 2,
  default = false,
  title = "Skill X",
  disabled = false,
  callback = function(value) 
    _G.SkillX = value
    _G.Settings.SkillX = value
    SaveSettings()
  end
})

Mastery_Section:addCheckbox({
  Section = 2,
  default = false,
  title = "Skill C",
  disabled = false,
  callback = function(value) 
    _G.SkillC = value
    _G.Settings.SkillC = value
    SaveSettings()
  end
})

Mastery_Section:addCheckbox({
  Section = 2,
  default = false,
  title = "Skill V",
  disabled = false,
  callback = function(value) 
    _G.SkillV = value
    _G.Settings.SkillV = value
    SaveSettings()
  end
})

Mastery_Section:addCheckbox({
  Section = 2,
  default = _G.Settings.AutoMasterySkill,
  title = "Auto Mastery Skill",
  disabled = false,
  callback = function(value) 
    _G.AutoMasterySkill = value
    _G.Settings.AutoMasterySkill = value
    SaveSettings()
  end
})

spawn(function()
  while task.wait() do
    pcall(function()
      if _G.UseSkill and _G.AutoMasterySkill then
        if _G.SkillZ then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
        end
        if _G.SkillX then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
        end
        if _G.SkillC then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
        end
        if _G.SkillV then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
        end
      elseif UseSkillGun then
        if _G.SkillZ then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
        end
        if _G.SkillX then
          game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
        end
      end
    end)
  end
end)
spawn(function()
  while task.wait() do
    pcall(function()
      if _G.Auto_Farm_Mastery_Fruit then
        local On = {
          [1] = FruitPos.Position
        }
        game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(On))
      else
         local Off = {
          [1] = nil
        }
        game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(Off)) 
      end
    end)
  end
end)

Mastery_Section:addSlider({ 
  section = 2, 
  title = "Select Healths",
  Min = 1,
  Max = 100,
  Disabled = false, 
  callback = function(value)
    _G.Settings.HealthMs = value
    SaveSettings()
  end
})

Mastery_Section:addSlider({ 
  section = 2, 
  title = "Select Distance Y",
  Min = 1,
  Max = 100,
  Disabled = false, 
  callback = function(value)
    _G.Settings.DistanceY = value
    print("Distance Y: ".. tostring(_G.Settings.DistanceY))
    SaveSettings()
  end
})

Mastery_Section:addSlider({ 
  section = 2, 
  title = "Select Distance X",
  Min = 1,
  Max = 100,
  Disabled = false, 
  callback = function(value)
    _G.Settings.Distance = value
    print("Distance X: ".. tostring(_G.Settings.Distance))
    SaveSettings()
  end
})


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
            if  _G.Auto_Farm_Mastery_Gun and _G.UseSkill then
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
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
    pcall(function()
      if _G.Auto_Farm_Mastery_Gun then
        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
        if QuestC.Visible == true then
          if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if v.Name == QuestCheck()[3] then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                  PosMon = v.HumanoidRootPart.CFrame
                  MonHumanoidRootPart = v.HumanoidRootPart
                  PositionSkillMasteryGun = v.HumanoidRootPart.Position
                  repeat task.wait()
                    v.HumanoidRootPart.CFrame = PosMon
                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
                      _G.UseSkill = true
                      getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
                      v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                      v.HumanoidRootPart.CanCollide = false
                      v.Head.CanCollide = false
                      BringMobFarm = true
                      v.HumanoidRootPart.Transparency = 1
                      EquipWeapon(_G.SelectWeaponGun)
                    else
                      _G.UseSkill = false
                      v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                      v.HumanoidRootPart.CanCollide = false
                      v.Head.CanCollide = false
                      BringMobFarm = true
                      EquipWeapon(_G.Select_Weapon)
                      v.HumanoidRootPart.Transparency = 1
                      getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Distance,_G.Settings.DistanceY))
                      AutoHaki()
                      if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                      end
                    end
                  until not _G.Auto_Farm_Mastery_Gun or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                end
              end
            end
          else
            _G.UseSkill = false
            UnEquipWeapon(_G.Select_Weapon)
            if _G.Auto_CFrame then
              getgenv().ToTarget(QuestCheck()[7][SetCFarme] * CFrame.new(0,30,5))
              if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                if SetCFarme == nil or SetCFarme == '' then
                  SetCFarme = 1
                  print(SetCFarme)
                elseif SetCFarme >= #QuestCheck()[7] then
                  SetCFarme = 1
                  print(SetCFarme)
                end
                SetCFarme =  SetCFarme + 1

                print(SetCFarme)
                wait(0.5)
              end
            else
              if AttackRandomType_MonCFrame == 1 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
              elseif AttackRandomType_MonCFrame == 2 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
              elseif AttackRandomType_MonCFrame == 3 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
              elseif AttackRandomType_MonCFrame == 4 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
              elseif AttackRandomType_MonCFrame == 5 then
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
              else
                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
              end
            end
          end
        else
          getgenv().ToTarget(QuestCheck()[2])
          if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
            BringMobFarm = false
            wait(0.2)
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
            getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,5))
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
    if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
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
    if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
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
    if _G.Auto_Farm_Mastery_Gun then
      game:GetService("VirtualUser"):CaptureController()
      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    end
  end
end)

Mastery_Section:addCheckbox({
  Section = 2,
  default = _G.Settings.Auto_Farm_All_Sword,
  title = "Auto Farm All Mastery Sword",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_All_Sword = value 
    _G.Settings.Auto_Farm_All_Sword = value
    SaveSettings()  
    StopTween(_G.Auto_Farm_All_Sword)
  end
})

Tabel = {}
function GetCake_CFrame_Mon()
  local targetMonsters = {"Baking Staff [Lv. 2250]", "Head Baker [Lv. 2275]", "Cake Guard [Lv. 2225]", "Cookie Crafter [Lv. 2200]"}
  local enemySpawns = workspace.EnemySpawns:GetChildren()
  local randomSpawnIndex = math.random(1, #enemySpawns)
  local selectedSpawn = enemySpawns[randomSpawnIndex]
  
  for _,_v1 in pairs(targetMonsters) do
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
function EquipWeaponSword()
  for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == "Sword" then
      if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
        EquipWeapon(v.Name)
      end
    end
  end
end

spawn(function()
  while wait() do 
    pcall(function()
      if _G.Auto_Farm_All_Sword then
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
          if type(v) == "table" then
            if v.Type == "Sword" then
              if tonumber(v.Mastery) >= 1 and tonumber(v.Mastery) < 600 then
                Name = v.Name
                Mastery = v.Mastery
                if tonumber(v.Mastery) >= 1 and tonumber(v.Mastery) < 600 then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(Name) or game.Players.LocalPlayer.Character:FindFirstChild(Name) then
                    if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or  game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then   
                      _G.Bypass_TP = false
                      if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                          if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                            if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                              wait(1.5)
                              getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                              return
                            end
                          end
                        end
                      end
                      for i,_v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                          if _v:FindFirstChild("Humanoid") and _v:FindFirstChild("HumanoidRootPart") and _v.Humanoid.Health > 0 then
                            repeat task.wait()
                              _G.Bypass_TP = false
                              if (_v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                return
                              end
                              EquipWeaponSword()
                              _v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                              BringMobFarm = true
                              getgenv().ToTarget(_v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                              if (_v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                              end
                              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until not _G.Auto_Farm_All_Sword or not _v.Parent or _v.Humanoid.Health <= 0 or tonumber(v.Mastery) > 599
                          end
                        else
                          for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                            if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                              if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                                return
                              end
                            end
                          end
                        end
                      end
                    else 
                      if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                          if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                            if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                              getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                              return
                            end
                          end
                        end
                      else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
                          for i,_v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                            if (_v2.Name == "Baking Staff [Lv. 2250]" or _v2.Name == "Head Baker [Lv. 2275]" or _v2.Name == "Cake Guard [Lv. 2225]" or _v2.Name == "Cookie Crafter [Lv. 2200]") and _v2.Humanoid.Health > 0 then
                              repeat wait()
                                PosMon = _v2.HumanoidRootPart.CFrame
                                EquipWeaponSword()
                                _v2.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                BringMobFarm = true
                                getgenv().ToTarget(_v2.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                if (_v2.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                  game:GetService("VirtualUser"):CaptureController()
                                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                end							
                              until _G.Auto_Farm_All_Sword == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not _v2.Parent or _v2.Humanoid.Health <= 0 or tonumber(v.Mastery) > 599
                            end
                          end
                        else
                          BringMobFarm = false
                          for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Sword" then
                              if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                UnEquipWeapon(v.Name)
                              end
                            end
                          end
                          getgenv().ToTarget(GetCake_CFrame_Mon() * CFrame.new(0, 30, 5))
                          wait(0.5)
                        end
                      end
                    end
                  else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",Name)
                  end
                elseif v.Mastery > 599 then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(Name) or game.Players.LocalPlayer.Character:FindFirstChild(Name) then
                  else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",Name)
                  end
                end
                break
              end
            end
          end
        end
      end
    end)
  end
end)

local Castle_Section = Item:addSection({ Divisions = 1 })

Castle_Section:addLabel({
  Section = 1,
  text = 'Castle Raid',
})

Castle_Section:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Castle_Raid,
  title = "Auto Farm All Mastery Sword",
  disabled = false,
  callback = function(value) 
    _G.Auto_Castle_Raid = value
    _G.Settings.Auto_Castle_Raid = value
    SaveSettings()   
    StopTween(_G.Auto_Castle_Raid)
  end
})

spawn(function()
  while wait() do
    pcall(function()
      if _G.Auto_Castle_Raid then
        if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
          for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
              repeat wait()
                PosMon = v.HumanoidRootPart.CFrame
                EquipWeapon(_G.Select_Weapon)
                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                BringMobFarm = true
                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                  game:GetService("VirtualUser"):CaptureController()
                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                end
              until not _G.Auto_Castle_Raid or not v.Parent or v.Humanoid.Health <= 0
              BringMobFarm = false
            end
          end
        else
          if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
            for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
                getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
              end
            end
          end
          getgenv().ToTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
        end
      end
    end)
  end
end)

local ElitehunterSection = Item:addSection({ Divisions = 1 })

ElitehunterSection:addLabel({
  Section = 1,
  text = 'Elite Hunter',
})


ElitehunterSection:addButton({
  Section = 1,
  title = "Elite Hunter Status [ Notification ]",
  disabled = false,
  callback = function() 
      if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
              game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Status : Found",Icon = "rbxassetid://15617446791",Duration = 1})
          else
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Status : No Found",Icon = "rbxassetid://15617446791",Duration = 1})
        end
  end,
})

local ETotal = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
ElitehunterSection:addButton({
  Section = 1,
  title = "Elite Hunter Total [ Notification ]",
  disabled = false,
  callback = function() 
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Total: "..ETotal,Icon = "rbxassetid://15617446791",Duration = 1})
  end,
})

ElitehunterSection:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Elite_Hunter,
  title = "Auto Elite Hunter",
  disabled = false,
  callback = function(value) 
    _G.Auto_Elite_Hunter = value
    _G.Settings.Auto_Elite_Hunter = value
    SaveSettings()   
    StopTween(_G.Auto_Elite_Hunter)
  end
})

ElitehunterSection:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Elite_Hunter_Hop,
  title = "Auto Elite Hunter Hop",
  disabled = false,
  callback = function(value) 
    _G.Auto_Elite_Hunter_Hop = value 
    _G.Settings.Auto_Elite_Hunter_Hop = value
    SaveSettings()
  end
})

local Elite_All_Mon = {
  ["Mon Quest"] = {"Diablo [Lv. 1750]","Deandre [Lv. 1750]","Urban [Lv. 1750]"},
  ["Mon"] = {"Diablo","Deandre","Urban"},
  ["Item"] = "God's Chalice",
}
spawn(function()
  while wait() do
    pcall(function()
      if _G.Auto_Elite_Hunter then
        local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        for _,_l1 in next,Elite_All_Mon["Mon Quest"] do
          for _,l in next,Elite_All_Mon["Mon"] do
            if QuestUI.Visible == true then
              if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if _1.Name == _l1 then
                    if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
                      repeat wait()
                        EquipWeapon(_G.Select_Weapon)
                        _1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                        getgenv().ToTarget(_1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                        if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                          game:GetService("VirtualUser"):CaptureController()
                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        end
                      until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Elite_Hunter
                    end
                  else
                    if _G.Bypass_TP then
                      if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        repeat wait()
                          Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                        until not _G.Auto_Elite_Hunter
                      end
                    end
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
                      getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                    end
                  end
                end
              end
            else
              if game.Players.LocalPlayer.Backpack:FindFirstChild(Elite_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Elite_All_Mon["Item"]) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                _G.Auto_Elite_Hunter = false
                return
              else
                if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
                  print("Hop")
                  _G.Rejoin = false
                  wait(0.5)
                  Hop()
                else
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                end
              end
            end
          end
        end
      end
    end)
  end
end)

local CakePrince = Item:addSection({ Divisions = 1 })

CakePrince:addLabel({
  Section = 1,
  text = 'Cake Prince',
})

CakePrince:addButton({
  Section = 1,
  title = "Cake Prince Total [ Notification ]",
  disabled = false,
  callback = function() 
  if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
  game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." : More",Icon = "rbxassetid://15617446791",Duration = 1})
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
  game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." : More",Icon = "rbxassetid://15617446791",Duration = 1})
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
  game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,49).." : More",Icon = "rbxassetid://15617446791",Duration = 1})
else
  game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Boss Is Spawning",Icon = "rbxassetid://15617446791",Duration = 1})
end
end,
})

CakePrince:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Cake_Prince,
  title = "Auto Cake Prince",
  disabled = false,
  callback = function(value) 
    _G.Auto_Cake_Prince = value
    if _G.Bypass_TP == false and _G.HH then
      wait(0.5)
      _G.Bypass_TP = true
    else
      _G.Bypass_TP = false
    end
    _G.Settings.Auto_Cake_Prince = value
    SaveSettings()
    StopTween(_G.Auto_Cake_Prince)
  end
})

spawn(function()
  game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if _G.BringNormal and _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
          v.HumanoidRootPart.CFrame = POSCAKE
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

spawn(function()
  while wait() do
    if _G.Auto_Cake_Prince then
      pcall(function()
        if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or  game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then   
            if _G.Settings.Bypass_TP then
            _G.Bypass_TP = false
          end
          if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
            for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
              if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                  wait(1.5)
                  getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                  return
                end
              end
            end
          end

          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                repeat task.wait()
                  if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                    getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                    return
                  end
                  EquipWeapon(_G.Select_Weapon)
                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                  BringMobFarm = true
                  getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                  if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                  end
                  sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                until not _G.Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
              end
            else
              for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
                if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                  if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                    getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                    return
                  end
                end
              end
            end
          end
        else 
          if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
            for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
              if x.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or x.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                  getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
                  return
                end
              end
            end
          else
            if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                  repeat wait()
                    PosMon = v.HumanoidRootPart.CFrame
                    EquipWeapon(_G.Select_Weapon)
                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                    BringMobFarm = true
                    getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                    if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                      game:GetService("VirtualUser"):CaptureController()
                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                    end
                  until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                end
              end
            else
              BringMobFarm = false
              UnEquipWeapon(_G.Select_Weapon)
              getgenv().ToTarget(GetCake_CFrame_Mon() * CFrame.new(0, 30, 5))
              wait(0.5)
            end
          end
        end
      end)
    end
  end
end)

local FarmBone = Item:addSection({ Divisions = 1 })

FarmBone:addLabel({
  Section = 1,
  text = 'Farm Bone',
})

local TBone = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
FarmBone:addButton({
  Section = 1,
  title = "Cake Bone Total [ Notification ]",
  disabled = false,
  callback = function() 
    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
      game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Bone : "..TBone,Icon = "rbxassetid://15617446791",Duration = 1})
    else
      game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Zekrom Hub X",Text = "Bone : Nil ",Icon = "rbxassetid://15617446791",Duration = 1})
    end
end,
})

FarmBone:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Farm_Bone,
  title = "Auto Farm Bone",
  disabled = false,
  callback = function(value) 
    _G.Auto_Farm_Bone = value
    _G.Settings.Auto_Farm_Bone = value
    SaveSettings()
    StopTween(_G.Auto_Farm_Bone)
  end
})

spawn(function()
  game:GetService("RunService").Heartbeat:Connect(function()
    pcall(function()
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if _G.BringNormal and _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
          v.HumanoidRootPart.CFrame = PosMonBone
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

local Number2 = 1
local BoneTabel = {
  ["Mon"] = {"Reborn Skeleton [Lv. 1975]","Demonic Soul [Lv. 2025]","Living Zombie [Lv. 2000]","Posessed Mummy [Lv. 2050]"},
  ["Boss"] = {"Soul Reaper [Lv. 2100] [Raid Boss]"},
  ["Item"] = "Hallow Essence",
}

local SetCFarmeBone = 1
function GetBone_CFrame_Mon()
  local matchingCFrames = {}

  for _, Mon in ipairs(BoneTabel["Mon"]) do
    local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
    
    for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
      if v.Name == result then
        table.insert(matchingCFrames, v.CFrame)
      end
    end
  end
  
  return matchingCFrames
end

spawn(function()
  while wait() do
    pcall(function()
      if _G.Auto_Farm_Bone then
        for _, _Boss in ipairs(BoneTabel["Boss"]) do
          local _Item = BoneTabel["Item"]
          if game:GetService("Workspace").Enemies:FindFirstChild(_Boss) or game:GetService("ReplicatedStorage"):FindFirstChild(_Boss) then
            for _, _v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if _v1.Name == _Boss then
                if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
                  repeat wait()
                    EquipWeapon(_G.Select_Weapon)
                    _v1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                    BringMobFarm = true
                    getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                    if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                      game:GetService("VirtualUser"):CaptureController()
                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                    end
                  until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                  BringMobFarm = false
                end
              end
            end
          else
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_Item) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(_Item) then
              EquipWeapon(_Item)
              getgenv().ToTarget(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
            else
              for _, _Mon in next, BoneTabel["Mon"] do
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                  print(_Mon)
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == _Mon then
                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait()
                          PosMon = v.HumanoidRootPart.CFrame
                          EquipWeapon(_G.Select_Weapon)
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                          BringMobFarm = true
                          getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                          if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                          end
                        until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                      else
                        local CFrameMon = GetBone_CFrame_Mon()[1]
                        repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Farm_Bone
                      end
                    end
                  end
                else
                  if _G.Auto_CFrame then
                    getgenv().ToTarget(GetBone_CFrame_Mon()[SetCFarmeBone] * CFrame.new(0,30,5))
                    if (GetBone_CFrame_Mon()[SetCFarmeBone].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                      if SetCFarmeBone == nil or SetCFarmeBone == '' then
                        SetCFarmeBone = 1
                      elseif SetCFarmeBone >= #GetBone_CFrame_Mon() then
                        SetCFarmeBone = 1
                      end
                      SetCFarmeBone =  SetCFarmeBone + 1
    
                      print(SetCFarmeBone)
                      wait(0.5)
                    end
                  else
                    if AttackRandomType_MonCFrame == 1 then
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
                    elseif AttackRandomType_MonCFrame == 2 then
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
                    elseif AttackRandomType_MonCFrame == 3 then
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(20,30,0))
                    elseif AttackRandomType_MonCFrame == 4 then
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
                    elseif AttackRandomType_MonCFrame == 5 then
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(-20,30,0))
                    else
                      getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
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

FarmBone:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Trade_Bone,
  title = "Auto Trade Bone",
  disabled = false,
  callback = function(value) 
    _G.Auto_Trade_Bone = value
    _G.Settings.Auto_Trade_Bone = value
    SaveSettings()
  end
})

spawn(function()
  while wait(.1) do
    if _G.Auto_Trade_Bone then
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

local SaberFarm = Item:addSection({ Divisions = 1 })

SaberFarm:addLabel({
  Section = 1,
  text = 'Saber',
})

SaberFarm:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Saber,
  title = "Auto Saber",
  disabled = false,
  callback = function(value) 
    _G.Auto_Saber = value
    _G.Settings.Auto_Saber = value
    SaveSettings()
    StopTween(_G.Auto_Saber)
  end
})

SaberFarm:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Saber_Hop,
  title = "Auto Saber Hop",
  disabled = false,
  callback = function(value) 
    _G.Auto_Saber_Hop = value
    _G.Settings.Auto_Saber_Hop = value
    SaveSettings()
  end
})

spawn(function()
  while task.wait() do
    pcall(function()
      if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and Check_Sword("Saber") == nil and W1 then
        _G.Auto_Farm_Level = false
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
          if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
            if (CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
              getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
              task.wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
              task.wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
              task.wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
              task.wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
              task.wait(1)
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
              task.wait(1) 
            end
          local CFrameSaber = CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833)
          if _G.Auto_Farm_Level and _G.Auto_Saber and (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            getgenv().ToTarget(CFrameSaber)
          end
          getgenv().ToTarget(CFrameSaber)
        else
          if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
              EquipWeapon("Torch")
              getgenv().ToTarget(CFrame.new(1113.7229, 5.04679585, 4350.33691, -0.541527212, 5.27007726e-09, 0.840683222, 8.74004868e-08, 1, 5.00303372e-08, -0.840683222, 1.00568911e-07, -0.541527212))
              UnEquipWeapon("Torch")
              EquipWeapon("Torch")
              task.wait(0.5)
            else
              getgenv().ToTarget(CFrame.new(-1610.56824, 12.1773882, 162.830322, -0.907543361, -2.88120088e-08, -0.419958383, -4.66550922e-08, 1, 3.22163096e-08, 0.419958383, 4.88308949e-08, -0.907543361))                 
            end
          else
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
              task.wait(0.5)
              EquipWeapon("Cup")
              task.wait(0.5)
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
              task.wait(0)
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
            else
              if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
              elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                          EquipWeapon(_G.Select_Weapon)
                          v.HumanoidRootPart.CanCollide = false
                          v.Humanoid.WalkSpeed = 0
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                          v.HumanoidRootPart.Transparency = 1
                          EquipWeapon(_G.Select_Weapon)
                          getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                          if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
                        until v.Humanoid.Health <= 0 or _G.AutoSaber == false
                      end
                    end
                  end
                  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                      end
                    else
                      if _G.Auto_Saber_Hop then
                        wait(2.5)
                        Hop()
                      end
                    end
                  end		
                end
              elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                task.wait(0.5)
                EquipWeapon("Relic")
                task.wait(0.5)
                getgenv().ToTarget(CFrame.new(-1406.37512, 29.9773273, 4.45027685, 0.877344251, -3.82776442e-08, 0.479861468, 4.93218133e-09, 1, 7.07504668e-08, -0.479861468, -5.9705755e-08, 0.877344251))
              end
            end
          end
        end
        else
          if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                repeat task.wait()
                  EquipWeapon(_G.Select_Weapon)
                  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                  v.HumanoidRootPart.Transparency = 1
                  getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                  if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
                until v.Humanoid.Health <= 0 or _G.AutoSaber == false
                _G.Auto_Saber = false
                if _G.Settings.Auto_Farm_Level then
                  _G.Auto_Farm_Level = true
                end
                if v.Humanoid.Health <= 0 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                end
              end
            end
          else 
            if _G.Auto_Saber_Hop then
              wait(2.5)
              Hop()
            end
          end
        end
      end
    end)
  end
end)

local PoleSection = Item:addSection({ Divisions = 1 })

PoleSection:addLabel({
  Section = 1,
  text = 'Pole V1',
})

PoleSection:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Pole,
  title = "Auto Pole V1",
  disabled = false,
  callback = function(value) 
    _G.Auto_Pole = value
    _G.Settings.Auto_Pole = value
    SaveSettings()
    StopTween(_G.Auto_Pole)
  end
})

PoleSection:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Pole_V1_Hop,
  title = "Auto Pole V1 Hop",
  disabled = false,
  callback = function(value) 
    _G.Auto_Pole_Hop = value
    _G.Settings.Auto_Pole_V1_Hop = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    pcall(function()
      if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
        if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
          for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if _G.Auto_Pole and v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
              repeat wait()  
                AutoHaki()
                EquipWeapon(_G.Select_Weapon)
                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
              until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
            end
          end
        else
          if _G.Auto_Pole_Hop then
            wait(2.5)
            Hop()
          end
          getgenv().ToTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
        end
      else
        if _G.Auto_Pole_Hop then
          wait(2.5)
          Hop()
        end
      end
    end)
  end
end)



local Player = window:addPage({
  icon = "rbxassetid://11446900930" -- or roblox image id
})


local Comabt = Player:addSection({ Divisions = 1 })
  
Comabt:addLabel({
  Section = 1,
  text = 'Rage Kill Player',
})

local PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
  if v.Name ~= game.Players.LocalPlayer.Name then
    table.insert(PlayerName ,v.Name)
  end
end

Comabt:addDropdown({
  Section = 1,
  title = "Select Player",
  List =  PlayerName,
  multi = false,
  callback = function(value) 
    _G.Settings.Select_Player = value
    SaveSettings()
  end
})

Comabt:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Trade_Bone,
  title = "Spectate Player",
  disabled = false,
  callback = function(value) 
    _G.Spectate_Player = value
    _G.Settings.Spectate_Player = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    if _G.Spectate_Player then
      pcall(function()
        if game.Players:FindFirstChild(_G.Settings.Select_Player) then
          game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Settings.Select_Player).Character.Humanoid
        end
      end)
    else
      game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
  end
end)

Comabt:addCheckbox({
  Section = 1,
  default = _G.Settings.Teleport_to_Player,
  title = "Teleport to Player",
  disabled = false,
  callback = function(value) 
    _G.Teleport_to_Player = value
    _G.Settings.Teleport_to_Player = value
    SaveSettings()
    StopTween(_G.Teleport_to_Player)
  end
})

spawn(function()
  while wait() do
    if _G.Teleport_to_Player then
      pcall(function()
        if game.Players:FindFirstChild(_G.Settings.Select_Player) then
          getgenv().ToTarget(game.Players[_G.Settings.Select_Player].Character.HumanoidRootPart.CFrame)
        end
      end)
    end
  end
end)

Comabt:addCheckbox({
  Section = 1,
  default = _G.Settings.Auto_Kill_Player,
  title = "Auto Kill Player",
  disabled = false,
  callback = function(value) 
    _G.Auto_Kill_Player = value
    _G.Settings.Auto_Kill_Player = value
    SaveSettings()
    StopTween(_G.Auto_Kill_Player)
  end
})

spawn(function()
  while wait() do 
    pcall(function()
      if _G.Auto_Kill_Player then
        if game.Players:FindFirstChild(_G.Settings.Select_Player) then
          for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
            if v.Name == _G.Settings.Select_Player and v.Humanoid.Health > 0 then
              repeat wait()
                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                  getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarmPlayer)
                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                  AutoHaki()
                  local args = {
                    [1] = "LoadItem",
                    [2] = "Buddy Sword"
                  }

                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  EquipWeapon("Buddy Sword")
                  getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarmPlayer)
                  game:GetService'VirtualUser':CaptureController()
                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end
              until game.Players:FindFirstChild(_G.Settings.Select_Player).Character.Humanoid.Health <= 0 or not _G.Auto_Kill_Player or not game.Players:FindFirstChild(_G.Settings.Select_Player)
            end
          end
        end
      end
    end)
  end
end)

spawn(function()
  local Methodnow = 1
  while wait(1) do
    if Methodnow == 1 then
      Methodnow = 2
      MethodFarmPlayer = CFrame.new(40, 15, 0) -- เคลื่อนที่ไปทางด้านขวา
    elseif Methodnow == 2 then
      Methodnow = 3
      MethodFarmPlayer = CFrame.new(0, 15, 40) -- เคลื่อนที่ไปทางด้านหลัง
    elseif Methodnow == 3 then 
      Methodnow = 4
      MethodFarmPlayer = CFrame.new(-40, 15, 0) -- เคลื่อนที่ไปทางด้านซ้าย
    else
      Methodnow = 1
      MethodFarmPlayer = CFrame.new(0, 15, -40) -- เคลื่อนที่ไปทางด้านหน้า
    end
  end
end)

Comabt:addCheckbox({
  Section = 1,
  default = _G.Settings.EnabledPvP,
  title = "Enabled PvP",
  disabled = false,
  callback = function(value) 
    _G.EnabledPvP = value
    _G.Settings.EnabledPvP = value
    SaveSettings()
  end
})

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

Comabt:addLabel({
  Section = 2,
  text = 'Player Misc',
})

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.No_clip,
  title = "No Clip",
  disabled = false,
  callback = function(value) 
    _G.No_clip = value
    _G.Settings.No_clip = value
    SaveSettings()
  end
})

spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.No_clip then
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
          if v:IsA("BasePart") then
            v.CanCollide = false    
          end
        end
      end
    end)
  end)
end)

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.Infinit_Energy,
  title = "Infinit Energy",
  disabled = false,
  callback = function(value) 
    _G.Infinit_Energy = value
    _G.Settings.Infinit_Energy = value
    SaveSettings()
    InfinitEnergy()
  end
})

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.Dodge_No_CoolDown,
  title = "Dodge No CoolDown",
  disabled = false,
  callback = function(value) 
    _G.Dodge_No_CoolDown = value
    _G.Settings.Dodge_No_CoolDown = value
    SaveSettings()
    DodgeNoCoolDown()
  end
})

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.Infinit_Ability,
  title = "Infinit Ability",
  disabled = false,
  callback = function(value) 
    _G.Infinit_Ability = value
    _G.Settings.Infinit_Ability = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    if _G.Infinit_Ability then
      InfAbility()
    end
  end
end)

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.Infinit_Inf_Soru,
  title = "Infinit Inf Soru",
  disabled = false,
  callback = function(value) 
    _G.Infinit_Inf_Soru = Value
    _G.Settings.Infinit_Inf_Soru = value
    SaveSettings()
  end
})

spawn(function()
  while wait() do
    pcall(function()
      if _G.Infinit_Inf_Soru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
        for i,v in next, getgc() do
          if game:GetService("Players").LocalPlayer.Character.Soru then
            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
              for i2,v2 in next, getupvalues(v) do
                if typeof(v2) == "table" then
                  repeat wait(.1)
                    v2.LastUse = 0
                  until not Value or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                end
              end
            end
          end
        end
      end
    end)
  end
end)

local function round(n)
  return math.floor(tonumber(n) + 0.5)
end
  
function UpdateChestChams() 
  for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if _G.ESP_Chest then
      if v.Name:find("Chest") then
        if v.Name == "Chest1" then
          if not v:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.fromRGB(255, 255, 255)
            Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            Highlight.Parent = v
          end
          if not v:FindFirstChild('EspChest') then
            local bill = Instance.new('BillboardGui',v)
            bill.Name = 'EspChest'
            bill.ExtentsOffset = Vector3.new(0, 1, 0)
            bill.Size = UDim2.new(1,200,1,30)
            bill.Adornee = v
            bill.AlwaysOnTop = true
            local name = Instance.new('TextLabel',bill)
            name.Font = "GothamBold"
            name.FontSize = "Size11"
            name.TextWrapped = true
            name.Size = UDim2.new(1,0,1,0)
            name.TextYAlignment = 'Top'
            name.BackgroundTransparency = 1
            name.TextStrokeTransparency = 0.5
            name.TextColor3 = Color3.fromRGB(255, 255, 255)
            name.Text = ("Chest 1" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
          else
            v.EspChest.TextLabel.Text = ("Chest 1" ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
          end
        end
        if v.Name == "Chest2" then
          if not v:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
            Highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
            Highlight.Parent = v
          end
          if not v:FindFirstChild('EspChest') then
            local bill = Instance.new('BillboardGui',v)
            bill.Name = 'EspChest'
            bill.ExtentsOffset = Vector3.new(0, 1, 0)
            bill.Size = UDim2.new(1,200,1,30)
            bill.Adornee = v
            bill.AlwaysOnTop = true
            name = Instance.new('TextLabel',bill)
            name.Font = "GothamBold"
            name.FontSize = "Size11"
            name.TextWrapped = true
            name.Size = UDim2.new(1,0,1,0)
            name.TextYAlignment = 'Top'
            name.BackgroundTransparency = 1
            name.TextStrokeTransparency = 0.5
            name.TextColor3 = Color3.fromRGB(255, 255, 0)
            name.Text = ("Chest 2" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
          else
            v.EspChest.TextLabel.Text = ("Chest 2" ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
          end
        end
        if v.Name == "Chest3" then
          if not v:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.fromRGB(0, 222, 255)
            Highlight.OutlineColor = Color3.fromRGB(0, 222, 255)
            Highlight.Parent = v
          end
          if not v:FindFirstChild('EspChest') then
            local bill = Instance.new('BillboardGui',v)
            bill.Name = 'EspChest'
            bill.ExtentsOffset = Vector3.new(0, 1, 0)
            bill.Size = UDim2.new(1,200,1,30)
            bill.Adornee = v
            bill.AlwaysOnTop = true
            name = Instance.new('TextLabel',bill)
            name.Font = "GothamBold"
            name.FontSize = "Size11"
            name.TextWrapped = true
            name.Size = UDim2.new(1,0,1,0)
            name.TextYAlignment = 'Top'
            name.BackgroundTransparency = 1
            name.TextStrokeTransparency = 0.5
            name.TextColor3 = Color3.fromRGB(0, 222, 255)
            name.Text = ("Chest 3" ..' \n'.." [ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M'.." ] ")
          else
            v.EspChest.TextLabel.Text = ("Chest 3" ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
          end
        end
      end
    else
      if v:FindFirstChild("Highlight") then
        v:FindFirstChild("Highlight"):Destroy()
      end
      if v:FindFirstChild('EspChest') then
        v:FindFirstChild('EspChest'):Destroy()
      end
    end
  end
end

spawn(function()
  while wait() do
    if _G.ESP_Chest then
      UpdateChestChams() 
    end
  end
end)

Comabt:addCheckbox({
  Section = 2,
  default = _G.Settings.ESP_Chest,
  title = "ESP Chest",
  disabled = false,
  callback = function(value) 
    _G.Settings.ESP_Chest = Value
    _G.ESP_Chest = Value
    UpdateChestChams()
    SaveSettings()
  end
})

