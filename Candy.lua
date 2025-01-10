local player = game.Players.LocalPlayer

-- Функция для телепортации персонажа к Peppermint
local function teleportToPeppermint()
    while true do
        -- Проверяем, существует ли объект Peppermint в коллекции CollectableItems
        local peppermint = game.Workspace.CollectableItems:FindFirstChild("Peppermint")
        
        -- Если объект найден, телепортируем игрока
        if peppermint then
            wait(0.5)  -- Ждем 1 секунду перед телепортацией
            player.Character.HumanoidRootPart.CFrame = peppermint.CFrame  -- Телепортируем персонажа
        end
        
        wait(1)  -- Пауза между проверками, чтобы не перегружать процессор
    end
end

-- Запускаем функцию для телепортации в цикле
teleportToPeppermint()
