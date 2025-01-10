local player = game.Players.LocalPlayer

-- Функция для обновления позиции персонажа
local function updateCharacter()
    while true do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            -- Обновление позиции HumanoidRootPart персонажа на позицию Peppermint_20x
            player.Character.HumanoidRootPart.CFrame = game.Workspace.CollectableItems.Peppermint_20x.CFrame
        end
        wait(1)
    end
end

-- Обработчик на смену персонажа (когда персонаж умирает или респаунится)
player.CharacterAdded:Connect(function()
    -- Ждем немного, чтобы персонаж точно появился
    wait(1)
    updateCharacter()
end)

-- Если персонаж уже существует, запускаем скрипт сразу
if player.Character then
    updateCharacter()
end
