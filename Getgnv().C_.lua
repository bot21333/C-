-- Instances: 147 | Scripts: 0 | Modules: 1
local SpeedHubX_V2 = {};

-- SpeedHubX_V2ay
SpeedHubX_V2["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
SpeedHubX_V2["1"]["IgnoreGuiInset"] = true;
SpeedHubX_V2["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
SpeedHubX_V2["1"]["Name"] = [[SpeedHubX_V2ay]];
SpeedHubX_V2["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- SpeedHubX_V2ay.TopBar
SpeedHubX_V2["2"] = Instance.new("Frame", SpeedHubX_V2["1"]);
SpeedHubX_V2["2"]["BorderSizePixel"] = 0;
SpeedHubX_V2["2"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["2"]["LayoutOrder"] = 2;
SpeedHubX_V2["2"]["Size"] = UDim2.new(0.5404488444328308, 0, 0.1739015281200409, 0);
SpeedHubX_V2["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["2"]["Position"] = UDim2.new(0.23000000417232513, 0, -0.1899999976158142, 0);
SpeedHubX_V2["2"]["Name"] = [[TopBar]];

-- SpeedHubX_V2ay.TopBar.UICorner
SpeedHubX_V2["3"] = Instance.new("UICorner", SpeedHubX_V2["2"]);
SpeedHubX_V2["3"]["CornerRadius"] = UDim.new(0.10000000149011612, 0);

-- SpeedHubX_V2ay.TopBar.ScrollingFrame
SpeedHubX_V2["4"] = Instance.new("ScrollingFrame", SpeedHubX_V2["2"]);
SpeedHubX_V2["4"]["Active"] = true;
SpeedHubX_V2["4"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
SpeedHubX_V2["4"]["BorderSizePixel"] = 0;
SpeedHubX_V2["4"]["CanvasSize"] = UDim2.new(0.10000000149011612, 0, 0, 0);
SpeedHubX_V2["4"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 36);
SpeedHubX_V2["4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
SpeedHubX_V2["4"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["4"]["Size"] = UDim2.new(0.915977954864502, 0, 0.5196850299835205, 0);
SpeedHubX_V2["4"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["4"]["ScrollBarThickness"] = 0;
SpeedHubX_V2["4"]["Position"] = UDim2.new(0, 0, 0.4803149700164795, 0);

-- SpeedHubX_V2ay.TopBar.ScrollingFrame.UIListLayout
SpeedHubX_V2["5"] = Instance.new("UIListLayout", SpeedHubX_V2["4"]);
SpeedHubX_V2["5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
SpeedHubX_V2["5"]["FillDirection"] = Enum.FillDirection.Horizontal;
SpeedHubX_V2["5"]["Padding"] = UDim.new(0.009999999776482582, 0);
SpeedHubX_V2["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.TopBar.ScrollingFrame.UIPadding
SpeedHubX_V2["6"] = Instance.new("UIPadding", SpeedHubX_V2["4"]);
SpeedHubX_V2["6"]["PaddingLeft"] = UDim.new(0.014999999664723873, 0);

-- SpeedHubX_V2ay.TopBar.DropShadowHolder
SpeedHubX_V2["7"] = Instance.new("Frame", SpeedHubX_V2["2"]);
SpeedHubX_V2["7"]["ZIndex"] = 0;
SpeedHubX_V2["7"]["BorderSizePixel"] = 0;
SpeedHubX_V2["7"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["7"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["7"]["Name"] = [[DropShadowHolder]];

-- SpeedHubX_V2ay.TopBar.DropShadowHolder.DropShadow
SpeedHubX_V2["8"] = Instance.new("ImageLabel", SpeedHubX_V2["7"]);
SpeedHubX_V2["8"]["ZIndex"] = 0;
SpeedHubX_V2["8"]["BorderSizePixel"] = 0;
SpeedHubX_V2["8"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
SpeedHubX_V2["8"]["ScaleType"] = Enum.ScaleType.Slice;
SpeedHubX_V2["8"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["8"]["ImageTransparency"] = 0.5;
SpeedHubX_V2["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SpeedHubX_V2["8"]["Image"] = [[rbxassetid://6014261993]];
SpeedHubX_V2["8"]["Size"] = UDim2.new(1, 47, 1, 47);
SpeedHubX_V2["8"]["Name"] = [[DropShadow]];
SpeedHubX_V2["8"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- SpeedHubX_V2ay.TopBar.UIGradient
SpeedHubX_V2["9"] = Instance.new("UIGradient", SpeedHubX_V2["2"]);
SpeedHubX_V2["9"]["Rotation"] = 90;
SpeedHubX_V2["9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(139, 139, 139)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.TopBar.TopBar
SpeedHubX_V2["a"] = Instance.new("Frame", SpeedHubX_V2["2"]);
SpeedHubX_V2["a"]["BorderSizePixel"] = 0;
SpeedHubX_V2["a"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["a"]["LayoutOrder"] = 2;
SpeedHubX_V2["a"]["Size"] = UDim2.new(0.9983566999435425, 0, 0.05511785298585892, 0);
SpeedHubX_V2["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["a"]["Position"] = UDim2.new(0, 0, 0.4645671844482422, 0);
SpeedHubX_V2["a"]["Name"] = [[TopBar]];

-- SpeedHubX_V2ay.TopBar.TopBar.UIGradient
SpeedHubX_V2["b"] = Instance.new("UIGradient", SpeedHubX_V2["a"]);
SpeedHubX_V2["b"]["Rotation"] = -90;
SpeedHubX_V2["b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(139, 139, 139)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.TopBar.ProfileMenu
SpeedHubX_V2["c"] = Instance.new("Frame", SpeedHubX_V2["2"]);
SpeedHubX_V2["c"]["BorderSizePixel"] = 0;
SpeedHubX_V2["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["c"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["c"]["Size"] = UDim2.new(0.9983566999435425, 0, 0.4645672142505646, 0);
SpeedHubX_V2["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["c"]["Name"] = [[ProfileMenu]];

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile
SpeedHubX_V2["d"] = Instance.new("ImageButton", SpeedHubX_V2["c"]);
SpeedHubX_V2["d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["d"]["AutoButtonColor"] = false;
SpeedHubX_V2["d"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["d"]["Size"] = UDim2.new(0.23481373488903046, 0, 0.682426393032074, 0);
SpeedHubX_V2["d"]["Name"] = [[PlayerProfile]];
SpeedHubX_V2["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["d"]["Position"] = UDim2.new(0.015024710446596146, 0, 0.18421050906181335, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.UICorner
SpeedHubX_V2["e"] = Instance.new("UICorner", SpeedHubX_V2["d"]);
SpeedHubX_V2["e"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.UIGradient
SpeedHubX_V2["f"] = Instance.new("UIGradient", SpeedHubX_V2["d"]);
SpeedHubX_V2["f"]["Rotation"] = 90;
SpeedHubX_V2["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(154, 154, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(231, 231, 231))};

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.ImageLabel
SpeedHubX_V2["10"] = Instance.new("ImageLabel", SpeedHubX_V2["d"]);
SpeedHubX_V2["10"]["BorderSizePixel"] = 0;
SpeedHubX_V2["10"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["10"]["Size"] = UDim2.new(0.16644950211048126, 0, 0.8032786846160889, 0);
SpeedHubX_V2["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["10"]["Position"] = UDim2.new(0.03799999877810478, 0, 0.1420000046491623, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.ImageLabel.UIAspectRatioConstraint
SpeedHubX_V2["11"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["10"]);
SpeedHubX_V2["11"]["AspectRatio"] = 0.9842342734336853;

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.ImageLabel.UICorner
SpeedHubX_V2["12"] = Instance.new("UICorner", SpeedHubX_V2["10"]);
SpeedHubX_V2["12"]["CornerRadius"] = UDim.new(100, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.ImageLabel.UIGradient
SpeedHubX_V2["13"] = Instance.new("UIGradient", SpeedHubX_V2["10"]);
SpeedHubX_V2["13"]["Rotation"] = 90;
SpeedHubX_V2["13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(213, 213, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.TopBar.ProfileMenu.PlayerProfile.TextLabel
SpeedHubX_V2["14"] = Instance.new("TextLabel", SpeedHubX_V2["d"]);
SpeedHubX_V2["14"]["TextWrapped"] = true;
SpeedHubX_V2["14"]["BorderSizePixel"] = 0;
SpeedHubX_V2["14"]["TextScaled"] = true;
SpeedHubX_V2["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["14"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
SpeedHubX_V2["14"]["TextSize"] = 14;
SpeedHubX_V2["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["14"]["AutomaticSize"] = Enum.AutomaticSize.X;
SpeedHubX_V2["14"]["Size"] = UDim2.new(0.7192937135696411, 0, 0.41530051827430725, 0);
SpeedHubX_V2["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["14"]["Text"] = [[PlayerName]];
SpeedHubX_V2["14"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["14"]["Position"] = UDim2.new(0.23957718908786774, 0, 0.27320244908332825, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.UIListLayout
SpeedHubX_V2["15"] = Instance.new("UIListLayout", SpeedHubX_V2["c"]);
SpeedHubX_V2["15"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
SpeedHubX_V2["15"]["FillDirection"] = Enum.FillDirection.Horizontal;
SpeedHubX_V2["15"]["Padding"] = UDim.new(0.014999999664723873, 0);
SpeedHubX_V2["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.TopBar.ProfileMenu.UIPadding
SpeedHubX_V2["16"] = Instance.new("UIPadding", SpeedHubX_V2["c"]);
SpeedHubX_V2["16"]["PaddingLeft"] = UDim.new(0.014000000432133675, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Clock
SpeedHubX_V2["17"] = Instance.new("ImageButton", SpeedHubX_V2["c"]);
SpeedHubX_V2["17"]["BorderSizePixel"] = 0;
SpeedHubX_V2["17"]["AutoButtonColor"] = false;
SpeedHubX_V2["17"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["17"]["Size"] = UDim2.new(0.10328257083892822, 0, 0.682426393032074, 0);
SpeedHubX_V2["17"]["Name"] = [[Clock]];
SpeedHubX_V2["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["17"]["Position"] = UDim2.new(0.26031631231307983, 0, 0.158786803483963, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Clock.UICorner
SpeedHubX_V2["18"] = Instance.new("UICorner", SpeedHubX_V2["17"]);
SpeedHubX_V2["18"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Clock.UIGradient
SpeedHubX_V2["19"] = Instance.new("UIGradient", SpeedHubX_V2["17"]);
SpeedHubX_V2["19"]["Rotation"] = 90;
SpeedHubX_V2["19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(154, 154, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(231, 231, 231))};

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Clock.TextLabel
SpeedHubX_V2["1a"] = Instance.new("TextLabel", SpeedHubX_V2["17"]);
SpeedHubX_V2["1a"]["TextWrapped"] = true;
SpeedHubX_V2["1a"]["BorderSizePixel"] = 0;
SpeedHubX_V2["1a"]["TextScaled"] = true;
SpeedHubX_V2["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["1a"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
SpeedHubX_V2["1a"]["TextSize"] = 14;
SpeedHubX_V2["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["1a"]["AutomaticSize"] = Enum.AutomaticSize.X;
SpeedHubX_V2["1a"]["Size"] = UDim2.new(0.33195531368255615, 0, 0.41530051827430725, 0);
SpeedHubX_V2["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["1a"]["Text"] = [[00:00]];
SpeedHubX_V2["1a"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["1a"]["Position"] = UDim2.new(0.21512815356254578, 0, 0.27320244908332825, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Title
SpeedHubX_V2["1b"] = Instance.new("ImageButton", SpeedHubX_V2["c"]);
SpeedHubX_V2["1b"]["BorderSizePixel"] = 0;
SpeedHubX_V2["1b"]["AutoButtonColor"] = false;
SpeedHubX_V2["1b"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["1b"]["Size"] = UDim2.new(0.23481373488903046, 0, 0.682426393032074, 0);
SpeedHubX_V2["1b"]["Name"] = [[Title]];
SpeedHubX_V2["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["1b"]["Position"] = UDim2.new(0.015024710446596146, 0, 0.18421050906181335, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Title.UICorner
SpeedHubX_V2["1c"] = Instance.new("UICorner", SpeedHubX_V2["1b"]);
SpeedHubX_V2["1c"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Title.UIGradient
SpeedHubX_V2["1d"] = Instance.new("UIGradient", SpeedHubX_V2["1b"]);
SpeedHubX_V2["1d"]["Rotation"] = 90;
SpeedHubX_V2["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(154, 154, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(231, 231, 231))};

-- SpeedHubX_V2ay.TopBar.ProfileMenu.Title.TextLabel
SpeedHubX_V2["1e"] = Instance.new("TextLabel", SpeedHubX_V2["1b"]);
SpeedHubX_V2["1e"]["TextWrapped"] = true;
SpeedHubX_V2["1e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["1e"]["TextScaled"] = true;
SpeedHubX_V2["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["1e"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
SpeedHubX_V2["1e"]["TextSize"] = 14;
SpeedHubX_V2["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["1e"]["AutomaticSize"] = Enum.AutomaticSize.X;
SpeedHubX_V2["1e"]["Size"] = UDim2.new(0.7192937135696411, 0, 0.41530051827430725, 0);
SpeedHubX_V2["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["1e"]["Text"] = [[DarkRay]];
SpeedHubX_V2["1e"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["1e"]["Position"] = UDim2.new(0.13402166962623596, 0, 0.27320244908332825, 0);

-- SpeedHubX_V2ay.TopBar.TopBarClose
SpeedHubX_V2["1f"] = Instance.new("TextButton", SpeedHubX_V2["2"]);
SpeedHubX_V2["1f"]["Active"] = false;
SpeedHubX_V2["1f"]["BorderSizePixel"] = 0;
SpeedHubX_V2["1f"]["AutoButtonColor"] = false;
SpeedHubX_V2["1f"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["1f"]["Selectable"] = false;
SpeedHubX_V2["1f"]["Size"] = UDim2.new(0.08402203768491745, 0, 0.4803149402141571, 0);
SpeedHubX_V2["1f"]["Name"] = [[TopBarClose]];
SpeedHubX_V2["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["1f"]["Text"] = [[]];
SpeedHubX_V2["1f"]["Position"] = UDim2.new(0.915977954864502, 0, 0.5196850299835205, 0);

-- SpeedHubX_V2ay.TopBar.TopBarClose.UICorner
SpeedHubX_V2["20"] = Instance.new("UICorner", SpeedHubX_V2["1f"]);
SpeedHubX_V2["20"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.TopBar.TopBarClose.UIGradient
SpeedHubX_V2["21"] = Instance.new("UIGradient", SpeedHubX_V2["1f"]);
SpeedHubX_V2["21"]["Rotation"] = 90;
SpeedHubX_V2["21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(218, 218, 218))};

-- SpeedHubX_V2ay.TopBar.TopBarClose.idk
SpeedHubX_V2["22"] = Instance.new("Frame", SpeedHubX_V2["1f"]);
SpeedHubX_V2["22"]["BorderSizePixel"] = 0;
SpeedHubX_V2["22"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["22"]["Size"] = UDim2.new(0.2622910141944885, 0, 1, 0);
SpeedHubX_V2["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["22"]["Position"] = UDim2.new(0.000002001152552111307, 0, 0, 0);
SpeedHubX_V2["22"]["Name"] = [[idk]];

-- SpeedHubX_V2ay.TopBar.TopBarClose.idk.UIGradient
SpeedHubX_V2["23"] = Instance.new("UIGradient", SpeedHubX_V2["22"]);
SpeedHubX_V2["23"]["Rotation"] = 90;
SpeedHubX_V2["23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(218, 218, 218))};

-- SpeedHubX_V2ay.TopBar.TopBarClose.UIAspectRatioConstraint
SpeedHubX_V2["24"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["1f"]);


-- SpeedHubX_V2ay.TopBar.TopBarClose.ImageLabel
SpeedHubX_V2["25"] = Instance.new("ImageLabel", SpeedHubX_V2["1f"]);
SpeedHubX_V2["25"]["BorderSizePixel"] = 0;
SpeedHubX_V2["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["25"]["Image"] = [[rbxassetid://14122651741]];
SpeedHubX_V2["25"]["LayoutOrder"] = 1;
SpeedHubX_V2["25"]["Size"] = UDim2.new(0.5081987380981445, 0, 0.5971601009368896, 0);
SpeedHubX_V2["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["25"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["25"]["Position"] = UDim2.new(0.24589963257312775, 0, 0.23339086771011353, 0);

-- SpeedHubX_V2ay.TopBar.TopBarClose.ImageLabel.UIAspectRatioConstraint
SpeedHubX_V2["26"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["25"]);
SpeedHubX_V2["26"]["AspectRatio"] = 0.9836804866790771;

-- SpeedHubX_V2ay.TopBar.UIAspectRatioConstraint
SpeedHubX_V2["27"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["2"]);
SpeedHubX_V2["27"]["AspectRatio"] = 5.724700927734375;

-- SpeedHubX_V2ay.MainBar
SpeedHubX_V2["28"] = Instance.new("Frame", SpeedHubX_V2["1"]);
SpeedHubX_V2["28"]["BorderSizePixel"] = 0;
SpeedHubX_V2["28"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["28"]["Size"] = UDim2.new(0.5404488444328308, 0, 0.5745577812194824, 0);
SpeedHubX_V2["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["28"]["Position"] = UDim2.new(0.23000000417232513, 0, -0.6119999885559082, 0);
SpeedHubX_V2["28"]["Name"] = [[MainBar]];

-- SpeedHubX_V2ay.MainBar.UICorner
SpeedHubX_V2["29"] = Instance.new("UICorner", SpeedHubX_V2["28"]);
SpeedHubX_V2["29"]["CornerRadius"] = UDim.new(0.029999999329447746, 0);

-- SpeedHubX_V2ay.MainBar.UIGradient
SpeedHubX_V2["2a"] = Instance.new("UIGradient", SpeedHubX_V2["28"]);
SpeedHubX_V2["2a"]["Rotation"] = 90;
SpeedHubX_V2["2a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(90, 90, 90)),ColorSequenceKeypoint.new(0.231, Color3.fromRGB(154, 154, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.MainBar.UIAspectRatioConstraint
SpeedHubX_V2["2b"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["28"]);
SpeedHubX_V2["2b"]["AspectRatio"] = 1.7326968908309937;

-- SpeedHubX_V2ay.MainBar.DropShadowHolder
SpeedHubX_V2["2c"] = Instance.new("Frame", SpeedHubX_V2["28"]);
SpeedHubX_V2["2c"]["ZIndex"] = 0;
SpeedHubX_V2["2c"]["BorderSizePixel"] = 0;
SpeedHubX_V2["2c"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["2c"]["LayoutOrder"] = -1;
SpeedHubX_V2["2c"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["2c"]["Name"] = [[DropShadowHolder]];

-- SpeedHubX_V2ay.MainBar.DropShadowHolder.DropShadow
SpeedHubX_V2["2d"] = Instance.new("ImageLabel", SpeedHubX_V2["2c"]);
SpeedHubX_V2["2d"]["ZIndex"] = 0;
SpeedHubX_V2["2d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["2d"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
SpeedHubX_V2["2d"]["ScaleType"] = Enum.ScaleType.Slice;
SpeedHubX_V2["2d"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["2d"]["ImageTransparency"] = 0.5;
SpeedHubX_V2["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
SpeedHubX_V2["2d"]["Image"] = [[rbxassetid://6014261993]];
SpeedHubX_V2["2d"]["Size"] = UDim2.new(1, 47, 1, 47);
SpeedHubX_V2["2d"]["Name"] = [[DropShadow]];
SpeedHubX_V2["2d"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- SpeedHubX_V2ay.MainBar.Logo
SpeedHubX_V2["2e"] = Instance.new("ImageLabel", SpeedHubX_V2["28"]);
SpeedHubX_V2["2e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["2e"]["Image"] = [[rbxassetid://14133403065]];
SpeedHubX_V2["2e"]["Size"] = UDim2.new(0.18741475045681, 0, 0.3247329592704773, 0);
SpeedHubX_V2["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["2e"]["Name"] = [[Logo]];
SpeedHubX_V2["2e"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["2e"]["Position"] = UDim2.new(0.3991934061050415, 0, 0.33447495102882385, 0);

-- SpeedHubX_V2ay.MainBar.Logo.UIGradient
SpeedHubX_V2["2f"] = Instance.new("UIGradient", SpeedHubX_V2["2e"]);
SpeedHubX_V2["2f"]["Rotation"] = 90;
SpeedHubX_V2["2f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(5, 6, 23))};

-- SpeedHubX_V2ay.Folder
SpeedHubX_V2["30"] = Instance.new("Folder", SpeedHubX_V2["1"]);


-- SpeedHubX_V2ay.Folder.TabReserved
SpeedHubX_V2["31"] = Instance.new("ScrollingFrame", SpeedHubX_V2["30"]);
SpeedHubX_V2["31"]["Active"] = true;
SpeedHubX_V2["31"]["BorderSizePixel"] = 0;
SpeedHubX_V2["31"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
SpeedHubX_V2["31"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 36);
SpeedHubX_V2["31"]["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left;
SpeedHubX_V2["31"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["31"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["31"]["Size"] = UDim2.new(1, 0, 0.9599999785423279, 0);
SpeedHubX_V2["31"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["31"]["ScrollBarThickness"] = 0;
SpeedHubX_V2["31"]["Position"] = UDim2.new(0, 0, 0.03999999910593033, 0);
SpeedHubX_V2["31"]["Visible"] = false;
SpeedHubX_V2["31"]["Name"] = [[TabReserved]];

-- SpeedHubX_V2ay.Folder.TabReserved.UIListLayout
SpeedHubX_V2["32"] = Instance.new("UIListLayout", SpeedHubX_V2["31"]);
SpeedHubX_V2["32"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
SpeedHubX_V2["32"]["Padding"] = UDim.new(0.014999999664723873, 0);
SpeedHubX_V2["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.Folder.TabButtonReserved
SpeedHubX_V2["33"] = Instance.new("ImageButton", SpeedHubX_V2["30"]);
SpeedHubX_V2["33"]["BorderSizePixel"] = 0;
SpeedHubX_V2["33"]["AutoButtonColor"] = false;
SpeedHubX_V2["33"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 58);
SpeedHubX_V2["33"]["Size"] = UDim2.new(0.19896680116653442, 0, 0.6315789818763733, 0);
SpeedHubX_V2["33"]["Name"] = [[TabButtonReserved]];
SpeedHubX_V2["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["33"]["Visible"] = false;
SpeedHubX_V2["33"]["Position"] = UDim2.new(0.015000020153820515, 0, 0.18421050906181335, 0);

-- SpeedHubX_V2ay.Folder.TabButtonReserved.UICorner
SpeedHubX_V2["34"] = Instance.new("UICorner", SpeedHubX_V2["33"]);
SpeedHubX_V2["34"]["CornerRadius"] = UDim.new(0.30000001192092896, 0);

-- SpeedHubX_V2ay.Folder.TabButtonReserved.Frame
SpeedHubX_V2["35"] = Instance.new("Frame", SpeedHubX_V2["33"]);
SpeedHubX_V2["35"]["BorderSizePixel"] = 0;
SpeedHubX_V2["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["35"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["35"]["LayoutOrder"] = 1;
SpeedHubX_V2["35"]["Size"] = UDim2.new(0.6113507151603699, 0, 1.0000001192092896, 0);
SpeedHubX_V2["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["35"]["Position"] = UDim2.new(0.26662877202033997, 0, -4.950767973355141e-08, 0);
SpeedHubX_V2["35"]["AutomaticSize"] = Enum.AutomaticSize.X;

-- SpeedHubX_V2ay.Folder.TabButtonReserved.Frame.TextLabel
SpeedHubX_V2["36"] = Instance.new("TextLabel", SpeedHubX_V2["35"]);
SpeedHubX_V2["36"]["TextWrapped"] = true;
SpeedHubX_V2["36"]["BorderSizePixel"] = 0;
SpeedHubX_V2["36"]["TextScaled"] = true;
SpeedHubX_V2["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["36"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["36"]["TextSize"] = 14;
SpeedHubX_V2["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["36"]["AutomaticSize"] = Enum.AutomaticSize.X;
SpeedHubX_V2["36"]["Size"] = UDim2.new(-0.145383819937706, 0, 0.415300577878952, 0);
SpeedHubX_V2["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["36"]["Text"] = [[Tab1]];
SpeedHubX_V2["36"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["36"]["Position"] = UDim2.new(-1.2657674551010132, 0, 0.37021857500076294, 0);

-- SpeedHubX_V2ay.Folder.TabButtonReserved.Frame.UIListLayout
SpeedHubX_V2["37"] = Instance.new("UIListLayout", SpeedHubX_V2["35"]);
SpeedHubX_V2["37"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
SpeedHubX_V2["37"]["FillDirection"] = Enum.FillDirection.Horizontal;
SpeedHubX_V2["37"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
SpeedHubX_V2["37"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.Folder.TabButtonReserved.UIGradient
SpeedHubX_V2["38"] = Instance.new("UIGradient", SpeedHubX_V2["33"]);
SpeedHubX_V2["38"]["Rotation"] = 90;
SpeedHubX_V2["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(154, 154, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(231, 231, 231))};

-- SpeedHubX_V2ay.Folder.TabButtonReserved.ImageLabel
SpeedHubX_V2["39"] = Instance.new("ImageLabel", SpeedHubX_V2["33"]);
SpeedHubX_V2["39"]["BorderSizePixel"] = 0;
SpeedHubX_V2["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["39"]["Size"] = UDim2.new(0.19903095066547394, 0, 0.606557309627533, 0);
SpeedHubX_V2["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["39"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["39"]["Position"] = UDim2.new(0.1134648397564888, 0, 0.19672130048274994, 0);

-- SpeedHubX_V2ay.Folder.TabButtonReserved.ImageLabel.UIAspectRatioConstraint
SpeedHubX_V2["3a"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["39"]);
SpeedHubX_V2["3a"]["AspectRatio"] = 0.9842342734336853;

-- SpeedHubX_V2ay.Folder.TabButtonReserved.UIListLayout
SpeedHubX_V2["3b"] = Instance.new("UIListLayout", SpeedHubX_V2["33"]);
SpeedHubX_V2["3b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
SpeedHubX_V2["3b"]["FillDirection"] = Enum.FillDirection.Horizontal;
SpeedHubX_V2["3b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.Folder.TabButtonReserved.UIPadding
SpeedHubX_V2["3c"] = Instance.new("UIPadding", SpeedHubX_V2["33"]);
SpeedHubX_V2["3c"]["PaddingLeft"] = UDim.new(0.10999999940395355, 0);

-- SpeedHubX_V2ay.Folder.Dropdown
SpeedHubX_V2["3d"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["3d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["3d"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["3d"]["BackgroundTransparency"] = 0.4000000059604645;
SpeedHubX_V2["3d"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.2624756097793579, 0);
SpeedHubX_V2["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["3d"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.12373435497283936, 0);
SpeedHubX_V2["3d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["3d"]["Visible"] = false;
SpeedHubX_V2["3d"]["Name"] = [[Dropdown]];

-- SpeedHubX_V2ay.Folder.Dropdown.UICorner
SpeedHubX_V2["3e"] = Instance.new("UICorner", SpeedHubX_V2["3d"]);
SpeedHubX_V2["3e"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.UIGradient
SpeedHubX_V2["3f"] = Instance.new("UIGradient", SpeedHubX_V2["3d"]);
SpeedHubX_V2["3f"]["Rotation"] = 90;
SpeedHubX_V2["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(89, 89, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 139, 139))};

-- SpeedHubX_V2ay.Folder.Dropdown.Title
SpeedHubX_V2["40"] = Instance.new("TextLabel", SpeedHubX_V2["3d"]);
SpeedHubX_V2["40"]["TextWrapped"] = true;
SpeedHubX_V2["40"]["BorderSizePixel"] = 0;
SpeedHubX_V2["40"]["TextScaled"] = true;
SpeedHubX_V2["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["40"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["40"]["TextSize"] = 14;
SpeedHubX_V2["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["40"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.19094853103160858, 0);
SpeedHubX_V2["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["40"]["Text"] = [[Dropdown]];
SpeedHubX_V2["40"]["Name"] = [[Title]];
SpeedHubX_V2["40"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["40"]["Position"] = UDim2.new(0.017191976308822632, 0, 0.10911344736814499, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.Description
SpeedHubX_V2["41"] = Instance.new("TextLabel", SpeedHubX_V2["3d"]);
SpeedHubX_V2["41"]["TextWrapped"] = true;
SpeedHubX_V2["41"]["BorderSizePixel"] = 0;
SpeedHubX_V2["41"]["TextScaled"] = true;
SpeedHubX_V2["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["41"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["41"]["TextSize"] = 14;
SpeedHubX_V2["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["41"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.15457738935947418, 0);
SpeedHubX_V2["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["41"]["Text"] = [[List of stuffs.]];
SpeedHubX_V2["41"]["Name"] = [[Description]];
SpeedHubX_V2["41"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["41"]["Position"] = UDim2.new(0.011461317539215088, 0, 0.7547013759613037, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar
SpeedHubX_V2["42"] = Instance.new("Frame", SpeedHubX_V2["3d"]);
SpeedHubX_V2["42"]["BorderSizePixel"] = 0;
SpeedHubX_V2["42"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["42"]["LayoutOrder"] = 10;
SpeedHubX_V2["42"]["Size"] = UDim2.new(0.9684813618659973, 0, 0.29096919298171997, 0);
SpeedHubX_V2["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["42"]["Position"] = UDim2.new(0.014326647855341434, 0, 0.34552592039108276, 0);
SpeedHubX_V2["42"]["Name"] = [[DropdownBar]];

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.UICorner
SpeedHubX_V2["43"] = Instance.new("UICorner", SpeedHubX_V2["42"]);
SpeedHubX_V2["43"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.UIGradient
SpeedHubX_V2["44"] = Instance.new("UIGradient", SpeedHubX_V2["42"]);
SpeedHubX_V2["44"]["Rotation"] = 90;
SpeedHubX_V2["44"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.UIStroke
SpeedHubX_V2["45"] = Instance.new("UIStroke", SpeedHubX_V2["42"]);
SpeedHubX_V2["45"]["Color"] = Color3.fromRGB(40, 45, 62);

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.Icon
SpeedHubX_V2["46"] = Instance.new("ImageLabel", SpeedHubX_V2["42"]);
SpeedHubX_V2["46"]["BorderSizePixel"] = 0;
SpeedHubX_V2["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["46"]["Image"] = [[rbxassetid://14122651741]];
SpeedHubX_V2["46"]["Size"] = UDim2.new(0.028106508776545525, 0, 0.59375, 0);
SpeedHubX_V2["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["46"]["Name"] = [[Icon]];
SpeedHubX_V2["46"]["Rotation"] = 180;
SpeedHubX_V2["46"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["46"]["Position"] = UDim2.new(0.9589999914169312, 0, 0.21899999678134918, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.Icon.UIAspectRatioConstraint
SpeedHubX_V2["47"] = Instance.new("UIAspectRatioConstraint", SpeedHubX_V2["46"]);


-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.Open
SpeedHubX_V2["48"] = Instance.new("TextLabel", SpeedHubX_V2["42"]);
SpeedHubX_V2["48"]["TextWrapped"] = true;
SpeedHubX_V2["48"]["BorderSizePixel"] = 0;
SpeedHubX_V2["48"]["TextScaled"] = true;
SpeedHubX_V2["48"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["48"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["48"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["48"]["Size"] = UDim2.new(1, 0, 0.59375, 0);
SpeedHubX_V2["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["48"]["Text"] = [[none]];
SpeedHubX_V2["48"]["Name"] = [[Open]];
SpeedHubX_V2["48"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["48"]["Position"] = UDim2.new(0, 0, 0.21875, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.DropdownBar.Trigger
SpeedHubX_V2["49"] = Instance.new("TextButton", SpeedHubX_V2["42"]);
SpeedHubX_V2["49"]["BorderSizePixel"] = 0;
SpeedHubX_V2["49"]["AutoButtonColor"] = false;
SpeedHubX_V2["49"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["49"]["Selectable"] = false;
SpeedHubX_V2["49"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["49"]["LayoutOrder"] = 10;
SpeedHubX_V2["49"]["Name"] = [[Trigger]];
SpeedHubX_V2["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["49"]["Text"] = [[]];
SpeedHubX_V2["49"]["BackgroundTransparency"] = 1;

-- SpeedHubX_V2ay.Folder.Dropdown.Box
SpeedHubX_V2["4a"] = Instance.new("Frame", SpeedHubX_V2["3d"]);
SpeedHubX_V2["4a"]["BorderSizePixel"] = 0;
SpeedHubX_V2["4a"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["4a"]["LayoutOrder"] = 10;
SpeedHubX_V2["4a"]["Size"] = UDim2.new(0.9700000286102295, 0, 0, 0);
SpeedHubX_V2["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["4a"]["Position"] = UDim2.new(0.014326647855341434, 0, 0.6362887620925903, 0);
SpeedHubX_V2["4a"]["Visible"] = false;
SpeedHubX_V2["4a"]["Name"] = [[Box]];

-- SpeedHubX_V2ay.Folder.Dropdown.Box.UIGradient
SpeedHubX_V2["4b"] = Instance.new("UIGradient", SpeedHubX_V2["4a"]);
SpeedHubX_V2["4b"]["Rotation"] = 90;
SpeedHubX_V2["4b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Dropdown.Box.UIStroke
SpeedHubX_V2["4c"] = Instance.new("UIStroke", SpeedHubX_V2["4a"]);
SpeedHubX_V2["4c"]["Color"] = Color3.fromRGB(40, 45, 62);

-- SpeedHubX_V2ay.Folder.Dropdown.Box.UICorner
SpeedHubX_V2["4d"] = Instance.new("UICorner", SpeedHubX_V2["4a"]);
SpeedHubX_V2["4d"]["CornerRadius"] = UDim.new(0.05999999865889549, 0);

-- SpeedHubX_V2ay.Folder.Dropdown.Box.ScrollingFrame
SpeedHubX_V2["4e"] = Instance.new("ScrollingFrame", SpeedHubX_V2["4a"]);
SpeedHubX_V2["4e"]["Active"] = true;
SpeedHubX_V2["4e"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
SpeedHubX_V2["4e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["4e"]["CanvasSize"] = UDim2.new(0, 0, 0.10000000149011612, 0);
SpeedHubX_V2["4e"]["MidImage"] = [[]];
SpeedHubX_V2["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["4e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["4e"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["4e"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["4e"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["4e"]["ScrollBarThickness"] = 0;

-- SpeedHubX_V2ay.Folder.Dropdown.Box.ScrollingFrame.UIListLayout
SpeedHubX_V2["4f"] = Instance.new("UIListLayout", SpeedHubX_V2["4e"]);
SpeedHubX_V2["4f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
SpeedHubX_V2["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- SpeedHubX_V2ay.Folder.Keybind
SpeedHubX_V2["50"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["50"]["Active"] = true;
SpeedHubX_V2["50"]["BorderSizePixel"] = 0;
SpeedHubX_V2["50"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["50"]["BackgroundTransparency"] = 0.4000000059604645;
SpeedHubX_V2["50"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.2624756097793579, 0);
SpeedHubX_V2["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["50"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.12373435497283936, 0);
SpeedHubX_V2["50"]["Visible"] = false;
SpeedHubX_V2["50"]["Name"] = [[Keybind]];

-- SpeedHubX_V2ay.Folder.Keybind.UICorner
SpeedHubX_V2["51"] = Instance.new("UICorner", SpeedHubX_V2["50"]);
SpeedHubX_V2["51"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Keybind.UIGradient
SpeedHubX_V2["52"] = Instance.new("UIGradient", SpeedHubX_V2["50"]);
SpeedHubX_V2["52"]["Rotation"] = 90;
SpeedHubX_V2["52"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(113, 113, 113)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(194, 194, 194))};

-- SpeedHubX_V2ay.Folder.Keybind.Title
SpeedHubX_V2["53"] = Instance.new("TextLabel", SpeedHubX_V2["50"]);
SpeedHubX_V2["53"]["TextWrapped"] = true;
SpeedHubX_V2["53"]["BorderSizePixel"] = 0;
SpeedHubX_V2["53"]["TextScaled"] = true;
SpeedHubX_V2["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["53"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["53"]["TextSize"] = 14;
SpeedHubX_V2["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["53"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.19094853103160858, 0);
SpeedHubX_V2["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["53"]["Text"] = [[Keybind]];
SpeedHubX_V2["53"]["Name"] = [[Title]];
SpeedHubX_V2["53"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["53"]["Position"] = UDim2.new(0.017191976308822632, 0, 0.10911344736814499, 0);

-- SpeedHubX_V2ay.Folder.Keybind.Description
SpeedHubX_V2["54"] = Instance.new("TextLabel", SpeedHubX_V2["50"]);
SpeedHubX_V2["54"]["TextWrapped"] = true;
SpeedHubX_V2["54"]["BorderSizePixel"] = 0;
SpeedHubX_V2["54"]["TextScaled"] = true;
SpeedHubX_V2["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["54"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["54"]["TextSize"] = 14;
SpeedHubX_V2["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["54"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.15457738935947418, 0);
SpeedHubX_V2["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["54"]["Text"] = [[Press this square and enter any key to bind!]];
SpeedHubX_V2["54"]["Name"] = [[Description]];
SpeedHubX_V2["54"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["54"]["Position"] = UDim2.new(0.012893982231616974, 0, 0.7092373967170715, 0);

-- SpeedHubX_V2ay.Folder.Keybind.Bind
SpeedHubX_V2["55"] = Instance.new("Frame", SpeedHubX_V2["50"]);
SpeedHubX_V2["55"]["Active"] = true;
SpeedHubX_V2["55"]["BorderSizePixel"] = 0;
SpeedHubX_V2["55"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["55"]["Size"] = UDim2.new(0.14899714291095734, 0, 0.29096919298171997, 0);
SpeedHubX_V2["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["55"]["Position"] = UDim2.new(0.014326647855341434, 0, 0.34552592039108276, 0);
SpeedHubX_V2["55"]["Name"] = [[Bind]];

-- SpeedHubX_V2ay.Folder.Keybind.Bind.UICorner
SpeedHubX_V2["56"] = Instance.new("UICorner", SpeedHubX_V2["55"]);
SpeedHubX_V2["56"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Keybind.Bind.UIGradient
SpeedHubX_V2["57"] = Instance.new("UIGradient", SpeedHubX_V2["55"]);
SpeedHubX_V2["57"]["Rotation"] = 90;
SpeedHubX_V2["57"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Keybind.Bind.UIStroke
SpeedHubX_V2["58"] = Instance.new("UIStroke", SpeedHubX_V2["55"]);
SpeedHubX_V2["58"]["Color"] = Color3.fromRGB(40, 45, 62);

-- SpeedHubX_V2ay.Folder.Keybind.Bind.Button
SpeedHubX_V2["59"] = Instance.new("TextButton", SpeedHubX_V2["55"]);
SpeedHubX_V2["59"]["TextWrapped"] = true;
SpeedHubX_V2["59"]["ZIndex"] = 5;
SpeedHubX_V2["59"]["BorderSizePixel"] = 0;
SpeedHubX_V2["59"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["59"]["TextScaled"] = true;
SpeedHubX_V2["59"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["59"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["59"]["TextColor3"] = Color3.fromRGB(160, 160, 160);
SpeedHubX_V2["59"]["Selectable"] = false;
SpeedHubX_V2["59"]["Size"] = UDim2.new(1, 0, 0.59375, 0);
SpeedHubX_V2["59"]["Name"] = [[Button]];
SpeedHubX_V2["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["59"]["Text"] = [[key]];
SpeedHubX_V2["59"]["Position"] = UDim2.new(0, 0, 0.21875, 0);
SpeedHubX_V2["59"]["BackgroundTransparency"] = 0.9900000095367432;

-- SpeedHubX_V2ay.Folder.Label
SpeedHubX_V2["5a"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["5a"]["BorderSizePixel"] = 0;
SpeedHubX_V2["5a"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["5a"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.07873434573411942, 0);
SpeedHubX_V2["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["5a"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.01806684397161007, 0);
SpeedHubX_V2["5a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["5a"]["Visible"] = false;
SpeedHubX_V2["5a"]["Name"] = [[Label]];

-- SpeedHubX_V2ay.Folder.Label.UICorner
SpeedHubX_V2["5b"] = Instance.new("UICorner", SpeedHubX_V2["5a"]);
SpeedHubX_V2["5b"]["CornerRadius"] = UDim.new(0.33000001311302185, 0);

-- SpeedHubX_V2ay.Folder.Label.UIGradient
SpeedHubX_V2["5c"] = Instance.new("UIGradient", SpeedHubX_V2["5a"]);
SpeedHubX_V2["5c"]["Rotation"] = 90;
SpeedHubX_V2["5c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Label.Title
SpeedHubX_V2["5d"] = Instance.new("TextLabel", SpeedHubX_V2["5a"]);
SpeedHubX_V2["5d"]["TextWrapped"] = true;
SpeedHubX_V2["5d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["5d"]["TextScaled"] = true;
SpeedHubX_V2["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["5d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["5d"]["TextSize"] = 14;
SpeedHubX_V2["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["5d"]["Size"] = UDim2.new(0.9668599367141724, 0, 0.5928126573562622, 0);
SpeedHubX_V2["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["5d"]["Text"] = [[This is a Label]];
SpeedHubX_V2["5d"]["Name"] = [[Title]];
SpeedHubX_V2["5d"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["5d"]["Position"] = UDim2.new(0.018000036478042603, 0, 0.22100010514259338, 0);

-- SpeedHubX_V2ay.Folder.Slider
SpeedHubX_V2["5e"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["5e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["5e"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["5e"]["BackgroundTransparency"] = 0.4000000059604645;
SpeedHubX_V2["5e"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.2624756097793579, 0);
SpeedHubX_V2["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["5e"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.12373435497283936, 0);
SpeedHubX_V2["5e"]["Visible"] = false;
SpeedHubX_V2["5e"]["Name"] = [[Slider]];

-- SpeedHubX_V2ay.Folder.Slider.UICorner
SpeedHubX_V2["5f"] = Instance.new("UICorner", SpeedHubX_V2["5e"]);
SpeedHubX_V2["5f"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Slider.UIGradient
SpeedHubX_V2["60"] = Instance.new("UIGradient", SpeedHubX_V2["5e"]);
SpeedHubX_V2["60"]["Rotation"] = 90;
SpeedHubX_V2["60"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(108, 108, 108)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(232, 232, 232))};

-- SpeedHubX_V2ay.Folder.Slider.Title
SpeedHubX_V2["61"] = Instance.new("TextLabel", SpeedHubX_V2["5e"]);
SpeedHubX_V2["61"]["TextWrapped"] = true;
SpeedHubX_V2["61"]["BorderSizePixel"] = 0;
SpeedHubX_V2["61"]["TextScaled"] = true;
SpeedHubX_V2["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["61"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["61"]["TextSize"] = 14;
SpeedHubX_V2["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["61"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.19094853103160858, 0);
SpeedHubX_V2["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["61"]["Text"] = [[Speed]];
SpeedHubX_V2["61"]["Name"] = [[Title]];
SpeedHubX_V2["61"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["61"]["Position"] = UDim2.new(0.017191976308822632, 0, 0.10911344736814499, 0);

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider
SpeedHubX_V2["62"] = Instance.new("Frame", SpeedHubX_V2["5e"]);
SpeedHubX_V2["62"]["BorderSizePixel"] = 0;
SpeedHubX_V2["62"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["62"]["Size"] = UDim2.new(0.9684813618659973, 0, 0.29096919298171997, 0);
SpeedHubX_V2["62"]["ClipsDescendants"] = true;
SpeedHubX_V2["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["62"]["Position"] = UDim2.new(0.014326647855341434, 0, 0.34552592039108276, 0);
SpeedHubX_V2["62"]["Name"] = [[ActualSlider]];

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.UICorner
SpeedHubX_V2["63"] = Instance.new("UICorner", SpeedHubX_V2["62"]);
SpeedHubX_V2["63"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.UIGradient
SpeedHubX_V2["64"] = Instance.new("UIGradient", SpeedHubX_V2["62"]);
SpeedHubX_V2["64"]["Rotation"] = 90;
SpeedHubX_V2["64"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(64, 64, 64)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(148, 148, 148))};

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.UIStroke
SpeedHubX_V2["65"] = Instance.new("UIStroke", SpeedHubX_V2["62"]);
SpeedHubX_V2["65"]["Color"] = Color3.fromRGB(0, 255, 39);

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Fill
SpeedHubX_V2["66"] = Instance.new("Frame", SpeedHubX_V2["62"]);
SpeedHubX_V2["66"]["BorderSizePixel"] = 0;
SpeedHubX_V2["66"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["66"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["66"]["Position"] = UDim2.new(-0.0010000000474974513, 0, 0.029999999329447746, 0);
SpeedHubX_V2["66"]["Name"] = [[Fill]];

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Fill.UICorner
SpeedHubX_V2["67"] = Instance.new("UICorner", SpeedHubX_V2["66"]);
SpeedHubX_V2["67"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Fill.UIGradient
SpeedHubX_V2["68"] = Instance.new("UIGradient", SpeedHubX_V2["66"]);
SpeedHubX_V2["68"]["Rotation"] = 90;
SpeedHubX_V2["68"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(107, 107, 107)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Trigger
SpeedHubX_V2["69"] = Instance.new("TextButton", SpeedHubX_V2["62"]);
SpeedHubX_V2["69"]["BorderSizePixel"] = 0;
SpeedHubX_V2["69"]["AutoButtonColor"] = false;
SpeedHubX_V2["69"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["69"]["Selectable"] = false;
SpeedHubX_V2["69"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["69"]["LayoutOrder"] = 5;
SpeedHubX_V2["69"]["Name"] = [[Trigger]];
SpeedHubX_V2["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["69"]["Text"] = [[]];
SpeedHubX_V2["69"]["Position"] = UDim2.new(-0.0010000000474974513, 0, 0.029999999329447746, 0);
SpeedHubX_V2["69"]["BackgroundTransparency"] = 1;

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Trigger.UICorner
SpeedHubX_V2["6a"] = Instance.new("UICorner", SpeedHubX_V2["69"]);
SpeedHubX_V2["6a"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Trigger.UIGradient
SpeedHubX_V2["6b"] = Instance.new("UIGradient", SpeedHubX_V2["69"]);
SpeedHubX_V2["6b"]["Rotation"] = 90;
SpeedHubX_V2["6b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Slider.ActualSlider.Title
SpeedHubX_V2["6c"] = Instance.new("TextLabel", SpeedHubX_V2["62"]);
SpeedHubX_V2["6c"]["TextWrapped"] = true;
SpeedHubX_V2["6c"]["BorderSizePixel"] = 0;
SpeedHubX_V2["6c"]["TextScaled"] = true;
SpeedHubX_V2["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["6c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["6c"]["TextSize"] = 14;
SpeedHubX_V2["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["6c"]["LayoutOrder"] = 3;
SpeedHubX_V2["6c"]["Size"] = UDim2.new(0.9582196474075317, 0, 0.5971987247467041, 0);
SpeedHubX_V2["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["6c"]["Text"] = [[100]];
SpeedHubX_V2["6c"]["Name"] = [[Title]];
SpeedHubX_V2["6c"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["6c"]["Position"] = UDim2.new(0.023000000044703484, 0, 0.23100000619888306, 0);

-- SpeedHubX_V2ay.Folder.Slider.Description
SpeedHubX_V2["6d"] = Instance.new("TextLabel", SpeedHubX_V2["5e"]);
SpeedHubX_V2["6d"]["TextWrapped"] = true;
SpeedHubX_V2["6d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["6d"]["TextScaled"] = true;
SpeedHubX_V2["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["6d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["6d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["6d"]["TextSize"] = 14;
SpeedHubX_V2["6d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["6d"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.15457738935947418, 0);
SpeedHubX_V2["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["6d"]["Text"] = [[Changes your walkspeed.]];
SpeedHubX_V2["6d"]["Name"] = [[Description]];
SpeedHubX_V2["6d"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["6d"]["Position"] = UDim2.new(0.015759311616420746, 0, 0.7274229526519775, 0);

-- SpeedHubX_V2ay.Folder.Textbox
SpeedHubX_V2["6e"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["6e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["6e"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["6e"]["BackgroundTransparency"] = 0.4000000059604645;
SpeedHubX_V2["6e"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.2624756097793579, 0);
SpeedHubX_V2["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["6e"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.12373435497283936, 0);
SpeedHubX_V2["6e"]["Visible"] = false;
SpeedHubX_V2["6e"]["Name"] = [[Textbox]];

-- SpeedHubX_V2ay.Folder.Textbox.UICorner
SpeedHubX_V2["6f"] = Instance.new("UICorner", SpeedHubX_V2["6e"]);
SpeedHubX_V2["6f"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Textbox.UIGradient
SpeedHubX_V2["70"] = Instance.new("UIGradient", SpeedHubX_V2["6e"]);
SpeedHubX_V2["70"]["Rotation"] = 90;
SpeedHubX_V2["70"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(89, 89, 89)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 139, 139))};

-- SpeedHubX_V2ay.Folder.Textbox.Title
SpeedHubX_V2["71"] = Instance.new("TextLabel", SpeedHubX_V2["6e"]);
SpeedHubX_V2["71"]["TextWrapped"] = true;
SpeedHubX_V2["71"]["BorderSizePixel"] = 0;
SpeedHubX_V2["71"]["TextScaled"] = true;
SpeedHubX_V2["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["71"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["71"]["TextSize"] = 14;
SpeedHubX_V2["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["71"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.19094853103160858, 0);
SpeedHubX_V2["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["71"]["Text"] = [[Textbox]];
SpeedHubX_V2["71"]["Name"] = [[Title]];
SpeedHubX_V2["71"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["71"]["Position"] = UDim2.new(0.017191976308822632, 0, 0.10911344736814499, 0);

-- SpeedHubX_V2ay.Folder.Textbox.Description
SpeedHubX_V2["72"] = Instance.new("TextLabel", SpeedHubX_V2["6e"]);
SpeedHubX_V2["72"]["TextWrapped"] = true;
SpeedHubX_V2["72"]["BorderSizePixel"] = 0;
SpeedHubX_V2["72"]["TextScaled"] = true;
SpeedHubX_V2["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["72"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["72"]["TextSize"] = 14;
SpeedHubX_V2["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["72"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.15457738935947418, 0);
SpeedHubX_V2["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["72"]["Text"] = [[Input and yeah.]];
SpeedHubX_V2["72"]["Name"] = [[Description]];
SpeedHubX_V2["72"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["72"]["Position"] = UDim2.new(0.012893982231616974, 0, 0.7092373967170715, 0);

-- SpeedHubX_V2ay.Folder.Textbox.TextboxBar
SpeedHubX_V2["73"] = Instance.new("Frame", SpeedHubX_V2["6e"]);
SpeedHubX_V2["73"]["BorderSizePixel"] = 0;
SpeedHubX_V2["73"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["73"]["Size"] = UDim2.new(0.9684813618659973, 0, 0.29096919298171997, 0);
SpeedHubX_V2["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["73"]["Position"] = UDim2.new(0.014326647855341434, 0, 0.34552592039108276, 0);
SpeedHubX_V2["73"]["Name"] = [[TextboxBar]];

-- SpeedHubX_V2ay.Folder.Textbox.TextboxBar.UICorner
SpeedHubX_V2["74"] = Instance.new("UICorner", SpeedHubX_V2["73"]);
SpeedHubX_V2["74"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.Textbox.TextboxBar.UIGradient
SpeedHubX_V2["75"] = Instance.new("UIGradient", SpeedHubX_V2["73"]);
SpeedHubX_V2["75"]["Rotation"] = 90;
SpeedHubX_V2["75"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Textbox.TextboxBar.UIStroke
SpeedHubX_V2["76"] = Instance.new("UIStroke", SpeedHubX_V2["73"]);
SpeedHubX_V2["76"]["Color"] = Color3.fromRGB(40, 45, 62);

-- SpeedHubX_V2ay.Folder.Textbox.TextboxBar.ActualTextbox
SpeedHubX_V2["77"] = Instance.new("TextBox", SpeedHubX_V2["73"]);
SpeedHubX_V2["77"]["PlaceholderColor3"] = Color3.fromRGB(155, 155, 155);
SpeedHubX_V2["77"]["BorderSizePixel"] = 0;
SpeedHubX_V2["77"]["TextWrapped"] = true;
SpeedHubX_V2["77"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["77"]["TextScaled"] = true;
SpeedHubX_V2["77"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["77"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["77"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["77"]["PlaceholderText"] = [[Input Here...]];
SpeedHubX_V2["77"]["Size"] = UDim2.new(1, 0, 0.59375, 0);
SpeedHubX_V2["77"]["Selectable"] = false;
SpeedHubX_V2["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["77"]["Text"] = [[]];
SpeedHubX_V2["77"]["Position"] = UDim2.new(0, 0, 0.21875, 0);
SpeedHubX_V2["77"]["Name"] = [[ActualTextbox]];

-- SpeedHubX_V2ay.Folder.Toggle
SpeedHubX_V2["78"] = Instance.new("Frame", SpeedHubX_V2["30"]);
SpeedHubX_V2["78"]["Active"] = true;
SpeedHubX_V2["78"]["BorderSizePixel"] = 0;
SpeedHubX_V2["78"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["78"]["BackgroundTransparency"] = 0.4000000059604645;
SpeedHubX_V2["78"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.15495234727859497, 0);
SpeedHubX_V2["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["78"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.6786856055259705, 0);
SpeedHubX_V2["78"]["Visible"] = false;
SpeedHubX_V2["78"]["Name"] = [[Toggle]];

-- SpeedHubX_V2ay.Folder.Toggle.UICorner
SpeedHubX_V2["79"] = Instance.new("UICorner", SpeedHubX_V2["78"]);
SpeedHubX_V2["79"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Toggle.UIGradient
SpeedHubX_V2["7a"] = Instance.new("UIGradient", SpeedHubX_V2["78"]);
SpeedHubX_V2["7a"]["Rotation"] = 90;
SpeedHubX_V2["7a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(109, 109, 109)),ColorSequenceKeypoint.new(0.765, Color3.fromRGB(181, 181, 181)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(217, 217, 217))};

-- SpeedHubX_V2ay.Folder.Toggle.Title
SpeedHubX_V2["7b"] = Instance.new("TextLabel", SpeedHubX_V2["78"]);
SpeedHubX_V2["7b"]["TextWrapped"] = true;
SpeedHubX_V2["7b"]["BorderSizePixel"] = 0;
SpeedHubX_V2["7b"]["RichText"] = true;
SpeedHubX_V2["7b"]["TextScaled"] = true;
SpeedHubX_V2["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["7b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["7b"]["TextSize"] = 14;
SpeedHubX_V2["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["7b"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.323449969291687, 0);
SpeedHubX_V2["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["7b"]["Text"] = [[Toggle]];
SpeedHubX_V2["7b"]["Name"] = [[Title]];
SpeedHubX_V2["7b"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["7b"]["Position"] = UDim2.new(0.015759311616420746, 0, 0.18482854962348938, 0);

-- SpeedHubX_V2ay.Folder.Toggle.Description
SpeedHubX_V2["7c"] = Instance.new("TextLabel", SpeedHubX_V2["78"]);
SpeedHubX_V2["7c"]["TextWrapped"] = true;
SpeedHubX_V2["7c"]["BorderSizePixel"] = 0;
SpeedHubX_V2["7c"]["TextScaled"] = true;
SpeedHubX_V2["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["7c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["7c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["7c"]["TextSize"] = 14;
SpeedHubX_V2["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["7c"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.26184046268463135, 0);
SpeedHubX_V2["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["7c"]["Text"] = [[Toggle I and O xd]];
SpeedHubX_V2["7c"]["Name"] = [[Description]];
SpeedHubX_V2["7c"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["7c"]["Position"] = UDim2.new(0.011461318470537663, 0, 0.5852904319763184, 0);

-- SpeedHubX_V2ay.Folder.Toggle.Label
SpeedHubX_V2["7d"] = Instance.new("Frame", SpeedHubX_V2["78"]);
SpeedHubX_V2["7d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["7d"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["7d"]["Size"] = UDim2.new(0.03868212550878525, 0, 0.42860323190689087, 0);
SpeedHubX_V2["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["7d"]["Position"] = UDim2.new(0.92550128698349, 0, 0.27990657091140747, 0);
SpeedHubX_V2["7d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["7d"]["Name"] = [[Label]];

-- SpeedHubX_V2ay.Folder.Toggle.Label.UICorner
SpeedHubX_V2["7e"] = Instance.new("UICorner", SpeedHubX_V2["7d"]);
SpeedHubX_V2["7e"]["CornerRadius"] = UDim.new(0.33000001311302185, 0);

-- SpeedHubX_V2ay.Folder.Toggle.Label.UIGradient
SpeedHubX_V2["7f"] = Instance.new("UIGradient", SpeedHubX_V2["7d"]);
SpeedHubX_V2["7f"]["Rotation"] = 90;
SpeedHubX_V2["7f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Toggle.Label.UIStroke
SpeedHubX_V2["80"] = Instance.new("UIStroke", SpeedHubX_V2["7d"]);
SpeedHubX_V2["80"]["Color"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["80"]["Thickness"] = 2.4000000953674316;
SpeedHubX_V2["80"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- SpeedHubX_V2ay.Folder.Toggle.Label.Label
SpeedHubX_V2["81"] = Instance.new("TextButton", SpeedHubX_V2["7d"]);
SpeedHubX_V2["81"]["BorderSizePixel"] = 0;
SpeedHubX_V2["81"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["81"]["Selectable"] = false;
SpeedHubX_V2["81"]["Size"] = UDim2.new(1, 0, 1, 0);
SpeedHubX_V2["81"]["Name"] = [[Label]];
SpeedHubX_V2["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["81"]["Text"] = [[]];
SpeedHubX_V2["81"]["AutomaticSize"] = Enum.AutomaticSize.Y;
SpeedHubX_V2["81"]["BackgroundTransparency"] = 1;

-- SpeedHubX_V2ay.Folder.Toggle.Label.Label.UICorner
SpeedHubX_V2["82"] = Instance.new("UICorner", SpeedHubX_V2["81"]);
SpeedHubX_V2["82"]["CornerRadius"] = UDim.new(0.33000001311302185, 0);

-- SpeedHubX_V2ay.Folder.Toggle.Label.Label.UIGradient
SpeedHubX_V2["83"] = Instance.new("UIGradient", SpeedHubX_V2["81"]);
SpeedHubX_V2["83"]["Rotation"] = 90;
SpeedHubX_V2["83"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.Button
SpeedHubX_V2["84"] = Instance.new("TextButton", SpeedHubX_V2["30"]);
SpeedHubX_V2["84"]["BorderSizePixel"] = 0;
SpeedHubX_V2["84"]["AutoButtonColor"] = false;
SpeedHubX_V2["84"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["84"]["Selectable"] = false;
SpeedHubX_V2["84"]["Visible"] = false;
SpeedHubX_V2["84"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.15495234727859497, 0);
SpeedHubX_V2["84"]["Name"] = [[Button]];
SpeedHubX_V2["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["84"]["Text"] = [[]];
SpeedHubX_V2["84"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.6786856055259705, 0);
SpeedHubX_V2["84"]["BackgroundTransparency"] = 0.4000000059604645;

-- SpeedHubX_V2ay.Folder.Button.UICorner
SpeedHubX_V2["85"] = Instance.new("UICorner", SpeedHubX_V2["84"]);
SpeedHubX_V2["85"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Folder.Button.UIGradient
SpeedHubX_V2["86"] = Instance.new("UIGradient", SpeedHubX_V2["84"]);
SpeedHubX_V2["86"]["Rotation"] = 90;
SpeedHubX_V2["86"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(109, 109, 109)),ColorSequenceKeypoint.new(0.765, Color3.fromRGB(181, 181, 181)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(217, 217, 217))};

-- SpeedHubX_V2ay.Folder.Button.Title
SpeedHubX_V2["87"] = Instance.new("TextLabel", SpeedHubX_V2["84"]);
SpeedHubX_V2["87"]["TextWrapped"] = true;
SpeedHubX_V2["87"]["BorderSizePixel"] = 0;
SpeedHubX_V2["87"]["RichText"] = true;
SpeedHubX_V2["87"]["TextScaled"] = true;
SpeedHubX_V2["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["87"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["87"]["TextSize"] = 14;
SpeedHubX_V2["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["87"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.323449969291687, 0);
SpeedHubX_V2["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["87"]["Text"] = [[Button]];
SpeedHubX_V2["87"]["Name"] = [[Title]];
SpeedHubX_V2["87"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["87"]["Position"] = UDim2.new(0.015759311616420746, 0, 0.18482854962348938, 0);

-- SpeedHubX_V2ay.Folder.Button.Description
SpeedHubX_V2["88"] = Instance.new("TextLabel", SpeedHubX_V2["84"]);
SpeedHubX_V2["88"]["TextWrapped"] = true;
SpeedHubX_V2["88"]["BorderSizePixel"] = 0;
SpeedHubX_V2["88"]["TextScaled"] = true;
SpeedHubX_V2["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["88"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["88"]["TextSize"] = 14;
SpeedHubX_V2["88"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["88"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.26184046268463135, 0);
SpeedHubX_V2["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["88"]["Text"] = [[Hello! i'm a button :D]];
SpeedHubX_V2["88"]["Name"] = [[Description]];
SpeedHubX_V2["88"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["88"]["Position"] = UDim2.new(0.011461318470537663, 0, 0.5852904319763184, 0);

-- SpeedHubX_V2ay.Folder.DropdownButton
SpeedHubX_V2["89"] = Instance.new("TextButton", SpeedHubX_V2["30"]);
SpeedHubX_V2["89"]["Active"] = false;
SpeedHubX_V2["89"]["BorderSizePixel"] = 0;
SpeedHubX_V2["89"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["89"]["Selectable"] = false;
SpeedHubX_V2["89"]["Visible"] = false;
SpeedHubX_V2["89"]["Size"] = UDim2.new(0.9995859265327454, 0, 0.17368526756763458, 0);
SpeedHubX_V2["89"]["Name"] = [[DropdownButton]];
SpeedHubX_V2["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["89"]["Position"] = UDim2.new(0.08656254410743713, 0, 0, 0);

-- SpeedHubX_V2ay.Folder.DropdownButton.UICorner
SpeedHubX_V2["8a"] = Instance.new("UICorner", SpeedHubX_V2["89"]);
SpeedHubX_V2["8a"]["CornerRadius"] = UDim.new(0.20000000298023224, 0);

-- SpeedHubX_V2ay.Folder.DropdownButton.UIGradient
SpeedHubX_V2["8b"] = Instance.new("UIGradient", SpeedHubX_V2["89"]);
SpeedHubX_V2["8b"]["Rotation"] = 90;
SpeedHubX_V2["8b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(117, 117, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- SpeedHubX_V2ay.Folder.DropdownButton.UIStroke
SpeedHubX_V2["8c"] = Instance.new("UIStroke", SpeedHubX_V2["89"]);
SpeedHubX_V2["8c"]["Color"] = Color3.fromRGB(40, 45, 62);

-- SpeedHubX_V2ay.Folder.DropdownButton.name
SpeedHubX_V2["8d"] = Instance.new("TextLabel", SpeedHubX_V2["89"]);
SpeedHubX_V2["8d"]["TextWrapped"] = true;
SpeedHubX_V2["8d"]["BorderSizePixel"] = 0;
SpeedHubX_V2["8d"]["TextScaled"] = true;
SpeedHubX_V2["8d"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
SpeedHubX_V2["8d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["8d"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["8d"]["TextColor3"] = Color3.fromRGB(160, 160, 160);
SpeedHubX_V2["8d"]["Size"] = UDim2.new(1, 0, 0.59375, 0);
SpeedHubX_V2["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["8d"]["Text"] = [[none]];
SpeedHubX_V2["8d"]["Name"] = [[name]];
SpeedHubX_V2["8d"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["8d"]["Position"] = UDim2.new(0, 0, 0.21875, 0);

-- SpeedHubX_V2ay.Button
SpeedHubX_V2["8e"] = Instance.new("TextButton", SpeedHubX_V2["1"]);
SpeedHubX_V2["8e"]["BorderSizePixel"] = 0;
SpeedHubX_V2["8e"]["AutoButtonColor"] = false;
SpeedHubX_V2["8e"]["BackgroundColor3"] = Color3.fromRGB(40, 45, 62);
SpeedHubX_V2["8e"]["Selectable"] = false;
SpeedHubX_V2["8e"]["Visible"] = false;
SpeedHubX_V2["8e"]["Size"] = UDim2.new(0.9614325165748596, 0, 0.15495234727859497, 0);
SpeedHubX_V2["8e"]["Name"] = [[Button]];
SpeedHubX_V2["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["8e"]["Text"] = [[]];
SpeedHubX_V2["8e"]["Position"] = UDim2.new(0.019283747300505638, 0, 0.6786856055259705, 0);
SpeedHubX_V2["8e"]["BackgroundTransparency"] = 0.4000000059604645;

-- SpeedHubX_V2ay.Button.UICorner
SpeedHubX_V2["8f"] = Instance.new("UICorner", SpeedHubX_V2["8e"]);
SpeedHubX_V2["8f"]["CornerRadius"] = UDim.new(0.03999999910593033, 0);

-- SpeedHubX_V2ay.Button.UIGradient
SpeedHubX_V2["90"] = Instance.new("UIGradient", SpeedHubX_V2["8e"]);
SpeedHubX_V2["90"]["Rotation"] = 90;
SpeedHubX_V2["90"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(109, 109, 109)),ColorSequenceKeypoint.new(0.765, Color3.fromRGB(181, 181, 181)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(217, 217, 217))};

-- SpeedHubX_V2ay.Button.Title
SpeedHubX_V2["91"] = Instance.new("TextLabel", SpeedHubX_V2["8e"]);
SpeedHubX_V2["91"]["TextWrapped"] = true;
SpeedHubX_V2["91"]["BorderSizePixel"] = 0;
SpeedHubX_V2["91"]["RichText"] = true;
SpeedHubX_V2["91"]["TextScaled"] = true;
SpeedHubX_V2["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["91"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["91"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
SpeedHubX_V2["91"]["TextSize"] = 14;
SpeedHubX_V2["91"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["91"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.323449969291687, 0);
SpeedHubX_V2["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["91"]["Text"] = [[Button]];
SpeedHubX_V2["91"]["Name"] = [[Title]];
SpeedHubX_V2["91"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["91"]["Position"] = UDim2.new(0.015759311616420746, 0, 0.18482854962348938, 0);

-- SpeedHubX_V2ay.Button.Description
SpeedHubX_V2["92"] = Instance.new("TextLabel", SpeedHubX_V2["8e"]);
SpeedHubX_V2["92"]["TextWrapped"] = true;
SpeedHubX_V2["92"]["BorderSizePixel"] = 0;
SpeedHubX_V2["92"]["TextScaled"] = true;
SpeedHubX_V2["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["92"]["TextXAlignment"] = Enum.TextXAlignment.Left;
SpeedHubX_V2["92"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
SpeedHubX_V2["92"]["TextSize"] = 14;
SpeedHubX_V2["92"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
SpeedHubX_V2["92"]["Size"] = UDim2.new(0.9656160473823547, 0, 0.26184046268463135, 0);
SpeedHubX_V2["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
SpeedHubX_V2["92"]["Text"] = [[Hello! i'm a button :D]];
SpeedHubX_V2["92"]["Name"] = [[Description]];
SpeedHubX_V2["92"]["BackgroundTransparency"] = 1;
SpeedHubX_V2["92"]["Position"] = UDim2.new(0.011461318470537663, 0, 0.5852904319763184, 0);

-- SpeedHubX_V2ay.Library
SpeedHubX_V2["93"] = Instance.new("ModuleScript", SpeedHubX_V2["1"]);
SpeedHubX_V2["93"]["Name"] = [[Library]];

-- Require SpeedHubX_V2 wrapper
local SpeedHubX_V2_REQUIRE = require;
local SpeedHubX_V2_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = SpeedHubX_V2_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return SpeedHubX_V2_REQUIRE(Module);
end

SpeedHubX_V2_MODULES[SpeedHubX_V2["93"]] = {
Closure = function()
    local script = SpeedHubX_V2["93"];
local UILIB = {}
local parent  = script.Parent
local reserved = parent.Folder
UILIB.__index = UILIB

local listening = false
local twServ = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local GlobalColor1 = Color3.fromRGB(39, 44, 61)
local GlobalColor2 = Color3.fromRGB(0, 255, 38)
local closed = false

parent.TopBar.ProfileMenu.PlayerProfile.TextLabel.Text = game:GetService("Players").LocalPlayer.DisplayName
parent.TopBar.ProfileMenu.PlayerProfile.ImageLabel.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)


function UILIB:Load(name, img, direction)
	local self = setmetatable({}, UILIB)
	task.spawn(function()
			local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.212, 0) })
			local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.23, 0,0.012, 0) })
			tw:Play()
			tw.Completed:Wait()
			task.wait(0.3)
			tw2:Play()
	end)
        task.spawn(function()
	     while true do
		task.wait(0.1)
		parent.TopBar.ProfileMenu.Clock.TextLabel.Text = os.date("%H:%m")
	     end
        end)
	parent.TopBar.ProfileMenu.Title.TextLabel.Text = name
	if img then
		parent.MainBar.Logo.Image = img
	elseif img == "Default" then

	else
		parent.MainBar.Logo.Image = ""
		end


	parent.TopBar.TopBarClose.MouseButton1Click:Connect(function()
		if closed == false then
			closed = true
			local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.612, 0) })
			local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.95, 0) })
			local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.173, 0) })
			local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 180 })

			tw:Play()
			tw.Completed:Wait()
			tw2:Play()
			task.wait(0.1)
			twRotate:Play()
			tw3:Play()
			
		elseif closed == true then
			closed = false
			local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.212, 0) })
			local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.52, 0) })
			local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.012, 0) })
			local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 0 })

			tw:Play()
			tw.Completed:Wait()
			tw2:Play()
			task.wait(0.1)
			twRotate:Play()
			tw3:Play()
		end
	end)


	function self:Open()
		local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.212, 0) })
		local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.52, 0) })
		local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.012, 0) })
		local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 0 })

		tw:Play()
		tw.Completed:Wait()
		tw2:Play()
		task.wait(0.1)
		twRotate:Play()
		tw3:Play()
	end

	function self:Close()
		local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.612, 0) })
		local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.95, 0) })
		local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.173, 0) })
		local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 180 })

		tw:Play()
		tw.Completed:Wait()
		tw2:Play()
		task.wait(0.1)
		twRotate:Play()
		tw3:Play()
	end
	function self:HideCloseButton()
		SpeedHubX_V2["1f"].Visible = false
	end
        function self:Hide()
		DDR["1"].Enabled = false
	end
	function self:Show()
		DDR["1"].Enabled = true
        end
	function self:Toggle()
		if closed == false then
			closed = true
			local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.612, 0) })
			local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.95, 0) })
			local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,-0.173, 0) })
			local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 180 })

			tw:Play()
			tw.Completed:Wait()
			tw2:Play()
			tw2.Completed:Wait()
			twRotate:Play()
			tw3:Play()
		elseif closed == true then
			closed = false
			local tw = twServ:Create(parent.MainBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.212, 0) })
			local tw3 = twServ:Create(parent.TopBar.TopBarClose, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.916, 0,0.52, 0) })
			local tw2 = twServ:Create(parent.TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Position = UDim2.new(0.23, 0,0.012, 0) })
			local twRotate = twServ:Create(parent.TopBar.TopBarClose.ImageLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Rotation = 0 })

			tw:Play()
			tw.Completed:Wait()
			tw2:Play()
			tw2.Completed:Wait()
			twRotate:Play()
			tw3:Play()
		end
	end
	function self:SetTheme(color, color2)
		for i,v in pairs(parent:GetChildren()) do
			if v:IsA("GuiObject") then
				pcall(function()
					if v.BackgroundColor3 == Color3.fromRGB(39, 44, 61) then
						v.BackgroundColor3 = color
						GlobalColor1 = color
					elseif v.BackgroundColor3 == Color3.fromRGB(0, 255, 38) then
						v.BackgroundColor3 = color2
						GlobalColor2 = color2
					end
				end)
			end
		end
	end

end











function UILIB.newTab(name, img)	
	local self = setmetatable({}, UILIB)

	local newTab = parent.Folder.TabReserved:Clone()
	newTab.Parent = parent.MainBar
	newTab.Name = name
	newTab.Visible = false

	local newTabBtn = parent.Folder.TabButtonReserved:Clone()
	newTabBtn.Parent = parent.TopBar.ScrollingFrame
	newTabBtn.Name = name or "Tab"..#parent.MainBar:GetChildren() - 4
	newTabBtn.Frame.TextLabel.Text = name
	if img then
		newTabBtn.ImageLabel.Image = img
	else
		newTabBtn.ImageLabel.Image = ""
	end
	newTabBtn.Visible = true

	newTabBtn.MouseButton1Click:Connect(function()
		for i,v in pairs(parent.TopBar.ScrollingFrame:GetChildren()) do
			if v:IsA("ImageButton") then
				local vTab = parent.MainBar:FindFirstChild(v.Name)
				if v.Name ~= name then
					local twBtn = twServ:Create(v, TweenInfo.new(0.2), { Transparency = 0.75})

					twBtn:Play()

					vTab.Visible = false
				elseif v.Name == name then
					vTab.Visible = true
					local twBtn = twServ:Create(v, TweenInfo.new(0.2), { Transparency = 0 })

					twBtn:Play()

				end

			end
		end
	end)

	function self.newButton(name, desc, func)
		local newbtn = reserved.Button:Clone()
		newbtn.Parent = newTab
		newbtn.Title.Text = name
		newbtn.Description.Text = desc
		newbtn.Visible = true
		newbtn.Name = name

		newbtn.MouseEnter:Connect(function()
			local twBtn = twServ:Create(newbtn, TweenInfo.new(0.2), { Transparency = 0 })

			twBtn:Play()
		end)
		newbtn.MouseLeave:Connect(function()
			local twBtn = twServ:Create(newbtn, TweenInfo.new(0.2), { Transparency = 0.4 })

			twBtn:Play()
		end)
		newbtn.MouseButton1Click:Connect(func)
	end

	function self.newLabel(text)
		local newLabel = reserved.Label:Clone()
		newLabel.Parent = newTab
		newLabel.Visible = true
		newLabel.Title.Text = text

		return newLabel.Title
	end

	function self.newInput(name, desc, func)
		local newInput = reserved.Textbox:Clone()
		local textbox = newInput.TextboxBar.ActualTextbox

		newInput.MouseEnter:Connect(function()
			local twBtn = twServ:Create(newInput, TweenInfo.new(0.2), { Transparency = 0 })

			twBtn:Play()
		end)
		newInput.MouseLeave:Connect(function()
			local twBtn = twServ:Create(newInput, TweenInfo.new(0.2), { Transparency = 0.4 })

			twBtn:Play()


		end)

		newInput.Visible = true
		newInput.Parent = newTab
		newInput.Title.Text = name
		newInput.Description.Text = desc
		newInput.Name = name

		textbox.FocusLost:Connect(function()
			func(textbox.Text)
		end)

	end

	function self.newKeybind(name, desc, func)
		local newKey = reserved.Keybind:Clone()


		newKey.MouseEnter:Connect(function()
			local twBtn = twServ:Create(newKey, TweenInfo.new(0.2), { Transparency = 0 })

			twBtn:Play()
		end)
		newKey.MouseLeave:Connect(function()
			local twBtn = twServ:Create(newKey, TweenInfo.new(0.2), { Transparency = 0.4 })

			twBtn:Play()
		end)
		newKey.Parent = newTab
		newKey.Title.Text = name
		newKey.Name = name
		newKey.Description.Text = desc
		newKey.Visible =  true

		local listening = false
		local a

		newKey.Bind.Button.MouseButton1Click:Connect(function()
			listening = true


			local function Loop()
				if listening then
					newKey.Bind.Button.Text = "."
				end

				task.wait(0.5)
				if listening then
					newKey.Bind.Button.Text = ".."
				end
				task.wait(0.5)
				if listening then
					newKey.Bind.Button.Text = "..."
				end
				task.wait(0.5)
			end

			task.spawn(function()
				while listening do
					Loop()
				end
			end)

			-- Connect the InputBegan event
			a = game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
				if input.UserInputType == Enum.UserInputType.Keyboard then
					newKey.Bind.Button.Text = input.KeyCode.Name
					listening = false
					a:Disconnect()
					func(input)
				elseif input.UserInputType == Enum.UserInputType.MouseButton1 or
					input.UserInputType == Enum.UserInputType.MouseButton2 or
					input.UserInputType == Enum.UserInputType.MouseButton3 then
					newKey.Bind.Button.Text = input.UserInputType.Name
					listening = false
					a:Disconnect()
					func(input)
				end
			end)
		end)
	end


	function self.newSlider(name, desc, max, manageSlider, func)
		local newSlider = reserved.Slider:Clone()

		newSlider.MouseEnter:Connect(function()
			local twBtn = twServ:Create(newSlider, TweenInfo.new(0.2), { Transparency = 0 })

			twBtn:Play()
		end)
		newSlider.MouseLeave:Connect(function()
			local twBtn = twServ:Create(newSlider, TweenInfo.new(0.2), { Transparency = 0.4 })

			twBtn:Play()
		end)
		newSlider.Visible = true
		newSlider.Name = name
		newSlider.Parent = newTab
		newSlider.Title.Text = name
		newSlider.Description.Text = desc

		local Mouse = game.Players.LocalPlayer:GetMouse()
		local tweenServ = twServ

		local Trigger = newSlider.ActualSlider.Trigger
		local Label = newSlider.ActualSlider.Title
		local Fill = newSlider.ActualSlider.Fill
		local Parent = newSlider.ActualSlider

		local perc
		local Percent
		local MouseDown = false
		local delayTw = 0.3

		local function Update()
			MouseDown = true
			repeat
				task.wait()
				Percent = math.clamp((Mouse.X - Parent.AbsolutePosition.X) / Parent.AbsoluteSize.X, 0, 1)
				perc = math.round(Percent * max)
				if manageSlider == false then
					Label.Text = perc
					func(perc)
				elseif manageSlider == true then
					Label.Text = perc
					func(perc, Label)
				end
				local tween = tweenServ:Create(Fill, TweenInfo.new(delayTw, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(Percent, 1) })
				tween:Play()
			until MouseDown == false
		end

		Trigger.MouseButton1Down:Connect(Update)

		UIS.InputEnded:Connect(function(input)
			if input.UserInputType ==  Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				MouseDown = false
			end
		end)

	end
	
	function self.newToggle(title, desc, toggle, func)
		local realToggle = toggle
		local newToggle = reserved.Toggle:Clone()
		newToggle.Parent = newTab
		newToggle.Name = title
		newToggle.Visible = true
		newToggle.Title.Text = title
		newToggle.Description.Text = desc
		
		
		newToggle.MouseEnter:Connect(function()
			local twBtn = twServ:Create(newToggle, TweenInfo.new(0.2), { Transparency = 0 })

			twBtn:Play()
		end)
		newToggle.MouseLeave:Connect(function()
			local twBtn = twServ:Create(newToggle, TweenInfo.new(0.2), { Transparency = 0.4 })

			twBtn:Play()
		end)
		
		
		if realToggle == true then
			newToggle.Label.BackgroundColor3 = GlobalColor2
		elseif realToggle == false then
			newToggle.Label.BackgroundColor3 = GlobalColor1
		end
		
		
		
		newToggle.Label.Label.MouseButton1Click:Connect(function()
			
			if realToggle == true then
				realToggle = false
				local twColorOn = twServ:Create(newToggle.Label, TweenInfo.new(0.2), { BackgroundColor3 = GlobalColor1 })
				twColorOn:Play()
				
				func(realToggle)
			elseif realToggle == false then
				realToggle = true
				local twColorOn = twServ:Create(newToggle.Label, TweenInfo.new(0.2), { BackgroundColor3 = GlobalColor2 })
				twColorOn:Play()
				
				func(realToggle)
			end
		end)
		
	end
	
	function self.newDropdown(name, desc, listTable, func)
		local newdd = reserved.Dropdown:Clone()
		newdd.Visible = true
		newdd.Parent = newTab
		
		newdd.Name = name
		newdd.Title.Text = name
		newdd.Description.Text = desc
		
		for i, list in ipairs(listTable) do
			local newddbtn = reserved.DropdownButton:Clone()
			newddbtn.Visible = true
			newddbtn.Parent = newdd.Box.ScrollingFrame

			newddbtn.Name = list
			newddbtn.name.Text = list
			task.spawn(function()
				newddbtn.MouseButton1Click:Connect(function()
					newdd.DropdownBar.Open.Text = list
					local twPos = twServ:Create(newdd.Box, TweenInfo.new(0.15), {Size = UDim2.new(0.97, 0,0, 0)})
					twPos:Play()
					twPos.Completed:Wait()
					newdd.Box.Visible = false
					func(list)
				end)
			end)
		end		
		
		newdd.DropdownBar.Trigger.MouseButton1Click:Connect(function()
			
			
			if newdd.Box.Visible == false then
				newdd.Box.Visible = true
				local twPos = twServ:Create(newdd.Box, TweenInfo.new(0.15), {Size = UDim2.new(0.97, 0,1.696, 0)})
				twPos:Play()
			elseif newdd.Box.Visible == true then
				local twPos = twServ:Create(newdd.Box, TweenInfo.new(0.15), {Size = UDim2.new(0.97, 0,0, 0)})
				twPos:Play()
				twPos.Completed:Wait()
				newdd.Box.Visible = false
			end
		end)
	end

	return self
end
return UILIB
end;
};
return require(SpeedHubX_V2["93"]);
