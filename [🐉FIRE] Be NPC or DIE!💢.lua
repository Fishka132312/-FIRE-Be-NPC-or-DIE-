local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[🐉FIRE] Be NPC or DIE!💢", HidePremium = false, IntroText = "[🐉FIRE] Be NPC or DIE!💢", SaveConfig = false, ConfigFolder = "NPC"})

-------------------------UPDATE LOG--------------------------------------
local Tab = Window:MakeTab({
	Name = "Update Log",
	Icon = "rbxassetid://9180622670",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "📜 Update Log"
})

local Section = Tab:AddSection({
	Name = "2.3.2 (B) January 11"
})

local Section = Tab:AddSection({
	Name = "> 🎄 **Christmas event ended**"
})

local Section = Tab:AddSection({
	Name = "- ❌ AutoFarm Event is no longer active."
})

local Section = Tab:AddSection({
	Name = "- 💰 **New feature**: **Auto Farm Cash** added for easier farming."
})

local Section = Tab:AddSection({
	Name = "- ⚡ **Improved Task Speed**: Tasks are now completed faster."
})

local Section = Tab:AddSection({
	Name = "- ⏳ **Auto Quest**: Coming soon."
})

local Section = Tab:AddSection({
	Name = "🚀 **Stay tuned for updates!**"
})

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

-------------------------AUTO TASK--------------------------------------
local Tab = Window:MakeTab({
	Name = "Auto Task",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Task"
})

Tab:AddButton({
	Name = "Auto Task",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/loop.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Script (If first doesn't work)",
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
	Name = "Auto Obby",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Fishka132312/-FIRE-Be-NPC-or-DIE-/refs/heads/main/Obby.lua'))()
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
	Name = "Quest",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Coming Soon"
})

-------------------------MISC--------------------------------------
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Misc"
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
		local Player = game.Players.LocalPlayer
local Camera = workspace.CurrentCamera

local maxZoomDistance = 1000
local minZoomDistance = 0.5

Player.CameraMaxZoomDistance = maxZoomDistance
Player.CameraMinZoomDistance = minZoomDistance

local function overrideCameraLimits()
    Player.CameraMaxZoomDistance = maxZoomDistance
    Player.CameraMinZoomDistance = minZoomDistance
end

Player:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(overrideCameraLimits)
Player:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(overrideCameraLimits)
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

Tab:AddButton({
	Name = "Infiniteyield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source'))()
  	end    
})


OrionLib:Init()
