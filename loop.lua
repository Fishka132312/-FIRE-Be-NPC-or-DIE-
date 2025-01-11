local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[🐉FIRE] Be NPC or DIE!💢", HidePremium = false, IntroText = "[🐉FIRE] Be NPC or DIE!💢", SaveConfig = false, ConfigFolder = "NPC"})

-------------------------AUTO FARM--------------------------------------
local Tab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Event"
})

Tab:AddButton({
	Name = "Autofarm Event (No event yet)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/Candy.lua'))()
  	end    
})

local Section = Tab:AddSection({
	Name = "Normal"
})

Tab:AddButton({
	Name = "Farm Cash",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/Money.lua'))()  
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

Tab:AddButton({
	Name = "Script",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/BeNpcOrDie"))(
   'More scripts: t.me/arceusxscripts'
)
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

Tab:AddButton({
	Name = "Obby",
	Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-296.787506, 9.15189934, -713.220703, 0, 0, -1, 0, 1, 0, 1, 0, 0)
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
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.016006, 22.6000004, -749.546021, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end    
})

Tab:AddButton({
	Name = "Man Deerman🦌",
	Callback = function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-168.57608, 41.3938103, -756.258972, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end    
})

-------------------------QUEST--------------------------------------
local Tab = Window:MakeTab({
	Name = "QUEST",
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

Tab:AddButton({
	Name = "Script",
	Callback = function()
		getgenv().auto_collect = true -- false/true

loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/bnod_ap"))(
    'More scripts: t.me/arceusxscripts'
)
  	end    
})

Tab:AddButton({
	Name = "Anti AFK",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/luca5432/Roblox-ANTI-AFK-SCRIPT/refs/heads/main/Script'))()
  	end    
})

Tab:AddButton({
	Name = "Anti LAG",
	Callback = function()
		workspace.Lobby.Seats:Destroy()
wait(0.1)
workspace.Lobby.PurchaseStands:Destroy()
wait(0.1)
workspace.Lobby.WinterDetail:Destroy()
wait(0.1)
workspace.Lobby.Detail.TreesWinter:Destroy()
wait(0.1)
workspace.Lobby.LimitedBooth:Destroy()
wait(0.1)
workspace.Lobby.PurchaseAll3:Destroy()
wait(0.1)
workspace.Lobby.SheriffChancePurchaseBoard:Destroy()
wait(0.1)
workspace.Lobby.ServerPortals:Destroy()
wait(0.1)
workspace.Lobby.EasterEggs:Destroy()
wait(0.1)
workspace.Lobby.Detail.ProServerStation:Destroy()
wait(0.1)
workspace.Lobby.Detail:GetChildren()[27]:Destroy()
wait(0.1)
workspace.Lobby.Detail.TreesNormal:Destroy()
wait(0.1)
workspace.Lobby.DoubleCashAndXPPurchaseBoard:Destroy()
wait(0.1)
workspace.Lobby.GlobalLeaderboard:Destroy()
wait(0.1)
workspace.Lobby.ServerLeaderboard:Destroy()
wait(0.1)
workspace.Lobby.Detail.TradeTower:Destroy()
wait(0.1)
workspace.Lobby.Detail:GetChildren()[39]:Destroy()
wait(0.1)
workspace.Lobby.Detail:Destroy()
wait(0.1)
workspace.Lobby.PirateSetPurchaseStand:Destroy()
wait(0.1)
workspace.Lobby.DoubleVotes:Destroy()
  	end    
})


OrionLib:Init()
