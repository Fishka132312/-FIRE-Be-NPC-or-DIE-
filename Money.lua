local player = game.Players.LocalPlayer

-- Функция для телепортации персонажа к Peppermint
local function teleportToCash()
    while true do
        -- Проверяем, существует ли объект Peppermint в коллекции CollectableItems
        local cash = game.Workspace.CollectableItems:FindFirstChild("Cash")
        
        -- Если объект найден, телепортируем игрока
        if cash then
            wait(0.5)  -- Ждем 1 секунду перед телепортацией
            player.Character.HumanoidRootPart.CFrame = cash.CFrame  -- Телепортируем персонажа
        end
        
        wait(1)  -- Пауза между проверками, чтобы не перегружать процессор
    end
end

-- Запускаем функцию для телепортации в цикле
teleportToCash()
