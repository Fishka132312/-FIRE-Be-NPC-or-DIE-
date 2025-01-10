local player = game.Players.LocalPlayer

-- Функция для телепортации персонажа к Peppermint_20x
local function teleportToPeppermint20x()
    while true do
        -- Проверяем, существует ли объект Peppermint_20x в коллекции CollectableItems
        local peppermint20x = game.Workspace.CollectableItems:FindFirstChild("Peppermint_20x")
        
        -- Если объект найден, телепортируем игрока
        if peppermint20x then
            wait(1)  -- Ждем 1 секунду перед телепортацией
            player.Character.HumanoidRootPart.CFrame = peppermint20x.CFrame  -- Телепортируем персонажа
        end
        
        wait(1)  -- Пауза между проверками, чтобы не перегружать процессор
    end
end

-- Запускаем функцию для телепортации в цикле
teleportToPeppermint20x()
