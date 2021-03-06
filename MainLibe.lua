local lib = {}
local TweenService = game:GetService("TweenService")
local DefaultGrey = Color3.fromRGB(115, 115, 115)


function lib:CreateWindow(title,bottomtext)
	local Gist = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local SideBarGlow = Instance.new("ImageLabel")
	local SideBar = Instance.new("Frame")
	local TopPiece = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local BOTTOM = Instance.new("TextLabel")
	local TabList = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Tabs = Instance.new("Frame")

	Gist.Name = "Gist"
	Gist.Parent = game.CoreGui
	Gist.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Gist
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 0.500
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 800, 0, 600)

	UICorner.Parent = Main

	SideBarGlow.Name = "SideBarGlow"
	SideBarGlow.Parent = Main
	SideBarGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SideBarGlow.BackgroundTransparency = 1.000
	SideBarGlow.BorderSizePixel = 0
	SideBarGlow.Position = UDim2.new(-0.0225000009, 0, -0.0633333325, 0)
	SideBarGlow.Size = UDim2.new(0, 282, 0, 681)
	SideBarGlow.Image = "rbxassetid://4996891970"
	SideBarGlow.ImageColor3 = Color3.fromRGB(0, 0, 0)

	SideBar.Name = "SideBar"
	SideBar.Parent = Main
	SideBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	SideBar.BackgroundTransparency = 0.850
	SideBar.BorderSizePixel = 0
	SideBar.Size = UDim2.new(0, 250, 0, 600)

	TopPiece.Name = "TopPiece"
	TopPiece.Parent = SideBar
	TopPiece.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TopPiece.BackgroundTransparency = 0.900
	TopPiece.BorderSizePixel = 0
	TopPiece.Size = UDim2.new(0, 250, 0, 120)

	Title.Name = "Title"
	Title.Parent = TopPiece
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 250, 0, 69)
	Title.Font = Enum.Font.SourceSans
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	BOTTOM.Name = "BOTTOM"
	BOTTOM.Parent = TopPiece
	BOTTOM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BOTTOM.BackgroundTransparency = 1.000
	BOTTOM.BorderSizePixel = 0
	BOTTOM.Position = UDim2.new(0, 0, 0.474999994, 0)
	BOTTOM.Size = UDim2.new(0, 250, 0, 41)
	BOTTOM.Font = Enum.Font.SourceSans
	BOTTOM.Text = bottomtext
	BOTTOM.TextColor3 = Color3.fromRGB(185, 185, 185)
	BOTTOM.TextScaled = true
	BOTTOM.TextSize = 14.000
	BOTTOM.TextWrapped = true

	TabList.Name = "TabList"
	TabList.Parent = SideBar
	TabList.Active = true
	TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabList.BackgroundTransparency = 1.000
	TabList.BorderSizePixel = 0
	TabList.Position = UDim2.new(0, 0, 0.200000003, 0)
	TabList.Size = UDim2.new(0, 250, 0, 466)
	TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabList.ScrollBarThickness = 0

	UIListLayout.Parent = TabList
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.0199999996, 0)

	Tabs.Name = "Tabs"
	Tabs.Parent = Main
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0.330000013, 0, 0.0166666675, 0)
	Tabs.Size = UDim2.new(0, 530, 0, 579)


	local function FIQQ_fake_script() -- TabList.AutoResize 
		local script = Instance.new('LocalScript', TabList)

		
		while wait(0.01) do
			local Canvas = script.Parent
			local Constraint = script.Parent.UIListLayout
			Canvas.CanvasSize = UDim2.new(0, Constraint.AbsoluteContentSize.X, 0, Constraint.AbsoluteContentSize.Y)
		end
	end
	coroutine.wrap(FIQQ_fake_script)()

	local tabs = {}

	function tabs:CreateTab(name)
		local TabButton = Instance.new("TextButton")
		local TabBeingCreated = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TabButton.Name = "Tab"
		TabButton.Parent = TabList
		TabButton.BackgroundColor3 = Color3.fromRGB(8, 156, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(0, 250, 0, 50)
		TabButton.Font = Enum.Font.SourceSans
		TabButton.Text = name
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.TextScaled = true
		TabButton.TextSize = 14.000
		TabButton.TextWrapped = true

		TabBeingCreated.Name = "TabFrameContainer"
		TabBeingCreated.Parent = Tabs
		TabBeingCreated.Active = true
		TabBeingCreated.Visible = false
		TabBeingCreated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabBeingCreated.BackgroundTransparency = 1.000
		TabBeingCreated.BorderSizePixel = 0
		TabBeingCreated.Size = UDim2.new(0, 530, 0, 579)
		TabBeingCreated.CanvasSize = UDim2.new(0, 0, 0, 0)
		TabBeingCreated.ScrollBarThickness = 0

		UIListLayout_2.Parent = TabBeingCreated
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0.0199999996, 0)

		TabButton.MouseButton1Down:Connect(function()
			for l,Container in pairs(Tabs:GetChildren()) do
				if Container.Name == "TabFrameContainer" then
					Container.Visible = false
				end
				TabBeingCreated.Visible = true
			end
			for l,tablistv in pairs(TabList:GetChildren()) do
				if tablistv.Name == "Tab" then
					TweenService:Create(tablistv,TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{BackgroundTransparency = 1}):Play()
					TweenService:Create(TabButton,TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{BackgroundTransparency = 0.4}):Play()
				end
			end
		end)

		local function OYJMBMJ_fake_script() -- TabBeingCreated.AutoResize 
			local script = Instance.new('LocalScript', TabBeingCreated)

			
			while wait(0.01) do
				local Canvas = script.Parent
				local Constraint = script.Parent.UIListLayout
				Canvas.CanvasSize = UDim2.new(0, Constraint.AbsoluteContentSize.X, 0, Constraint.AbsoluteContentSize.Y)
			end
		end
		coroutine.wrap(OYJMBMJ_fake_script)()

		local objects = {}

		function objects:CreateLine()

			local LineTemplate = Instance.new("Frame")
			local LineCorner = Instance.new("UICorner")

			LineTemplate.Name = "LineTemplate"
			LineTemplate.Parent = TabBeingCreated
			LineTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LineTemplate.BackgroundTransparency = 0.750
			LineTemplate.BorderSizePixel = 0
			LineTemplate.Position = UDim2.new(0.00377358496, 0, 0.417512923, 0)
			LineTemplate.Size = UDim2.new(0, 526, 0, 15)

			LineCorner.Name = "LineCorner"
			LineCorner.Parent = LineTemplate
			
		end

		function objects:CreateButton(name, callback)

			local ButtonTemplate = Instance.new("TextButton")
			local SmallCircle = Instance.new("Frame")
			local SmallCircleCorner = Instance.new("UICorner")
			local ButtonCorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")

			ButtonTemplate.Name = "ButtonTemplate"
			ButtonTemplate.Parent = TabBeingCreated
			ButtonTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ButtonTemplate.BackgroundTransparency = 0.750
			ButtonTemplate.BorderSizePixel = 0
			ButtonTemplate.Size = UDim2.new(0, 526, 0, 60)
			ButtonTemplate.Font = Enum.Font.SourceSans
			ButtonTemplate.Text = ""
			ButtonTemplate.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonTemplate.TextSize = 14.000

			SmallCircle.Name = "SmallCircle"
			SmallCircle.Parent = ButtonTemplate
			SmallCircle.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
			SmallCircle.BorderSizePixel = 0
			SmallCircle.Position = UDim2.new(0.0285171103, 0, 0.300000012, 0)
			SmallCircle.Size = UDim2.new(0, 24, 0, 24)

			SmallCircleCorner.CornerRadius = UDim.new(1, 8)
			SmallCircleCorner.Name = "SmallCircleCorner"
			SmallCircleCorner.Parent = SmallCircle

			ButtonCorner.Name = "ButtonCorner"
			ButtonCorner.Parent = ButtonTemplate

			Title.Name = "Title"
			Title.Parent = ButtonTemplate
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.0912547559, 0, 0, 0)
			Title.Size = UDim2.new(0, 478, 0, 60)
			Title.Font = Enum.Font.SourceSans
			Title.Text = name
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 40.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			ButtonTemplate.MouseButton1Down:Connect(function()
				pcall(callback)
			end)

		end

		function objects:CreateToggle(name, callback)

			local Toggled = false

			local ToggleTemplate = Instance.new("TextButton")
			local SmallCircle = Instance.new("Frame")
			local SmallCircleCorner = Instance.new("UICorner")
			local ToggleCorner = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local ToggleFrame = Instance.new("Frame")
			local ToggleFrameCorner = Instance.new("UICorner")
			local ToggleCircle = Instance.new("Frame")
			local ToggleCircleCorner = Instance.new("UICorner")

			ToggleTemplate.Name = "ToggleTemplate"
			ToggleTemplate.Parent = TabBeingCreated
			ToggleTemplate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ToggleTemplate.BackgroundTransparency = 0.750
			ToggleTemplate.BorderSizePixel = 0
			ToggleTemplate.Size = UDim2.new(0, 526, 0, 60)
			ToggleTemplate.Font = Enum.Font.SourceSans
			ToggleTemplate.Text = ""
			ToggleTemplate.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleTemplate.TextSize = 14.000

			SmallCircle.Name = "SmallCircle"
			SmallCircle.Parent = ToggleTemplate
			SmallCircle.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
			SmallCircle.BorderSizePixel = 0
			SmallCircle.Position = UDim2.new(0.0285171103, 0, 0.300000012, 0)
			SmallCircle.Size = UDim2.new(0, 24, 0, 24)

			SmallCircleCorner.CornerRadius = UDim.new(1, 8)
			SmallCircleCorner.Name = "SmallCircleCorner"
			SmallCircleCorner.Parent = SmallCircle

			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = ToggleTemplate

			Title.Name = "Title"
			Title.Parent = ToggleTemplate
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Position = UDim2.new(0.0912547559, 0, 0, 0)
			Title.Size = UDim2.new(0, 384, 0, 60)
			Title.Font = Enum.Font.SourceSans
			Title.Text = name
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 40.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			ToggleFrame.Name = "ToggleFrame"
			ToggleFrame.Parent = ToggleTemplate
			ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleFrame.BorderSizePixel = 0
			ToggleFrame.Position = UDim2.new(0.844106436, 0, 0.300000012, 0)
			ToggleFrame.Size = UDim2.new(0, 65, 0, 24)

			ToggleFrameCorner.CornerRadius = UDim.new(1, 8)
			ToggleFrameCorner.Name = "ToggleFrameCorner"
			ToggleFrameCorner.Parent = ToggleFrame

			ToggleCircle.Name = "ToggleCircle"
			ToggleCircle.Parent = ToggleFrame
			ToggleCircle.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
			ToggleCircle.BorderSizePixel = 0
			ToggleCircle.Position = UDim2.new(0, 0, -0.208333328, 0)
			ToggleCircle.Size = UDim2.new(0, 33, 0, 33)

			ToggleCircleCorner.CornerRadius = UDim.new(1, 8)
			ToggleCircleCorner.Name = "ToggleCircleCorner"
			ToggleCircleCorner.Parent = ToggleCircle

			ToggleTemplate.MouseButton1Down:Connect(function()
				if Toggled == false then
					ToggleCircle:TweenPosition(UDim2.new(0.492, 0,-0.208, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .3, true)
					TweenService:Create(ToggleCircle,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(8, 156, 255)}):Play()
				else
					ToggleCircle:TweenPosition(UDim2.new(0, 0,-0.208, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, .3, true)
					TweenService:Create(ToggleCircle,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = DefaultGrey}):Play()
				end
				Toggled = not Toggled
				pcall(callback, Toggled)
			end)

		end

		return objects
	end
	
	return tabs
end

return lib
