function CheckQuest()
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if World1 then
if MyLevel == 1 or MyLevel <= 9 then -- Bandit
    LevelFarm = 1

    Name = "Bandit"
    QuestName = "BanditQuest1"

    LevelQuest = 1
    NameMon = "Bandit"

    CFrameMon = CFrame.new(1145, 17, 1634)
    VectorMon = Vector3.new(1145, 17, 1634)

    CFrameQuest = CFrame.new(1060, 17, 1547)
    VectorQuest = Vector3.new(1060, 17, 1547)
elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
    LevelFarm = 3

    Name = "Monkey"
    QuestName = "JungleQuest"

    LevelQuest = 1
    NameMon = "Monkey"

    CFrameMon = CFrame.new(-1496, 39, 35)
    VectorMon = Vector3.new(-1496, 39, 35)

    CFrameQuest = CFrame.new(-1602, 37, 152)
    VectorQuest = Vector3.new(-1602, 37, 152)
elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
    LevelFarm = 4

    Name = "Gorilla"
    QuestName = "JungleQuest"

    LevelQuest = 2
    NameMon = "Gorilla"

    CFrameMon = CFrame.new(-1237, 6, -486)
    VectorMon = Vector3.new(-1237, 7, -486)

    CFrameQuest = CFrame.new(-1602, 37, 152)
    VectorQuest = Vector3.new(-1602, 37, 152)
elseif MyLevel == 30 or MyLevel <= 59 then -- Pirate
    LevelFarm = 6

    Name = "Pirate"
    QuestName = "BuggyQuest1"

    LevelQuest = 1
    NameMon = "Pirate"

    CFrameMon = CFrame.new(-1115, 14, 3938)
    VectorMon = Vector3.new(-1115, 14, 3938)

    CFrameQuest = CFrame.new(-1140, 5, 3828)
    VectorQuest = Vector3.new(-1140, 5, 3828)
elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
    LevelFarm = 9

    Name = "Desert Bandit"
    QuestName = "DesertQuest"

    LevelQuest = 1
    NameMon = "Desert Bandit"

    CFrameMon = CFrame.new(932, 7, 4484)
    VectorMon = Vector3.new(932, 7, 4484)

    CFrameQuest = CFrame.new(897, 7, 4388)
    VectorQuest = Vector3.new(897, 7, 4388)
elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
    LevelFarm = 10

    Name = "Desert Officer"
    QuestName = "DesertQuest"

    LevelQuest = 2
    NameMon = "Desert Officer"

    CFrameMon = CFrame.new(1572, 10, 4373)
    VectorMon = Vector3.new(1572, 10, 4373)

    CFrameQuest = CFrame.new(897, 7, 4388)
    VectorQuest = Vector3.new(897, 7, 4388)
elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
    LevelFarm = 12

    Name = "Snow Bandit"
    QuestName = "SnowQuest"

    LevelQuest = 1
    NameMon = "Snow Bandits"

    CFrameMon = CFrame.new(1289, 150, -1442)
    VectorMon = Vector3.new(1289, 106, -1442)

    CFrameQuest = CFrame.new(1386, 87, -1297)
    VectorQuest = Vector3.new(1386, 87, -1297)
elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
    LevelFarm = 13

    Name = "Snowman"
    QuestName = "SnowQuest"

    LevelQuest = 2
    NameMon = "Snowman"

    CFrameMon = CFrame.new(1289, 150, -1442)
    VectorMon = Vector3.new(1289, 106, -1442)

    CFrameQuest = CFrame.new(1386, 87, -1297)
    VectorQuest = Vector3.new(1386, 87, -1297)
elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
    LevelFarm = 15

    Name = "Chief Petty Officer"
    QuestName = "MarineQuest2"

    LevelQuest = 1
    NameMon = "Chief Petty Officer"

    CFrameMon = CFrame.new(-4855, 23, 4308)
    VectorMon = Vector3.new(-4855, 23, 4308)

    CFrameQuest = CFrame.new(-5036, 29, 4325)
    VectorQuest = Vector3.new(-5036, 29, 4325)
elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
    LevelFarm = 17

    Name = "Sky Bandit"
    QuestName = "SkyQuest"

    LevelQuest = 1
    NameMon = "Sky Bandit"

    CFrameMon = CFrame.new(-4981, 278, -2830)
    VectorMon = Vector3.new(-4981, 278, -2830)

    CFrameQuest = CFrame.new(-4842, 718, -2623)
    VectorQuest = Vector3.new(-4842, 718, -2623)
elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
    LevelFarm = 18

    Name = "Dark Master"
    QuestName = "SkyQuest"

    LevelQuest = 2
    NameMon = "Dark Master"

    CFrameMon = CFrame.new(-5250, 389, -2272)
    VectorMon = Vector3.new(-5250, 389, -2272)

    CFrameQuest = CFrame.new(-4842, 718, -2623)
    VectorQuest = Vector3.new(-4842, 718, -2623)
elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
    LevelFarm = 20

    Name = "Prisoner"
    QuestName = "PrisonerQuest"

    LevelQuest = 1
    NameMon = "Prisoner"

    CFrameMon = CFrame.new(5411, 96, 690)
    VectorMon = Vector3.new(5411, 96, 690)

    CFrameQuest = CFrame.new(5308, 2, 474)
    VectorQuest = Vector3.new(5308, 2, 474)
elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
    LevelFarm = 21

    Name = "Dangerous Prisoner"
    QuestName = "PrisonerQuest"

    LevelQuest = 2
    NameMon = "Dangerous Prisoner"

    CFrameMon = CFrame.new(5411, 96, 690)
    VectorMon = Vector3.new(5411, 96, 690)

    CFrameQuest = CFrame.new(5308, 2, 474)
    VectorQuest = Vector3.new(5308, 2, 474)
elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
    LevelFarm = 23

    Name = "Toga Warrior"
    QuestName = "ColosseumQuest"

    LevelQuest = 1
    NameMon = "Toga Warrior"

    CFrameMon = CFrame.new(-1824, 50, -2743)
    VectorMon = Vector3.new(-1824, 50, -2743)

    CFrameQuest = CFrame.new(-1576, 8, -2985)
    VectorQuest = Vector3.new(-1576, 8, -2985)
elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
    LevelFarm = 25

    Name = "Military Soldier"
    QuestName = "MagmaQuest"

    LevelQuest = 1
    NameMon = "Military Soldier"

    CFrameMon = CFrame.new(-5555.064453125, 16.73392105102539, 8377.623046875)
    VectorMon = Vector3.new(-5555.064453125, 16.73392105102539, 8377.623046875)

    CFrameQuest = CFrame.new(-5316, 12, 8517)
    VectorQuest = Vector3.new(-5316, 12, 8517)
elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
    LevelFarm = 26

    Name = "Military Spy"
    QuestName = "MagmaQuest"

    LevelQuest = 2
    NameMon = "Military Spy"

    CFrameMon = CFrame.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
    VectorMon = Vector3.new(-5806.056640625, 99.96672058105469, 8777.8447265625)

    CFrameQuest = CFrame.new(-5316, 12, 8517)
    VectorQuest = Vector3.new(-5316, 12, 8517)
elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
    LevelFarm = 28

    Name = "Fishman Warrior"
    QuestName = "FishmanQuest"

    LevelQuest = 1
    NameMon = "Fishman Warrior"

    CFrameMon = CFrame.new(60859, 19, 1501)
    VectorMon = Vector3.new(60859, 19, 1501)

    CFrameQuest = CFrame.new(61123, 19, 1569)
    VectorQuest = Vector3.new(61123, 19, 1569)
elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
    LevelFarm = 29

    Name = "Fishman Commando"
    QuestName = "FishmanQuest"

    LevelQuest = 2
    NameMon = "Fishman Commando"

    CFrameMon = CFrame.new(61891, 19, 1470)
    VectorMon = Vector3.new(61891, 19, 1470)

    CFrameQuest = CFrame.new(61123, 19, 1569)
    VectorQuest = Vector3.new(61123, 19, 1569)
elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
    LevelFarm = 31

    Name = "God's Guard"
    QuestName = "SkyExp1Quest"

    LevelQuest = 1
    NameMon = "God's Guards"

    CFrameMon = CFrame.new(-4698, 845, -1912)
    VectorMon = Vector3.new(-4698, 845, -1912)

    CFrameQuest = CFrame.new(-4722, 845, -1954)
    VectorQuest = Vector3.new(-4722, 846, -1954)
elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
    LevelFarm = 33

    Name = "Shanda"
    QuestName = "SkyExp1Quest"

    LevelQuest = 2
    NameMon = "Shandas"

    CFrameMon = CFrame.new(-7685, 5567, -502)
    VectorMon = Vector3.new(-7685, 5567, -502)

    CFrameQuest = CFrame.new(-7862, 5546, -380)
    VectorQuest = Vector3.new(-7862, 5546, -380)
elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
    LevelFarm = 34

    Name = "Royal Squad"
    QuestName = "SkyExp2Quest"

    LevelQuest = 1
    NameMon = "Royal Squad"

    CFrameMon = CFrame.new(-7670, 5607, -1460)
    VectorMon = Vector3.new(-7670, 5607, -1460)

    CFrameQuest = CFrame.new(-7904, 5636, -1412)
    VectorQuest = Vector3.new(-7904, 5636, -1412)
elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
    LevelFarm = 35

    Name = "Royal Soldier"
    QuestName = "SkyExp2Quest"

    LevelQuest = 2
    NameMon = "Royal Soldier"

    CFrameMon = CFrame.new(-7828, 5607, -1744)
    VectorMon = Vector3.new(-7828, 5607, -1744)

    CFrameQuest = CFrame.new(-7904, 5636, -1412)
    VectorQuest = Vector3.new(-7904, 5636, -1412)
elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
    LevelFarm = 37

    Name = "Galley Pirate"
    QuestName = "FountainQuest"

    LevelQuest = 1
    NameMon = "Galley Pirate"

    CFrameMon = CFrame.new(5589, 45, 3996)
    VectorMon = Vector3.new(5589, 45, 3996)

    CFrameQuest = CFrame.new(5256, 39, 4050)
    VectorQuest = Vector3.new(5256, 39, 4050)
elseif MyLevel >= 650 then -- Galley Captain
    LevelFarm = 38

    Name = "Galley Captain"
    QuestName = "FountainQuest"

    LevelQuest = 2
    NameMon = "Galley Captain"

    CFrameMon = CFrame.new(5649, 39, 4936)
    VectorMon = Vector3.new(5649, 39, 4936)

    CFrameQuest = CFrame.new(5256, 39, 4050)
    VectorQuest = Vector3.new(5256, 39, 4050)
end
end
if World2 then
if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
    LevelFarm = 1

    Name = "Raider"
    QuestName = "Area1Quest"

    LevelQuest = 1
    NameMon = "Raider"

    CFrameQuest = CFrame.new(-425, 73, 1837)
    VectorQuest = Vector3.new(-425, 73, 1837)

    CFrameMon = CFrame.new(-746, 39, 2390)
    VectorMon = Vector3.new(-746, 39, 2389)
elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
    LevelFarm = 2

    Name = "Mercenary"
    QuestName = "Area1Quest"

    LevelQuest = 2
    NameMon = "Mercenary"

    CFrameQuest = CFrame.new(-425, 73, 1837)
    VectorQuest = Vector3.new(-425, 73, 1837)

    CFrameMon = CFrame.new(-856.213134765625, 135.4429473876953, 1407.4842529296875)
    VectorMon = Vector3.new(-856.213134765625, 135.4429473876953, 1407.4842529296875)
elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
    LevelFarm = 3

    Name = "Swan Pirate"
    QuestName = "Area2Quest"

    LevelQuest = 1
    NameMon = "Swan Pirate"

    CFrameQuest = CFrame.new(634, 73, 918)
    VectorQuest = Vector3.new(634, 73, 918)

    CFrameMon = CFrame.new(878, 122, 1235)
    VectorMon = Vector3.new(878, 122, 1235)
elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
    LevelFarm = 4

    Name = "Factory Staff"
    QuestName = "Area2Quest"

    LevelQuest = 2
    NameMon = "Factory Staff"

    CFrameQuest = CFrame.new(634, 73, 918)
    VectorQuest = Vector3.new(634, 73, 918)

    CFrameMon = CFrame.new(295, 73, -56)
    VectorMon = Vector3.new(295, 73, -56)
elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
    LevelFarm = 6

    Name = "Marine Lieutenant"
    QuestName = "MarineQuest3"

    LevelQuest = 1
    NameMon = "Marine Lieutenant"

    CFrameMon = CFrame.new(-2806, 73, -3038)
    VectorMon = Vector3.new(-2806, 73, -3038)

    CFrameQuest = CFrame.new(-2443, 73, -3219)
    VectorQuest = Vector3.new(-2443, 73, -3219)
elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
    LevelFarm = 7

    Name = "Marine Captain"
    QuestName = "MarineQuest3"

    LevelQuest = 2
    NameMon = "Marine Captain"

    CFrameMon = CFrame.new(-1869, 73, -3320)
    VectorMon = Vector3.new(-1869, 73, -3320)

    CFrameQuest = CFrame.new(-2443, 73, -3219)
    VectorQuest = Vector3.new(-2443, 73, -3219)
elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
    LevelFarm = 9

    Name = "Zombie"
    QuestName = "ZombieQuest"

    LevelQuest = 1
    NameMon = "Zombie"

    CFrameMon = CFrame.new(-5736, 126, -728)
    VectorMon = Vector3.new(-5736, 126, -728)

    CFrameQuest = CFrame.new(-5494, 49, -795)
    VectorQuest = Vector3.new(-5494, 49, -794)
elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
    LevelFarm = 10

    Name = "Vampire"
    QuestName = "ZombieQuest"

    LevelQuest = 2
    NameMon = "Vampire"

    CFrameMon = CFrame.new(-6033, 7, -1317)
    VectorMon = Vector3.new(-6033, 7, -1317)

    CFrameQuest = CFrame.new(-5494, 49, -795)
    VectorQuest = Vector3.new(-5494, 49, -795)
elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
    LevelFarm = 12

    Name = "Snow Trooper"
    QuestName = "SnowMountainQuest"

    LevelQuest = 1
    NameMon = "Snow Trooper"

    CFrameMon = CFrame.new(478, 402, -5362)
    VectorMon = Vector3.new(478, 402, -5362)

    CFrameQuest = CFrame.new(605, 402, -5371)
    VectorQuest = Vector3.new(605, 402, -5371)
elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
    LevelFarm = 13

    Name = "Winter Warrior"
    QuestName = "SnowMountainQuest"

    LevelQuest = 2
    NameMon = "Winter Warrior"

    CFrameMon = CFrame.new(1157, 430, -5188)
    VectorMon = Vector3.new(1157, 430, -5188)

    CFrameQuest = CFrame.new(605, 402, -5371)
    VectorQuest = Vector3.new(605, 402, -5371)
elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
    LevelFarm = 15

    Name = "Lab Subordinate"
    QuestName = "IceSideQuest"

    LevelQuest = 1
    NameMon = "Lab Subordinate"

    CFrameMon = CFrame.new(-5782, 42, -4484)
    VectorMon = Vector3.new(-5782, 42, -4484)

    CFrameQuest = CFrame.new(-6060, 16, -4905)
    VectorQuest = Vector3.new(-6060, 16, -4905)
elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
    LevelFarm = 16

    Name = "Horned Warrior"
    QuestName = "IceSideQuest"

    LevelQuest = 2
    NameMon = "Horned Warrior"

    CFrameMon = CFrame.new(-6406, 24, -5805)
    VectorMon = Vector3.new(-6406, 24, -5805)

    CFrameQuest = CFrame.new(-6060, 16, -4905)
    VectorQuest = Vector3.new(-6060, 16, -4905)
elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
    LevelFarm = 18

    Name = "Magma Ninja"
    QuestName = "FireSideQuest"
    LevelQuest = 1
    NameMon = "Magma Ninja"

    CFrameMon = CFrame.new(-5428, 78, -5959)
    VectorMon = Vector3.new(-5428, 78, -5959)

    CFrameQuest = CFrame.new(-5430, 16, -5295)
    VectorQuest = Vector3.new(-5430, 16, -5296)
elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
    LevelFarm = 19

    Name = "Lava Pirate"
    QuestName = "FireSideQuest"

    LevelQuest = 2
    NameMon = "Lava Pirate"

    CFrameMon = CFrame.new(-5270, 42, -4800)
    VectorMon = Vector3.new(-5270, 42, -4800)

    CFrameQuest = CFrame.new(-5430, 16, -5295)
    VectorQuest = Vector3.new(-5430, 16, -5296)
elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
    LevelFarm = 21

    Name = "Ship Deckhand"
    QuestName = "ShipQuest1"

    LevelQuest = 1
    NameMon = "Ship Deckhand"

    CFrameMon = CFrame.new(1198, 126, 33031)
    VectorMon = Vector3.new(1198, 126, 33031)

    CFrameQuest = CFrame.new(1038, 125, 32913)
    VectorQuest = Vector3.new(1038, 125, 32913)
elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
    LevelFarm = 22

    Name = "Ship Engineer"
    QuestName = "ShipQuest1"

    LevelQuest = 2
    NameMon = "Ship Engineer"

    CFrameMon = CFrame.new(918, 44, 32787)
    VectorMon = Vector3.new(918, 44, 32787)

    CFrameQuest = CFrame.new(1038, 125, 32913)
    VectorQuest = Vector3.new(1038, 125, 32913)
elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
    LevelFarm = 23

    Name = "Ship Steward"
    QuestName = "ShipQuest2"

    LevelQuest = 1
    NameMon = "Ship Steward"

    CFrameMon = CFrame.new(915, 130, 33419)
    VectorMon = Vector3.new(915, 130, 33419)

    CFrameQuest = CFrame.new(969, 125, 33245)
    VectorQuest = Vector3.new(969, 125, 33245)
elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
    LevelFarm = 24

    Name = "Ship Officer"
    QuestName = "ShipQuest2"

    LevelQuest = 2
    NameMon = "Ship Officer"

    CFrameMon = CFrame.new(916, 181, 33335)
    VectorMon = Vector3.new(916, 181, 33335)

    CFrameQuest = CFrame.new(969, 125, 33245)
    VectorQuest = Vector3.new(969, 125, 33245)
elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
    LevelFarm = 26

    Name = "Arctic Warrior"
    QuestName = "FrostQuest"

    LevelQuest = 1
    NameMon = "Arctic Warrior"

    CFrameMon = CFrame.new(6038, 29, -6231)
    VectorMon = Vector3.new(6038, 29, -6231)

    VectorQuest = Vector3.new(5669, 28, -6482)
    CFrameQuest = CFrame.new(5669, 28, -6482)
elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
    LevelFarm = 27

    Name = "Snow Lurker"
    QuestName = "FrostQuest"

    LevelQuest = 2
    NameMon = "Snow Lurker"

    CFrameMon = CFrame.new(5560, 42, -6826)
    VectorMon = Vector3.new(5560, 42, -6826)

    VectorQuest = Vector3.new(5669, 28, -6482)
    CFrameQuest = CFrame.new(5669, 28, -6482)
elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
    LevelFarm = 29
    Name = "Sea Soldier"
    QuestName = "ForgottenQuest"

    LevelQuest = 1
    NameMon = "Sea Soldier"

    CFrameMon = CFrame.new(-3022, 16, -9722)
    VectorMon = Vector3.new(-3022, 16, -9722)

    CFrameQuest = CFrame.new(-3054, 237, -10148)
    VectorQuest = Vector3.new(-3054, 237, -10148)
elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
    LevelFarm = 30
    Name = "Water Fighter"
    QuestName = "ForgottenQuest"

    LevelQuest = 2
    NameMon = "Water Fighter"

    CFrameMon = CFrame.new(-3385, 239, -10542)
    VectorMon = Vector3.new(-3385, 239, -10542)

    CFrameQuest = CFrame.new(-3054, 237, -10148)
    VectorQuest = Vector3.new(-3054, 237, -10148)
end
end
if World3 then
if MyLevel == 1500 or MyLevel <= 1524 then
    LevelFarm = 1

    Name = "Pirate Millionaire"
    QuestName = "PiratePortQuest"

    LevelQuest = 1
    NameMon = "Pirate"

    CFrameMon = CFrame.new(-373, 75, 5550)
    VectorMon = Vector3.new(-373, 75, 5550)

    CFrameQuest = CFrame.new(-288, 44, 5576)
    VectorQuest = Vector3.new(-288, 44, 5576)
elseif MyLevel == 1525 or MyLevel <= 1574 then
    LevelFarm = 2

    Name = "Pistol Billionaire"
    QuestName = "PiratePortQuest"

    LevelQuest = 2
    NameMon = "Pistol"

    CFrameMon = CFrame.new(-469, 74, 5904)
    VectorMon = Vector3.new(-469, 74, 5904)

    CFrameQuest = CFrame.new(-288, 44, 5576)
    VectorQuest = Vector3.new(-288, 44, 5576)
elseif MyLevel == 1575 or MyLevel <= 1599 then
    LevelFarm = 4

    Name = "Dragon Crew Warrior"
    QuestName = "AmazonQuest"

    LevelQuest = 1
    NameMon = "Warrior"

    CFrameMon = CFrame.new(6339, 52, -1213)
    VectorMon = Vector3.new(6338, 52, -1213)

    CFrameQuest = CFrame.new(5835, 52, -1105)
    VectorQuest = Vector3.new(5835, 52, -1105)
elseif MyLevel == 1600 or MyLevel <= 1624 then
    LevelFarm = 5

    Name = "Dragon Crew Archer"
    QuestName = "AmazonQuest"

    LevelQuest = 2
    NameMon = "Archer"

    CFrameMon = CFrame.new(6594, 383, 139)
    VectorMon = Vector3.new(6594, 383, 139)

    CFrameQuest = CFrame.new(5835, 52, -1105)
    VectorQuest = Vector3.new(5835, 52, -1105)
elseif MyLevel == 1625 or MyLevel <= 1649 then
    LevelFarm = 6

    Name = "Female Islander"
    QuestName = "AmazonQuest2"

    LevelQuest = 1
    NameMon = "Female"

    CFrameMon = CFrame.new(5308, 819, 1047)
    VectorMon = Vector3.new(5308, 819, 1047)

    CFrameQuest = CFrame.new(5443, 602, 751)
    VectorQuest = Vector3.new(5443, 602, 751)
elseif MyLevel == 1650 or MyLevel <= 1699 then
    LevelFarm = 7

    Name = "Giant Islander"
    QuestName = "AmazonQuest2"

    LevelQuest = 2
    NameMon = "Giant Islanders"

    CFrameMon = CFrame.new(4951, 602, -68)
    VectorMon = Vector3.new(4951, 602, -68)

    CFrameQuest = CFrame.new(5443, 602, 751)
    VectorQuest = Vector3.new(5443, 602, 751)
elseif MyLevel == 1700 or MyLevel <= 1724 then
    LevelFarm = 9

    Name = "Marine Commodore"
    QuestName = "MarineTreeIsland"

    LevelQuest = 1
    NameMon = "Marine Commodore"

    CFrameMon = CFrame.new(2447, 73, -7470)
    VectorMon = Vector3.new(2447, 73, -7470)

    CFrameQuest = CFrame.new(2180, 29, -6737)
    VectorQuest = Vector3.new(2180, 29, -6737)
elseif MyLevel == 1725 or MyLevel <= 1774 then
    LevelFarm = 10

    Name = "Marine Rear Admiral"
    QuestName = "MarineTreeIsland"

    LevelQuest = 2
    NameMon = "Marine Rear Admiral"

    CFrameMon = CFrame.new(3671, 161, -6932)
    VectorMon = Vector3.new(3671, 161, -6932)

    CFrameQuest = CFrame.new(2180, 29, -6737)
    VectorQuest = Vector3.new(2180, 29, -6737)
elseif MyLevel == 1775 or MyLevel <= 1800 then
    LevelFarm = 12

    Name = "Fishman Raider"
    QuestName = "DeepForestIsland3"

    LevelQuest = 1
    NameMon = "Fishman Raider"

    CFrameMon = CFrame.new(-10560, 332, -8466)
    VectorMon = Vector3.new(-10560, 332, -8466)

    CFrameQuest = CFrame.new(-10584, 332, -8758)
    VectorQuest = Vector3.new(-10584, 332, -8758)
elseif MyLevel == 1800 or MyLevel <= 1824 then
    LevelFarm = 13

    Name = "Fishman Captain"
    QuestName = "DeepForestIsland3"

    LevelQuest = 2
    NameMon = "Fishman Captain"

    CFrameMon = CFrame.new(-10993, 332, -8940)
    VectorMon = Vector3.new(-10993, 332, -8940)

    CFrameQuest = CFrame.new(-10584, 332, -8758)
    VectorQuest = Vector3.new(-10584, 332, -8758)
elseif MyLevel == 1825 or MyLevel <= 1849 then
    LevelFarm = 14

    Name = "Forest Pirate"
    QuestName = "DeepForestIsland"

    LevelQuest = 1
    NameMon = "Forest Pirate"

    CFrameMon = CFrame.new(-13479, 333, -7905)
    VectorMon = Vector3.new(-13479, 333, -7905)

    CFrameQuest = CFrame.new(-13232, 333, -7627)
    VectorQuest = Vector3.new(-13232, 333, -7627)
elseif MyLevel == 1850 or MyLevel <= 1899 then
    LevelFarm = 15

    Name = "Mythological Pirate"
    QuestName = "DeepForestIsland"

    LevelQuest = 2
    NameMon = "Mythological Pirate"

    CFrameMon = CFrame.new(-13545, 470, -6917)
    VectorMon = Vector3.new(-13545, 470, -6917)

    CFrameQuest = CFrame.new(-13232, 333, -7627)
    VectorQuest = Vector3.new(-13232, 333, -7627)
elseif MyLevel == 1900 or MyLevel <= 1924 then
    LevelFarm = 16

    Name = "Jungle Pirate"
    QuestName = "DeepForestIsland2"

    LevelQuest = 1
    NameMon = "Jungle Pirate"

    CFrameMon = CFrame.new(-12107, 332, -10549)
    VectorMon = Vector3.new(-12106, 332, -10549)

    CFrameQuest = CFrame.new(-12684, 391, -9902)
    VectorQuest = Vector3.new(-12684, 391, -9902)
elseif MyLevel == 1925 or MyLevel <= 1974 then
    LevelFarm = 17

    Name = "Musketeer Pirate"
    QuestName = "DeepForestIsland2"

    LevelQuest = 2
    NameMon = "Musketeer Pirate"

    CFrameMon = CFrame.new(-13286, 392, -9769)
    VectorMon = Vector3.new(-13286, 392, -9768)

    CFrameQuest = CFrame.new(-12684, 391, -9902)
    VectorQuest = Vector3.new(-12684, 391, -9902)
elseif MyLevel == 1975 or MyLevel <= 1999 then
    LevelFarm = 19
    Name = "Reborn Skeleton"
    QuestName = "HauntedQuest1"

    LevelQuest = 1
    NameMon = "Reborn Skeleton"

    CFrameMon = CFrame.new(-8760, 142, 6039)
    VectorMon = Vector3.new(-8760, 142, 6039)

    CFrameQuest = CFrame.new(-9482, 142, 5567)
    VectorQuest = Vector3.new(-9482, 142, 5567)
elseif MyLevel == 2000 or MyLevel <= 2024 then
    LevelFarm = 20

    Name = "Living Zombie"
    QuestName = "HauntedQuest1"

    LevelQuest = 2
    NameMon = "Living Zombie"

    CFrameMon = CFrame.new(-10144, 140, 5932)
    VectorMon = Vector3.new(-10144, 140, 5932)

    CFrameQuest = CFrame.new(-9482, 142, 5567)
    VectorQuest = Vector3.new(-9482, 142, 5567)
elseif MyLevel == 2025 or MyLevel <= 2049 then
    LevelFarm = 21

    Name = "Demonic Soul"
    QuestName = "HauntedQuest2"

    LevelQuest = 1
    NameMon = "Demonic Soul"

    CFrameMon = CFrame.new(-9507, 172, 6158)
    VectorMon = Vector3.new(-9506, 172, 6158)

    CFrameQuest = CFrame.new(-9513, 172, 6079)
    VectorQuest = Vector3.new(-9513, 172, 6079)
elseif MyLevel == 2050 or MyLevel <= 2074 then
    LevelFarm = 22

    Name = "Posessed Mummy"
    QuestName = "HauntedQuest2"

    LevelQuest = 2
    NameMon = "Posessed Mummy"

    CFrameMon = CFrame.new(-9577, 6, 6223)
    VectorMon = Vector3.new(-9577, 6, 6223)

    CFrameQuest = CFrame.new(-9513, 172, 6079)
    VectorQuest = Vector3.new(-9513, 172, 6079)
elseif MyLevel == 2075 or MyLevel <= 2099 then
    LevelFarm = 24

    Name = "Peanut Scout"
    QuestName = "NutsIslandQuest"

    LevelQuest = 1
    NameMon = "Peanut Scout"

    CFrameMon = CFrame.new(-2124, 123, -10435)
    VectorMon = Vector3.new(-2124, 123, -10435)

    CFrameQuest = CFrame.new(-2104, 38, -10192)
    VectorQuest = Vector3.new(-2104, 38, -10192)
elseif MyLevel == 2100 or MyLevel <= 2124 then
    LevelFarm = 25

    Name = "Peanut President"
    QuestName = "NutsIslandQuest"

    LevelQuest = 2
    NameMon = "Peanut President"

    CFrameMon = CFrame.new(-2124, 123, -10435)
    VectorMon = Vector3.new(-2124, 123, -10435)

    CFrameQuest = CFrame.new(-2104, 38, -10192)
    VectorQuest = Vector3.new(-2104, 38, -10192)
elseif MyLevel == 2125 or MyLevel <= 2149 then
    LevelFarm = 26

    Name = "Ice Cream Chef"
    QuestName = "IceCreamIslandQuest"

    LevelQuest = 1
    NameMon = "Ice Cream Chef"

    CFrameMon = CFrame.new(-641, 127, -11062)
    VectorMon = Vector3.new(-641, 127, -11062)

    CFrameQuest = CFrame.new(-822, 66, -10965)
    VectorQuest = Vector3.new(-822, 66, -10965)
elseif MyLevel == 2150 or MyLevel <= 2199 then
    LevelFarm = 27

    Name = "Ice Cream Commander"
    QuestName = "IceCreamIslandQuest"

    LevelQuest = 2
    NameMon = "Ice Cream Commander"

    CFrameMon = CFrame.new(-641, 127, -11062)
    VectorMon = Vector3.new(-641, 127, -11062)

    CFrameQuest = CFrame.new(-822, 66, -10965)
    VectorQuest = Vector3.new(-822, 66, -10965)
    ---------------------------------------------------------------
elseif MyLevel == 2200 or MyLevel <= 2224 then
    LevelFarm = 29

    Name = "Cookie Crafter"
    QuestName = "CakeQuest1"

    LevelQuest = 1
    NameMon = "Cookie Crafter"

    CFrameMon = CFrame.new(-2365, 38, -12099)
    VectorMon = Vector3.new(-2365, 38, -12099)

    CFrameQuest = CFrame.new(-2020, 38, -12025)
    VectorQuest = Vector3.new(-2020, 38, -12025)
elseif MyLevel == 2225 or MyLevel <= 2249 then
    LevelFarm = 30

    Name = "Cake Guard"
    QuestName = "CakeQuest1"

    LevelQuest = 2
    NameMon = "Cake Guard"

    CFrameMon = CFrame.new(-1651, 38, -12308)
    VectorMon = Vector3.new(-1651, 38, -12308)

    CFrameQuest = CFrame.new(-2020, 38, -12025)
    VectorQuest = Vector3.new(-2020, 38, -12025)
elseif MyLevel == 2250 or MyLevel <= 2274 then
    LevelFarm = 31

    Name = "Baking Staff"
    QuestName = "CakeQuest2"

    LevelQuest = 1
    NameMon = "Baking Staff"

    CFrameMon = CFrame.new(-1870, 38, -12938)
    VectorMon = Vector3.new(-1870, 38, -12938)

    CFrameQuest = CFrame.new(-1926, 38, -12850)
    VectorQuest = Vector3.new(-1926, 38, -12850)
elseif MyLevel == 2275 or MyLevel <= 2299 then
    LevelFarm = 32

    Name = "Head Baker"
    QuestName = "CakeQuest2"

    LevelQuest = 2
    NameMon = "Head Baker"

    CFrameMon = CFrame.new(-1926, 88, -12850)
    VectorMon = CFrame.new(-1870, 38, -12938)

    CFrameQuest = CFrame.new(-1926, 38, -12850)
    VectorQuest = Vector3.new(-1926, 38, -12850)
    ---------------------------------------------------------------
elseif MyLevel == 2300 or MyLevel <= 2324 then
    LevelFarm = 34

    Name = "Cocoa Warrior"
    QuestName = "ChocQuest1"

    LevelQuest = 1
    NameMon = "Cocoa Warrior"

    CFrameMon = CFrame.new(231, 23, -12194)
    VectorMon = CFrame.new(231, 23, -12194)

    CFrameQuest = CFrame.new(231, 23, -12194)
    VectorQuest = Vector3.new(231, 23, -12194)
elseif MyLevel == 2325 or MyLevel <= 2349 then
    LevelFarm = 35

    Name = "Chocolate Bar Battler"
    QuestName = "ChocQuest1"

    LevelQuest = 2
    NameMon = "Chocolate Bar Battler"

    CFrameMon = CFrame.new(231, 23, -12194)
    VectorMon = CFrame.new(231, 23, -12194)

    CFrameQuest = CFrame.new(231, 23, -12194)
    VectorQuest = Vector3.new(231, 23, -12194)
elseif MyLevel == 2350 or MyLevel <= 2374 then
    LevelFarm = 36

    Name = "Sweet Thief"
    QuestName = "ChocQuest2"

    LevelQuest = 1
    NameMon = "Sweet Thief"

    CFrameMon = CFrame.new(71, 77, -12632)
    VectorMon = CFrame.new(71, 77, -12632)

    CFrameQuest = CFrame.new(151, 23, -12774)
    VectorQuest = Vector3.new(151, 23, -12774)
elseif MyLevel == 2375 or MyLevel <= 2399 then
    LevelFarm = 37

    Name = "Candy Rebel"
    QuestName = "ChocQuest2"

    LevelQuest = 2
    NameMon = "Candy Rebel"

    CFrameMon = CFrame.new(134, 77, -12882)
    VectorMon = CFrame.new(134, 77, -12882)

    CFrameQuest = CFrame.new(151, 23, -12774)
    VectorQuest = Vector3.new(151, 23, -12774)
elseif MyLevel == 2400 or MyLevel <= 2424 then
    LevelFarm = 39

    Name = "Candy Pirate"
    QuestName = "CandyQuest1"

    LevelQuest = 1
    NameMon = "Candy Pirates"

    CFrameMon = CFrame.new(-1358.691650390625, 162.7437286376953, -14389.7919921875)
    VectorMon = CFrame.new(-1358.691650390625, 162.7437286376953, -14389.7919921875)

    CFrameQuest = CFrame.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
        4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
    VectorQuest = Vector3.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
        4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
elseif MyLevel == 2425 or MyLevel <= 2449 then
    LevelFarm = 40

    Name = "Snow Demon"
    QuestName = "CandyQuest1"

    LevelQuest = 2
    NameMon = "Snow Demons"

    CFrameMon = CFrame.new(-940.4050903320312, 60.94138717651367, -14554.1630859375)
    VectorMon = CFrame.new(-940.4050903320312, 60.94138717651367, -14554.1630859375)

    CFrameQuest = CFrame.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
        4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
    VectorQuest = Vector3.new(-1146.59741, 14.1330338, -14445.6426, 0.142417297, 4.85419136e-08, 0.989806712,
        4.3708237e-08, 1, -5.53307267e-08, -0.989806712, 5.11427594e-08, 0.142417297)
    elseif MyLevel == 2450 or MyLevel <= 2474 then
        LevelFarm = 42

        Name = "Isle Outlaw"
        QuestName = "TikiQuest1"

        LevelQuest = 1
        NameMon = "Isle Outlaw"

        CFrameMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
        VectorMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)

        CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    elseif MyLevel == 2475 or MyLevel <= 2500 then
        LevelFarm = 43

        Name = "Island Boy"
        QuestName = "TikiQuest1"

        LevelQuest = 2
        NameMon = "Island Boy"

        CFrameMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
        VectorMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)

        CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
        VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    elseif MyLevel == 2500 or MyLevel <= 2524 then
        LevelFarm = 44

        Name = "Sun-kissed Warrior"
        QuestName = "TikiQuest2"

        LevelQuest = 1
        NameMon = "Warrior"

        CFrameMon = CFrame.new(-16273.3027, 49.6616859, 1049.43701, -0.906199515, -4.19694537e-08, 0.422850341, -3.66385891e-08, 1, 2.07344755e-08, -0.422850341, 3.29693228e-09, -0.906199515)
        VectorMon = CFrame.new(-16273.3027, 49.6616859, 1049.43701, -0.906199515, -4.19694537e-08, 0.422850341, -3.66385891e-08, 1, 2.07344755e-08, -0.422850341, 3.29693228e-09, -0.906199515)

        CFrameQuest = CFrame.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
        VectorQuest = Vector3.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
    elseif MyLevel == 2525 or MyLevel <= 2600 then
        LevelFarm = 45

        Name = "Isle Champion"
        QuestName = "TikiQuest2"

        LevelQuest = 2
        NameMon = "Isle Champion"

        CFrameMon = CFrame.new(-16780.4238, 82.1132126, 1033.55408, -0.962516546, 1.58372231e-08, 0.271222919, -1.30016424e-08, 1, -1.04532162e-07, -0.271222919, -1.04140284e-07, -0.962516546)
        VectorMon = CFrame.new(-16780.4238, 82.1132126, 1033.55408, -0.962516546, 1.58372231e-08, 0.271222919, -1.30016424e-08, 1, -1.04532162e-07, -0.271222919, -1.04140284e-07, -0.962516546)

        CFrameQuest = CFrame.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
        VectorQuest = Vector3.new(-16539.1426, 55.6605415, 1050.85059, -0.152818754, 1.09818366e-07, 0.988254249, 3.35132171e-08, 1, -1.05941282e-07, -0.988254249, 1.6929766e-08, -0.152818754)
end
end
end

function CheckOldQuest(LevelFarm)
if World1 then
if LevelFarm == 1 then -- Bandit
    Name = "Bandit"
    QuestName = "BanditQuest1"

    LevelQuest = 1
    NameMon = "Bandit"

    CFrameMon = CFrame.new(1145, 17, 1634)
    VectorMon = Vector3.new(1145, 17, 1634)

    CFrameQuest = CFrame.new(1060, 17, 1547)
    VectorQuest = Vector3.new(1060, 17, 1547)
elseif LevelFarm == 3 then -- Monkey
    Name = "Monkey"
    QuestName = "JungleQuest"

    LevelQuest = 1
    NameMon = "Monkey"

    CFrameMon = CFrame.new(-1496, 39, 35)
    VectorMon = Vector3.new(-1496, 39, 35)

    CFrameQuest = CFrame.new(-1602, 37, 152)
    VectorQuest = Vector3.new(-1602, 37, 152)
elseif LevelFarm == 4 then -- Gorilla
    Name = "Gorilla"
    QuestName = "JungleQuest"

    LevelQuest = 2
    NameMon = "Gorilla"

    CFrameMon = CFrame.new(-1237, 6, -486)
    VectorMon = Vector3.new(-1237, 7, -486)

    CFrameQuest = CFrame.new(-1602, 37, 152)
    VectorQuest = Vector3.new(-1602, 37, 152)
elseif LevelFarm == 6 then -- Pirate
    Name = "Pirate"
    QuestName = "BuggyQuest1"

    LevelQuest = 1
    NameMon = "Pirate"

    CFrameMon = CFrame.new(-1115, 14, 3938)
    VectorMon = Vector3.new(-1115, 14, 3938)

    CFrameQuest = CFrame.new(-1140, 5, 3828)
    VectorQuest = Vetor3.new(-1140, 5, 3828)
elseif LevelFarm == 9 then -- Desert Bandit
    Name = "Desert Bandit"
    QuestName = "DesertQuest"

    LevelQuest = 1
    NameMon = "Desert Bandit"

    CFrameMon = CFrame.new(932, 7, 4484)
    VectorMon = Vector3.new(932, 7, 4484)

    CFrameQuest = CFrame.new(897, 7, 4388)
    VectorQuest = Vector3.new(897, 7, 4388)
elseif LevelFarm == 10 then -- Desert Officre
    Name = "Desert Officer"
    QuestName = "DesertQuest"

    LevelQuest = 2
    NameMon = "Desert Officer"

    CFrameMon = CFrame.new(1572, 10, 4373)
    VectorMon = Vector3.new(1572, 10, 4373)

    CFrameQuest = CFrame.new(897, 7, 4388)
    VectorQuest = Vector3.new(897, 7, 4388)
elseif LevelFarm == 12 then -- Snow Bandits
    Name = "Snow Bandit"
    QuestName = "SnowQuest"

    LevelQuest = 1
    NameMon = "Snow Bandits"

    CFrameMon = CFrame.new(1289, 150, -1442)
    VectorMon = Vector3.new(1289, 106, -1442)

    CFrameQuest = CFrame.new(1386, 87, -1297)
    VectorQuest = Vector3.new(1386, 87, -1297)
elseif LevelFarm == 13 then -- Snowman
    Name = "Snowman"
    QuestName = "SnowQuest"

    LevelQuest = 2
    NameMon = "Snowman"

    CFrameMon = CFrame.new(1289, 150, -1442)
    VectorMon = Vector3.new(1289, 106, -1442)

    CFrameQuest = CFrame.new(1386, 87, -1297)
    VectorQuest = Vector3.new(1386, 87, -1297)
elseif LevelFarm == 15 then -- Chief Petty Officer
    Name = "Chief Petty Officer"
    QuestName = "MarineQuest2"

    LevelQuest = 1
    NameMon = "Chief Petty Officer"

    CFrameMon = CFrame.new(-4855, 23, 4308)
    VectorMon = Vector3.new(-4855, 23, 4308)

    CFrameQuest = CFrame.new(-5036, 29, 4325)
    VectorQuest = Vector3.new(-5036, 29, 4325)
elseif LevelFarm == 17 then -- Sky Bandit
    Name = "Sky Bandit"
    QuestName = "SkyQuest"

    LevelQuest = 1
    NameMon = "Sky Bandit"

    CFrameMon = CFrame.new(-4981, 278, -2830)
    VectorMon = Vector3.new(-4981, 278, -2830)

    CFrameQuest = CFrame.new(-4842, 718, -2623)
    VectorQuest = Vector3.new(-4842, 718, -2623)
elseif LevelFarm == 18 then -- Dark Master
    Name = "Dark Master"
    QuestName = "SkyQuest"

    LevelQuest = 2
    NameMon = "Dark Master"

    CFrameMon = CFrame.new(-5250, 389, -2272)
    VectorMon = Vector3.new(-5250, 389, -2272)

    CFrameQuest = CFrame.new(-4842, 718, -2623)
    VectorQuest = Vector3.new(-4842, 718, -2623)
elseif LevelFarm == 20 then -- Dark Master
    Name = "Prisoner"
    QuestName = "PrisonerQuest"

    LevelQuest = 1
    NameMon = "Prisoner"

    CFrameMon = CFrame.new(5411, 96, 690)
    VectorMon = Vector3.new(5411, 96, 690)

    CFrameQuest = CFrame.new(5308, 2, 474)
    VectorQuest = Vector3.new(5308, 2, 474)
elseif LevelFarm == 21 then -- Dark Master
    Name = "Dangerous Prisoner"
    QuestName = "PrisonerQuest"

    LevelQuest = 2
    NameMon = "Dangerous Prisoner"

    CFrameMon = CFrame.new(5411, 96, 690)
    VectorMon = Vector3.new(5411, 96, 690)

    CFrameQuest = CFrame.new(5308, 2, 474)
    VectorQuest = Vector3.new(5308, 2, 474)
elseif LevelFarm == 23 then -- Toga Warrior
    Name = "Toga Warrior"
    QuestName = "ColosseumQuest"

    LevelQuest = 1
    NameMon = "Toga Warrior"

    CFrameMon = CFrame.new(-1770, 8, -2777)
    VectorMon = Vector3.new(-1770, 8, -2777)

    CFrameQuest = CFrame.new(-1576, 8, -2985)
    VectorQuest = Vector3.new(-1576, 8, -2985)
elseif LevelFarm == 25 then -- Military Soldier
    Name = "Military Soldier"
    QuestName = "MagmaQuest"

    LevelQuest = 1
    NameMon = "Military Soldier"

    CFrameMon = CFrame.new(-5555.064453125, 16.73392105102539, 8377.623046875)
    VectorMon = Vector3.new(-5555.064453125, 16.73392105102539, 8377.623046875)

    CFrameQuest = CFrame.new(-5316, 12, 8517)
    VectorQuest = Vector3.new(-5316, 12, 8517)
elseif LevelFarm == 26 then -- Military Spy
    Name = "Military Spy"
    QuestName = "MagmaQuest"

    LevelQuest = 2
    NameMon = "Military Spy"

    CFrameMon = CFrame.new(-5806.056640625, 99.96672058105469, 8777.8447265625)
    VectorMon = Vector3.new(-5806.056640625, 99.96672058105469, 8777.8447265625)

    CFrameQuest = CFrame.new(-5316, 12, 8517)
    VectorQuest = Vector3.new(-5316, 12, 8517)
elseif LevelFarm == 28 then -- Fishman Warrior
    Name = "Fishman Warrior"
    QuestName = "FishmanQuest"

    LevelQuest = 1
    NameMon = "Fishman Warrior"

    CFrameMon = CFrame.new(60859, 19, 1501)
    VectorMon = Vector3.new(60859, 19, 1501)

    CFrameQuest = CFrame.new(61123, 19, 1569)
    VectorQuest = Vector3.new(61123, 19, 1569)
elseif LevelFarm == 29 then -- Fishman Commando
    Name = "Fishman Commando"
    QuestName = "FishmanQuest"

    LevelQuest = 2
    NameMon = "Fishman Commando"

    CFrameMon = CFrame.new(61891, 19, 1470)
    VectorMon = Vector3.new(61891, 19, 1470)

    CFrameQuest = CFrame.new(61123, 19, 1569)
    VectorQuest = Vector3.new(61123, 19, 1569)
elseif LevelFarm == 31 then -- God's Guards
    Name = "God's Guard"
    QuestName = "SkyExp1Quest"

    LevelQuest = 1
    NameMon = "God's Guards"

    CFrameMon = CFrame.new(-4698, 845, -1912)
    VectorMon = Vector3.new(-4698, 845, -1912)

    CFrameQuest = CFrame.new(-4722, 845, -1954)
    VectorQuest = Vector3.new(-4722, 846, -1954)
elseif LevelFarm == 33 then -- Shandas
    Name = "Shanda"
    QuestName = "SkyExp1Quest"

    LevelQuest = 2
    NameMon = "Shandas"

    CFrameMon = CFrame.new(-7685, 5567, -502)
    VectorMon = Vector3.new(-7685, 5567, -502)

    CFrameQuest = CFrame.new(-7862, 5546, -380)
    VectorQuest = Vector3.new(-7862, 5546, -380)
elseif LevelFarm == 34 then -- Royal Squad
    Name = "Royal Squad"
    QuestName = "SkyExp2Quest"

    LevelQuest = 1
    NameMon = "Royal Squad"

    CFrameMon = CFrame.new(-7670, 5607, -1460)
    VectorMon = Vector3.new(-7670, 5607, -1460)

    CFrameQuest = CFrame.new(-7904, 5636, -1412)
    VectorQuest = Vector3.new(-7904, 5636, -1412)
elseif LevelFarm == 35 then -- Royal Soldier
    Name = "Royal Soldier"
    QuestName = "SkyExp2Quest"

    LevelQuest = 2
    NameMon = "Royal Soldier"

    CFrameMon = CFrame.new(-7828, 5607, -1744)
    VectorMon = Vector3.new(-7828, 5607, -1744)

    CFrameQuest = CFrame.new(-7904, 5636, -1412)
    VectorQuest = Vector3.new(-7904, 5636, -1412)
elseif LevelFarm == 37 then -- Galley Pirate
    Name = "Galley Pirate"
    QuestName = "FountainQuest"

    LevelQuest = 1
    NameMon = "Galley Pirate"

    CFrameMon = CFrame.new(5589, 45, 3996)
    VectorMon = Vector3.new(5589, 45, 3996)

    CFrameQuest = CFrame.new(5256, 39, 4050)
    VectorQuest = Vector3.new(5256, 39, 4050)
elseif LevelFarm == 38 then -- Galley Captain
    Name = "Galley Captain"
    QuestName = "FountainQuest"

    LevelQuest = 2
    NameMon = "Galley Captain"

    CFrameMon = CFrame.new(5649, 39, 4936)
    VectorMon = Vector3.new(5649, 39, 4936)

    CFrameQuest = CFrame.new(5256, 39, 4050)
    VectorQuest = Vector3.new(5256, 39, 4050)
end
end
if World2 then
if LevelFarm == 1 then -- Raider [Lv. 700]
    Name = "Raider"
    QuestName = "Area1Quest"

    LevelQuest = 1
    NameMon = "Raider"

    CFrameQuest = CFrame.new(-425, 73, 1837)
    VectorQuest = Vector3.new(-425, 73, 1837)

    CFrameMon = CFrame.new(-746, 39, 2390)
    VectorMon = Vector3.new(-746, 39, 2389)
elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
    Name = "Mercenary"
    QuestName = "Area1Quest"

    LevelQuest = 2
    NameMon = "Mercenary"

    CFrameQuest = CFrame.new(-425, 73, 1837)
    VectorQuest = Vector3.new(-425, 73, 1837)

    CFrameMon = CFrame.new(-874, 141, 1312)
    VectorMon = Vector3.new(-874, 141, 1312)
elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
    Name = "Swan Pirate"
    QuestName = "Area2Quest"

    LevelQuest = 1
    NameMon = "Swan Pirate"

    CFrameQuest = CFrame.new(634, 73, 918)
    VectorQuest = Vector3.new(634, 73, 918)

    CFrameMon = CFrame.new(878, 122, 1235)
    VectorMon = Vector3.new(878, 122, 1235)
elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
    Name = "Factory Staff"
    QuestName = "Area2Quest"

    LevelQuest = 2
    NameMon = "Factory Staff"

    CFrameQuest = CFrame.new(634, 73, 918)
    VectorQuest = Vector3.new(634, 73, 918)

    CFrameMon = CFrame.new(295, 73, -56)
    VectorMon = Vector3.new(295, 73, -56)
elseif LevelFarm == 6 then -- Marine Lieutenant [Lv. 875]
    Name = "Marine Lieutenant"
    QuestName = "MarineQuest3"

    LevelQuest = 1
    NameMon = "Marine Lieutenant"

    CFrameMon = CFrame.new(-2806, 73, -3038)
    VectorMon = Vector3.new(-2806, 73, -3038)

    CFrameQuest = CFrame.new(-2443, 73, -3219)
    VectorQuest = Vector3.new(-2443, 73, -3219)
elseif LevelFarm == 7 then -- Marine Captain [Lv. 900]
    Name = "Marine Captain"
    QuestName = "MarineQuest3"

    LevelQuest = 2
    NameMon = "Marine Captain"

    CFrameMon = CFrame.new(-1869, 73, -3320)
    VectorMon = Vector3.new(-1869, 73, -3320)

    CFrameQuest = CFrame.new(-2443, 73, -3219)
    VectorQuest = Vector3.new(-2443, 73, -3219)
elseif LevelFarm == 9 then -- Zombie [Lv. 950]
    Name = "Zombie"
    QuestName = "ZombieQuest"

    LevelQuest = 1
    NameMon = "Zombie"

    CFrameMon = CFrame.new(-5736, 126, -728)
    VectorMon = Vector3.new(-5736, 126, -728)

    CFrameQuest = CFrame.new(-5494, 49, -795)
    VectorQuest = Vector3.new(-5494, 49, -794)
elseif LevelFarm == 10 then -- Vampire [Lv. 975]
    Name = "Vampire"
    QuestName = "ZombieQuest"

    LevelQuest = 2
    NameMon = "Vampire"

    CFrameMon = CFrame.new(-6033, 7, -1317)
    VectorMon = Vector3.new(-6033, 7, -1317)

    CFrameQuest = CFrame.new(-5494, 49, -795)
    VectorQuest = Vector3.new(-5494, 49, -795)
elseif LevelFarm == 12 then -- Snow Trooper [Lv. 1000] **
    Name = "Snow Trooper"
    QuestName = "SnowMountainQuest"

    LevelQuest = 1
    NameMon = "Snow Trooper"

    CFrameMon = CFrame.new(478, 402, -5362)
    VectorMon = Vector3.new(478, 402, -5362)

    CFrameQuest = CFrame.new(605, 402, -5371)
    VectorQuest = Vector3.new(605, 402, -5371)
elseif LevelFarm == 13 then -- Winter Warrior [Lv. 1050]
    Name = "Winter Warrior"
    QuestName = "SnowMountainQuest"

    LevelQuest = 2
    NameMon = "Winter Warrior"

    CFrameMon = CFrame.new(1157, 430, -5188)
    VectorMon = Vector3.new(1157, 430, -5188)

    CFrameQuest = CFrame.new(605, 402, -5371)
    VectorQuest = Vector3.new(605, 402, -5371)
elseif LevelFarm == 16 then -- Lab Subordinate [Lv. 1100]
    Name = "Lab Subordinate"
    QuestName = "IceSideQuest"

    LevelQuest = 1
    NameMon = "Lab Subordinate"

    CFrameMon = CFrame.new(-5782, 42, -4484)
    VectorMon = Vector3.new(-5782, 42, -4484)

    CFrameQuest = CFrame.new(-6060, 16, -4905)
    VectorQuest = Vector3.new(-6060, 16, -4905)
elseif LevelFarm == 17 then -- Horned Warrior [Lv. 1125]
    Name = "Horned Warrior"
    QuestName = "IceSideQuest"

    LevelQuest = 2
    NameMon = "Horned Warrior"

    CFrameMon = CFrame.new(-6406, 24, -5805)
    VectorMon = Vector3.new(-6406, 24, -5805)

    CFrameQuest = CFrame.new(-6060, 16, -4905)
    VectorQuest = Vector3.new(-6060, 16, -4905)
elseif LevelFarm == 18 then -- Magma Ninja [Lv. 1175]
    Name = "Magma Ninja"
    QuestName = "FireSideQuest"
    LevelQuest = 1
    NameMon = "Magma Ninja"

    CFrameMon = CFrame.new(-5428, 78, -5959)
    VectorMon = Vector3.new(-5428, 78, -5959)

    CFrameQuest = CFrame.new(-5430, 16, -5295)
    VectorQuest = Vector3.new(-5430, 16, -5296)
elseif LevelFarm == 19 then -- Lava Pirate [Lv. 1200]
    Name = "Lava Pirate"
    QuestName = "FireSideQuest"

    LevelQuest = 2
    NameMon = "Lava Pirate"

    CFrameMon = CFrame.new(-5270, 42, -4800)
    VectorMon = Vector3.new(-5270, 42, -4800)

    CFrameQuest = CFrame.new(-5430, 16, -5295)
    VectorQuest = Vector3.new(-5430, 16, -5296)
elseif LevelFarm == 21 then -- Ship Deckhand [Lv. 1250]
    Name = "Ship Deckhand"
    QuestName = "ShipQuest1"

    LevelQuest = 1
    NameMon = "Ship Deckhand"

    CFrameMon = CFrame.new(1198, 126, 33031)
    VectorMon = Vector3.new(1198, 126, 33031)

    CFrameQuest = CFrame.new(1038, 125, 32913)
    VectorQuest = Vector3.new(1038, 125, 32913)
elseif LevelFarm == 22 then -- Ship Engineer [Lv. 1275]
    Name = "Ship Engineer"
    QuestName = "ShipQuest1"

    LevelQuest = 2
    NameMon = "Ship Engineer"

    CFrameMon = CFrame.new(918, 44, 32787)
    VectorMon = Vector3.new(918, 44, 32787)

    CFrameQuest = CFrame.new(1038, 125, 32913)
    VectorQuest = Vector3.new(1038, 125, 32913)
elseif LevelFarm == 23 then -- Ship Steward [Lv. 1300]
    Name = "Ship Steward"
    QuestName = "ShipQuest2"

    LevelQuest = 1
    NameMon = "Ship Steward"

    CFrameMon = CFrame.new(915, 130, 33419)
    VectorMon = Vector3.new(915, 130, 33419)

    CFrameQuest = CFrame.new(969, 125, 33245)
    VectorQuest = Vector3.new(969, 125, 33245)
elseif LevelFarm == 24 then -- Ship Officer [Lv. 1325]
    Name = "Ship Officer"
    QuestName = "ShipQuest2"

    LevelQuest = 2
    NameMon = "Ship Officer"

    CFrameMon = CFrame.new(916, 181, 33335)
    VectorMon = Vector3.new(916, 181, 33335)

    CFrameQuest = CFrame.new(969, 125, 33245)
    VectorQuest = Vector3.new(969, 125, 33245)
elseif LevelFarm == 26 then -- Arctic Warrior [Lv. 1350]
    Name = "Arctic Warrior"
    QuestName = "FrostQuest"

    LevelQuest = 1
    NameMon = "Arctic Warrior"

    CFrameMon = CFrame.new(6038, 29, -6231)
    VectorMon = Vector3.new(6038, 29, -6231)

    VectorQuest = Vector3.new(5669, 28, -6482)
    CFrameQuest = CFrame.new(5669, 28, -6482)
elseif LevelFarm == 27 then -- Snow Lurker [Lv. 1375]
    Name = "Snow Lurker"
    QuestName = "FrostQuest"

    LevelQuest = 2
    NameMon = "Snow Lurker"

    CFrameMon = CFrame.new(5560, 42, -6826)
    VectorMon = Vector3.new(5560, 42, -6826)

    VectorQuest = Vector3.new(5669, 28, -6482)
    CFrameQuest = CFrame.new(5669, 28, -6482)
elseif LevelFarm == 29 then -- Sea Soldier [Lv. 1425]
    Name = "Sea Soldier"
    QuestName = "ForgottenQuest"

    LevelQuest = 1
    NameMon = "Sea Soldier"

    CFrameMon = CFrame.new(-3022, 16, -9722)
    VectorMon = Vector3.new(-3022, 16, -9722)

    CFrameQuest = CFrame.new(-3054, 237, -10148)
    VectorQuest = Vector3.new(-3054, 237, -10148)
elseif LevelFarm == 30 then -- Water Fighter [Lv. 1450]
    Name = "Water Fighter"
    QuestName = "ForgottenQuest"

    LevelQuest = 2
    NameMon = "Water Fighter"

    CFrameMon = CFrame.new(-3385, 239, -10542)
    VectorMon = Vector3.new(-3385, 239, -10542)

    CFrameQuest = CFrame.new(-3054, 237, -10148)
    VectorQuest = Vector3.new(-3054, 237, -10148)
end
end
if World3 then
if LevelFarm == 1 then
    Name = "Pirate Millionaire"
    QuestName = "PiratePortQuest"

    LevelQuest = 1
    NameMon = "Pirate"

    CFrameMon = CFrame.new(-373, 75, 5550)
    VectorMon = Vector3.new(-373, 75, 5550)

    CFrameQuest = CFrame.new(-288, 44, 5576)
    VectorQuest = Vector3.new(-288, 44, 5576)
elseif LevelFarm == 2 then
    Name = "Pistol Billionaire"
    QuestName = "PiratePortQuest"

    LevelQuest = 2
    NameMon = "Pistol"

    CFrameMon = CFrame.new(-469, 74, 5904)
    VectorMon = Vector3.new(-469, 74, 5904)

    CFrameQuest = CFrame.new(-288, 44, 5576)
    VectorQuest = Vector3.new(-288, 44, 5576)
elseif LevelFarm == 4 then
    Name = "Dragon Crew Warrior"
    QuestName = "AmazonQuest"

    LevelQuest = 1
    NameMon = "Warrior"

    CFrameMon = CFrame.new(6339, 52, -1213)
    VectorMon = Vector3.new(6338, 52, -1213)

    CFrameQuest = CFrame.new(5835, 52, -1105)
    VectorQuest = Vector3.new(5835, 52, -1105)
elseif LevelFarm == 5 then
    Name = "Dragon Crew Archer"
    QuestName = "AmazonQuest"

    LevelQuest = 2
    NameMon = "Archer"

    CFrameMon = CFrame.new(6594, 383, 139)
    VectorMon = Vector3.new(6594, 383, 139)

    CFrameQuest = CFrame.new(5835, 52, -1105)
    VectorQuest = Vector3.new(5835, 52, -1105)
elseif LevelFarm == 6 then
    Name = "Female Islander"
    QuestName = "AmazonQuest2"

    LevelQuest = 1
    NameMon = "Female"

    CFrameMon = CFrame.new(5308, 819, 1047)
    VectorMon = Vector3.new(5308, 819, 1047)

    CFrameQuest = CFrame.new(5443, 602, 751)
    VectorQuest = Vector3.new(5443, 602, 751)
elseif LevelFarm == 7 then
    Name = "Giant Islander"
    QuestName = "AmazonQuest2"

    LevelQuest = 2
    NameMon = "Giant Islanders"

    CFrameMon = CFrame.new(4951, 602, -68)
    VectorMon = Vector3.new(4951, 602, -68)

    CFrameQuest = CFrame.new(5443, 602, 751)
    VectorQuest = Vector3.new(5443, 602, 751)
elseif LevelFarm == 9 then
    Name = "Marine Commodore"
    QuestName = "MarineTreeIsland"

    LevelQuest = 1
    NameMon = "Marine Commodore"

    CFrameMon = CFrame.new(2447, 73, -7470)
    VectorMon = Vector3.new(2447, 73, -7470)

    CFrameQuest = CFrame.new(2180, 29, -6737)
    VectorQuest = Vector3.new(2180, 29, -6737)
elseif LevelFarm == 10 then
    Name = "Marine Rear Admiral"
    QuestName = "MarineTreeIsland"

    LevelQuest = 2
    NameMon = "Marine Rear Admiral"

    CFrameMon = CFrame.new(3671, 161, -6932)
    VectorMon = Vector3.new(3671, 161, -6932)

    CFrameQuest = CFrame.new(2180, 29, -6737)
    VectorQuest = Vector3.new(2180, 29, -6737)
elseif LevelFarm == 12 then
    Name = "Fishman Raider"
    QuestName = "DeepForestIsland3"

    LevelQuest = 1
    NameMon = "Fishman Raider"

    CFrameMon = CFrame.new(-10560, 332, -8466)
    VectorMon = Vector3.new(-10560, 332, -8466)

    CFrameQuest = CFrame.new(-10584, 332, -8758)
    VectorQuest = Vector3.new(-10584, 332, -8758)
elseif LevelFarm == 13 then
    Name = "Fishman Captain"
    QuestName = "DeepForestIsland3"

    LevelQuest = 2
    NameMon = "Fishman Captain"

    CFrameMon = CFrame.new(-10993, 332, -8940)
    VectorMon = Vector3.new(-10993, 332, -8940)

    CFrameQuest = CFrame.new(-10584, 332, -8758)
    VectorQuest = Vector3.new(-10584, 332, -8758)
elseif LevelFarm == 14 then
    Name = "Forest Pirate"
    QuestName = "DeepForestIsland"

    LevelQuest = 1
    NameMon = "Forest Pirate"

    CFrameMon = CFrame.new(-13479, 333, -7905)
    VectorMon = Vector3.new(-13479, 333, -7905)

    CFrameQuest = CFrame.new(-13232, 333, -7627)
    VectorQuest = Vector3.new(-13232, 333, -7627)
elseif LevelFarm == 15 then
    Name = "Mythological Pirate"
    QuestName = "DeepForestIsland"

    LevelQuest = 2
    NameMon = "Mythological Pirate"

    CFrameMon = CFrame.new(-13545, 470, -6917)
    VectorMon = Vector3.new(-13545, 470, -6917)

    CFrameQuest = CFrame.new(-13232, 333, -7627)
    VectorQuest = Vector3.new(-13232, 333, -7627)
elseif LevelFarm == 16 then
    Name = "Jungle Pirate"
    QuestName = "DeepForestIsland2"

    LevelQuest = 1
    NameMon = "Jungle Pirate"

    CFrameMon = CFrame.new(-12107, 332, -10549)
    VectorMon = Vector3.new(-12106, 332, -10549)

    CFrameQuest = CFrame.new(-12684, 391, -9902)
    VectorQuest = Vector3.new(-12684, 391, -9902)
elseif LevelFarm == 17 then
    Name = "Musketeer Pirate"
    QuestName = "DeepForestIsland2"

    LevelQuest = 2
    NameMon = "Musketeer Pirate"

    CFrameMon = CFrame.new(-13286, 392, -9769)
    VectorMon = Vector3.new(-13286, 392, -9768)

    CFrameQuest = CFrame.new(-12684, 391, -9902)
    VectorQuest = Vector3.new(-12684, 391, -9902)
elseif LevelFarm == 19 then
    Name = "Reborn Skeleton"
    QuestName = "HauntedQuest1"

    LevelQuest = 1
    NameMon = "Reborn Skeleton"

    CFrameMon = CFrame.new(-8760, 142, 6039)
    VectorMon = Vector3.new(-8760, 142, 6039)

    CFrameQuest = CFrame.new(-9482, 142, 5567)
    VectorQuest = Vector3.new(-9482, 142, 5567)
elseif LevelFarm == 20 then
    Name = "Living Zombie"
    QuestName = "HauntedQuest1"

    LevelQuest = 2
    NameMon = "Living Zombie"

    CFrameMon = CFrame.new(-10144, 140, 5932)
    VectorMon = Vector3.new(-10144, 140, 5932)

    CFrameQuest = CFrame.new(-9482, 142, 5567)
    VectorQuest = Vector3.new(-9482, 142, 5567)
elseif LevelFarm == 21 then
    Name = "Demonic Soul"
    QuestName = "HauntedQuest2"

    LevelQuest = 1
    NameMon = "Demonic Soul"

    CFrameMon = CFrame.new(-9507, 172, 6158)
    VectorMon = Vector3.new(-9506, 172, 6158)

    CFrameQuest = CFrame.new(-9513, 172, 6079)
    VectorQuest = Vector3.new(-9513, 172, 6079)
elseif LevelFarm == 22 then
    Name = "Posessed Mummy"
    QuestName = "HauntedQuest2"

    LevelQuest = 2
    NameMon = "Posessed Mummy"

    CFrameMon = CFrame.new(-9577, 6, 6223)
    VectorMon = Vector3.new(-9577, 6, 6223)

    CFrameQuest = CFrame.new(-9513, 172, 6079)
    VectorQuest = Vector3.new(-9513, 172, 6079)
elseif LevelFarm == 24 then
    Name = "Peanut Scout"
    QuestName = "NutsIslandQuest"

    LevelQuest = 1
    NameMon = "Peanut Scout"

    CFrameMon = CFrame.new(-2124, 123, -10435)
    VectorMon = Vector3.new(-2124, 123, -10435)

    CFrameQuest = CFrame.new(-2104, 38, -10192)
    VectorQuest = Vector3.new(-2104, 38, -10192)
elseif LevelFarm == 25 then
    Name = "Peanut President"
    QuestName = "NutsIslandQuest"

    LevelQuest = 2
    NameMon = "Peanut President"

    CFrameMon = CFrame.new(-2124, 123, -10435)
    VectorMon = Vector3.new(-2124, 123, -10435)

    CFrameQuest = CFrame.new(-2104, 38, -10192)
    VectorQuest = Vector3.new(-2104, 38, -10192)
elseif LevelFarm == 26 then
    Name = "Ice Cream Chef"
    QuestName = "IceCreamIslandQuest"

    LevelQuest = 1
    NameMon = "Ice Cream Chef"

    CFrameMon = CFrame.new(-641, 127, -11062)
    VectorMon = Vector3.new(-641, 127, -11062)

    CFrameQuest = CFrame.new(-822, 66, -10965)
    VectorQuest = Vector3.new(-822, 66, -10965)
elseif LevelFarm == 27 then
    Name = "Ice Cream Commander"
    QuestName = "IceCreamIslandQuest"

    LevelQuest = 2
    NameMon = "Ice Cream Commander"

    CFrameMon = CFrame.new(-641, 127, -11062)
    VectorMon = Vector3.new(-641, 127, -11062)

    CFrameQuest = CFrame.new(-822, 66, -10965)
    VectorQuest = Vector3.new(-822, 66, -10965)
    ---------------------------------------------------------------
elseif LevelFarm == 29 then
    Name = "Cookie Crafter"
    QuestName = "CakeQuest1"

    LevelQuest = 1
    NameMon = "Cookie Crafter"

    CFrameMon = CFrame.new(-2365, 38, -12099)
    VectorMon = Vector3.new(-2365, 38, -12099)

    CFrameQuest = CFrame.new(-2020, 38, -12025)
    VectorQuest = Vector3.new(-2020, 38, -12025)
elseif LevelFarm == 30 then
    Name = "Cake Guard"
    QuestName = "CakeQuest1"

    LevelQuest = 2
    NameMon = "Cake Guard"

    CFrameMon = CFrame.new(-1651, 38, -12308)
    VectorMon = Vector3.new(-1651, 38, -12308)

    CFrameQuest = CFrame.new(-2020, 38, -12025)
    VectorQuest = Vector3.new(-2020, 38, -12025)
elseif LevelFarm == 31 then
    Name = "Baking Staff"
    QuestName = "CakeQuest2"

    LevelQuest = 1
    NameMon = "Baking Staff"

    CFrameMon = CFrame.new(-1870, 38, -12938)
    VectorMon = Vector3.new(-1870, 38, -12938)

    CFrameQuest = CFrame.new(-1926, 38, -12850)
    VectorQuest = Vector3.new(-1926, 38, -12850)
elseif LevelFarm == 32 then
    Name = "Head Baker"
    QuestName = "CakeQuest2"

    LevelQuest = 2
    NameMon = "Head Baker"

    CFrameMon = CFrame.new(-1926, 88, -12850)
    VectorMon = CFrame.new(-1870, 38, -12938)

    CFrameQuest = CFrame.new(-1926, 38, -12850)
    VectorQuest = Vector3.new(-1926, 38, -12850)
    ---------------------------------------------------------------
elseif LevelFarm == 34 then
    Name = "Cocoa Warrior"
    QuestName = "ChocQuest1"

    LevelQuest = 1
    NameMon = "Cocoa Warrior"

    CFrameMon = CFrame.new(231, 23, -12194)
    VectorMon = CFrame.new(231, 23, -12194)

    CFrameQuest = CFrame.new(231, 23, -12194)
    VectorQuest = Vector3.new(231, 23, -12194)
elseif LevelFarm == 35 then
    Name = "Chocolate Bar Battler"
    QuestName = "ChocQuest1"

    LevelQuest = 2
    NameMon = "Chocolate Bar Battler"

    CFrameMon = CFrame.new(231, 23, -12194)
    VectorMon = CFrame.new(231, 23, -12194)

    CFrameQuest = CFrame.new(231, 23, -12194)
    VectorQuest = Vector3.new(231, 23, -12194)
elseif LevelFarm == 36 then
    Name = "Sweet Thief"
    QuestName = "ChocQuest2"

    LevelQuest = 1
    NameMon = "Sweet Thief"

    CFrameMon = CFrame.new(71, 77, -12632)
    VectorMon = CFrame.new(71, 77, -12632)

    CFrameQuest = CFrame.new(151, 23, -12774)
    VectorQuest = Vector3.new(151, 23, -12774)
elseif LevelFarm == 37 then
    Name = "Candy Rebel"
    QuestName = "ChocQuest2"

    LevelQuest = 2
    NameMon = "Candy Rebel"

    CFrameMon = CFrame.new(134, 77, -12882)
    VectorMon = CFrame.new(134, 77, -12882)

    CFrameQuest = CFrame.new(151, 23, -12774)
    VectorQuest = Vector3.new(151, 23, -12774)
elseif LevelFarm == 39 then
    Name = "Candy Pirate"
    QuestName = "CandyQuest1"

    LevelQuest = 1
    NameMon = "Candy Pirates"

    CFrameMon = CFrame.new(-1396.145751953125, 111.61504364013672, -14338.55078125)
    VectorMon = CFrame.new(-1396.145751953125, 111.61504364013672, -14338.55078125)

    CFrameQuest = CFrame.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
    VectorQuest = Vector3.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
elseif LevelFarm == 40 then
    Name = "Snow Demon"
    QuestName = "CandyQuest1"

    LevelQuest = 2
    NameMon = "Snow Demons"

    CFrameMon = CFrame.new(-827.6851196289062, 88.83011627197266, -14275.3115234375)
    VectorMon = CFrame.new(-827.6851196289062, 88.83011627197266, -14275.3115234375)

    CFrameQuest = CFrame.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)
    VectorQuest = Vector3.new(-1147.5802001953125, 14.133035659790039, -14445.3037109375)

elseif LevelFarm == 42 then

    Name = "Isle Outlaw"
    QuestName = "TikiQuest1"

    LevelQuest = 1
    NameMon = "Isle Outlaw"

    CFrameMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)
    VectorMon = CFrame.new(-16299.3252, 94.0675659, -172.353226, 0.99993372, 1.59262612e-08, -0.0115144337, -1.50289505e-08, 1, 7.80157237e-08, 0.0115144337, -7.78375053e-08, 0.99993372)

    CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)

elseif LevelFarm == 43 then

    Name = "Island Boy"
    QuestName = "TikiQuest1"

    LevelQuest = 2
    NameMon = "Island Boy"

    CFrameMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)
    VectorMon = CFrame.new(-16853.3887, 192.103561, -152.378189, 0.705479085, -8.49727329e-08, 0.708730757, 5.86954414e-08, 1, 6.14680928e-08, -0.708730757, -1.76518711e-09, 0.705479085)

    CFrameQuest = CFrame.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
    VectorQuest = Vector3.new(-16548.8516, 54.0840454, -173.242691, 0.213092566, -0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)

elseif LevelFarm == 44 then

    Name = "Sun-kissed Warrior"
    QuestName = "TikiQuest2"

    LevelQuest = 1
    NameMon = "Warrior"

    CFrameMon = CFrame.new(-16202.3496, 75.2711868, 1096.79834, -0.996208549, 7.38022621e-08, -0.08699698, 7.80033815e-08, 1, -4.48908821e-08, 0.08699698, -5.1506742e-08, -0.996208549)
    VectorMon = CFrame.new(-16202.3496, 75.2711868, 1096.79834, -0.996208549, 7.38022621e-08, -0.08699698, 7.80033815e-08, 1, -4.48908821e-08, 0.08699698, -5.1506742e-08, -0.996208549)

    CFrameQuest = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
    VectorQuest = Vector3.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)

elseif LevelFarm == 45 then

    Name = "Isle Champion"
    QuestName = "TikiQuest2"

    LevelQuest = 2
    NameMon = "Isle Champion"

    CFrameMon = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)
    VectorMon = CFrame.new(-16780.2383, 82.1389999, 1033.18713, -0.906431854, 1.29724e-08, 0.422352165, 1.32806277e-09, 1, -2.7864429e-08, -0.422352165, -2.46962948e-08, -0.906431854)

    CFrameQuest = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)
    VectorQuest = Vector3.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)  
         end
    end
end
