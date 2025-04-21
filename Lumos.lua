local Lumos = {}

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local function create(instanceType, props)
	local obj = Instance.new(instanceType)
	for i, v in pairs(props) do
		obj[i] = v
	end
	return obj
end

-- Create Main UI
function Lumos:CreateWindow(titleText)
	local ScreenGui = create("ScreenGui", {
		Name = "LumosUI",
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Parent = game:GetService("CoreGui")
	})

	local Main = create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 420, 0, 330),
		BackgroundColor3 = Color3.fromRGB(30, 30, 35),
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Parent = ScreenGui
	})
	create("UICorner", {CornerRadius = UDim.new(0, 12), Parent = Main})
	create("UIStroke", {Color = Color3.fromRGB(0, 255, 255), Thickness = 1.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Main})

	local Title = create("TextLabel", {
		Size = UDim2.new(1, 0, 0, 35),
		Text = titleText or "Lumos UI",
		TextColor3 = Color3.fromRGB(200, 255, 255),
		TextSize = 22,
		Font = Enum.Font.GothamSemibold,
		BackgroundTransparency = 1,
		Parent = Main
	})

	local TabsHolder = create("Frame", {
		Size = UDim2.new(0, 120, 1, -35),
		Position = UDim2.new(0, 0, 0, 35),
		BackgroundColor3 = Color3.fromRGB(20, 20, 25),
		Parent = Main
	})
	create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = TabsHolder})

	local PagesHolder = create("Frame", {
		Size = UDim2.new(1, -130, 1, -45),
		Position = UDim2.new(0, 130, 0, 45),
		BackgroundTransparency = 1,
		Parent = Main
	})

	local UIPageLayout = create("UIPageLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		EasingStyle = Enum.EasingStyle.Quart,
		EasingDirection = Enum.EasingDirection.Out,
		TweenTime = 0.3,
		Parent = PagesHolder
	})

	local function CreateTab(tabName)
		local tabButton = create("TextButton", {
			Size = UDim2.new(1, 0, 0, 30),
			Text = tabName,
			TextSize = 18,
			Font = Enum.Font.Gotham,
			TextColor3 = Color3.fromRGB(180, 255, 255),
			BackgroundTransparency = 1,
			Parent = TabsHolder
		})

		local tabPage = create("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Name = tabName,
			Parent = PagesHolder
		})

		tabButton.MouseButton1Click:Connect(function()
			UIPageLayout:JumpTo(tabPage)
		end)

		return tabPage
	end

	local function CreateSection(name, parent)
		local label = create("TextLabel", {
			Text = name,
			TextSize = 20,
			Font = Enum.Font.GothamBold,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 30),
			Parent = parent
		})

		local container = create("Frame", {
			Size = UDim2.new(1, 0, 1, -35),
			Position = UDim2.new(0, 0, 0, 30),
			BackgroundTransparency = 1,
			Parent = parent
		})

		create("UIListLayout", {
			Padding = UDim.new(0, 8),
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = container
		})

		return container
	end

	local function AddToggle(text, callback, parent)
		local toggleBtn = create("TextButton", {
			Text = text,
			TextSize = 18,
			Font = Enum.Font.Gotham,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Size = UDim2.new(1, 0, 0, 30),
			BackgroundColor3 = Color3.fromRGB(50, 50, 60),
			Parent = parent
		})
		create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = toggleBtn})
		local state = false
		toggleBtn.MouseButton1Click:Connect(function()
			state = not state
			toggleBtn.BackgroundColor3 = state and Color3.fromRGB(0, 200, 200) or Color3.fromRGB(50, 50, 60)
			pcall(callback, state)
		end)
	end

	local function AddButton(text, callback, parent)
		local button = create("TextButton", {
			Text = text,
			TextSize = 18,
			Font = Enum.Font.Gotham,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Size = UDim2.new(1, 0, 0, 30),
			BackgroundColor3 = Color3.fromRGB(40, 40, 45),
			Parent = parent
		})
		create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = button})
		button.MouseButton1Click:Connect(function()
			pcall(callback)
		end)
	end

	local function AddTextbox(placeholder, callback, parent)
		local box = create("TextBox", {
			PlaceholderText = placeholder,
			TextSize = 16,
			Font = Enum.Font.Gotham,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Size = UDim2.new(1, 0, 0, 30),
			BackgroundColor3 = Color3.fromRGB(35, 35, 40),
			Parent = parent
		})
		create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = box})
		box.FocusLost:Connect(function()
			pcall(callback, box.Text)
		end)
	end

	local function AddKeybind(label, defaultKey, callback, parent)
		local bindBtn = create("TextButton", {
			Text = label .. " [" .. defaultKey.Name .. "]",
			TextSize = 16,
			Font = Enum.Font.Gotham,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Size = UDim2.new(1, 0, 0, 30),
			BackgroundColor3 = Color3.fromRGB(40, 40, 50),
			Parent = parent
		})
		create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = bindBtn})
		local key = defaultKey
		bindBtn.MouseButton1Click:Connect(function()
			bindBtn.Text = label .. " [Press Key]"
			local input = UIS.InputBegan:Wait()
			if input.UserInputType == Enum.UserInputType.Keyboard then
				key = input.KeyCode
				bindBtn.Text = label .. " [" .. key.Name .. "]"
			end
		end)
		UIS.InputBegan:Connect(function(input)
			if input.KeyCode == key then
				pcall(callback)
			end
		end)
	end

	local function Notify(title, message)
		local note = create("TextLabel", {
			Text = title .. "\n" .. message,
			Size = UDim2.new(0, 240, 0, 60),
			BackgroundColor3 = Color3.fromRGB(0, 150, 150),
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 16,
			Font = Enum.Font.Gotham,
			Position = UDim2.new(0.5, -120, 1, 20),
			AnchorPoint = Vector2.new(0.5, 1),
			Parent = Main
		})
		create("UICorner", {CornerRadius = UDim.new(0, 8), Parent = note})
		wait(2)
		note:Destroy()
	end

	return {
		CreateTab = function(_, name)
			local page = CreateTab(name)
			return {
				CreateSection = function(_, title)
					local sectionFrame = CreateSection(title, page)
					return {
						CreateToggle = function(_, txt, cb) AddToggle(txt, cb, sectionFrame) end,
						CreateButton = function(_, txt, cb) AddButton(txt, cb, sectionFrame) end,
						CreateTextbox = function(_, ph, cb) AddTextbox(ph, cb, sectionFrame) end,
						CreateKeybind = function(_, lbl, key, cb) AddKeybind(lbl, key, cb, sectionFrame) end
					}
				end
			}
		end,
		Notify = Notify
	}
end

return Lumos
