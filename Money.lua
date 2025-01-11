local player = game.Players.LocalPlayer

local function teleportToCash()
    while wait(1) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local cash = game.Workspace.CollectableItems:FindFirstChild("Cash")
            
            if cash then
                player.Character.HumanoidRootPart.CFrame = cash.CFrame
                
                wait(0.5)
            end
        else
            warn("Персонаж недоступен, ожидаем...")
            wait(2)
        end
    end
end

teleportToCash()
