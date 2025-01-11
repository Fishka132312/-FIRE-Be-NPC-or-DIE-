local player = game.Players.LocalPlayer

local function teleportToCash()
    while true do
        local cash = game.Workspace.CollectableItems:FindFirstChild("Cash")
        
        if cash then
            -- Используем CFrame, чтобы точно телепортировать персонажа к объекту
            player.Character.HumanoidRootPart.CFrame = cash.CFrame
            
            -- Ждем некоторое время, чтобы не телепортировать слишком быстро
            wait(0.5)
        else
            -- Если объект "Cash" не найден, ждем немного и пробуем снова
            wait(1)
        end
    end
end

teleportToCash()
