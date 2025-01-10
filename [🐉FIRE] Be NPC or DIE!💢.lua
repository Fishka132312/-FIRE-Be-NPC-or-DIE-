local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[🐉FIRE] Be NPC or DIE!💢", HidePremium = false, IntroText = "[🐉FIRE] Be NPC or DIE!💢", SaveConfig = false, ConfigFolder = "NPC"})

-------------------------AUTO FARM--------------------------------------
local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Farm"
})

Tab:AddButton({
	Name = "Autofarm Candy 1",
	Callback = function()
        getgenv().auto_collect = true -- false/true

loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/bnod_ap"))(
    'More scripts: t.me/arceusxscripts'
)
  	end    
})

local Section = Tab:AddSection({
	Name = "Test"
})

local autofarmEnabled = false

Tab:AddToggle({
	Name = "Autofarm Candy",
	Default = false,
	Callback = function(Value)
		autofarmEnabled = Value
		if autofarmEnabled then
			spawn(function()
				while autofarmEnabled do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CollectableItems.Peppermint.CFrame
					wait(0.5)
				end
			end)
		end
	end    
})

local autofarmlobby = false

Tab:AddToggle({
	Name = "In lobby",
	Default = false,
	Callback = function(Value)
		autofarmEnabled = Value
		if autofarmlobby then
			spawn(function()
				while autofarmlobby do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CollectableItems.Peppermint_20x.CFrame
					wait(0.5)
				end
			end)
		end
	end    
})

-------------------------TASK--------------------------------------
local Tab = Window:MakeTab({
	Name = "Auto Task",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Auto Task",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/loop.lua'))()
  	end    
})

-------------------------OBBY--------------------------------------
local Tab = Window:MakeTab({
	Name = "Obby",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Obby"
})

local Obby = false

Tab:AddToggle({
	Name = "Obby",
	Default = false,
	Callback = function(Value)
		autofarmEnabled = Value
		if Obby then
			spawn(function()
				while Obby do
					game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-296.787506, 9.15189934, -713.220703, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					wait(300)
				end
			end)
		end
	end    
})

-------------------------TELEPORT--------------------------------------
local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Christmas🎄"
})

Tab:AddButton({
	Name = "Jack Frost❄️",
	Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.96582, 8.12671852, -749.145386, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end    
})
Tab:AddButton({
	Name = "Blissful Baker🍪",
	Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.96582, 8.12671852, -749.145386, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end    
})

Tab:AddButton({
	Name = "Man Deerman🦌",
	Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168.57608, 41.3938103, -756.258972, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end    
})

-------------------------MISC--------------------------------------
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Speed",
	Callback = function()
        while true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
            wait(0.1)
        end
  	end    
})

Tab:AddButton({
	Name = "Zoom",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/Zoom.lua'))()
  	end    
})



OrionLib:Init()
