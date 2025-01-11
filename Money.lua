local player = game.Players.LocalPlayer

local function teleportToCash()
    while true do
        local cash = game.Workspace.CollectableItems:FindFirstChild("Cash")
        
        if cash then
            wait(0.5)
            player.Character.HumanoidRootPart.CFrame = cash.CFrame
        end
        
        wait(0.5)
    end
end

teleportToCash()
