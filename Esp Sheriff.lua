-- Ссылка на Workspace
local workspace = game:GetService("Workspace")
-- Ссылка на сервис Players
local players = game:GetService("Players")

-- Функция для создания Highlight
local function createHighlight(player)
    -- Проверка, есть ли уже Highlight у игрока
    if player.Character and not player.Character:FindFirstChild("Highlight") then
        -- Создание Highlight
        local highlight = Instance.new("Highlight")
        highlight.Name = "Highlight"
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(0, 0, 255) -- Синий цвет
        highlight.OutlineColor = Color3.fromRGB(0, 0, 255) -- Синий контур
        highlight.FillTransparency = 0.5 -- Прозрачность заливки
        highlight.OutlineTransparency = 0.5 -- Прозрачность контура
    end
end

-- Функция для удаления Highlight
local function removeHighlight(player)
    if player.Character then
        local highlight = player.Character:FindFirstChild("Highlight")
        if highlight then
            highlight:Destroy()
        end
    end
end

-- Основной цикл для проверки игроков
while true do
    -- Проверяем всех игроков в игре
    for _, player in pairs(players:GetPlayers()) do
        -- Если у игрока есть Character и он в игре
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            local hasTool = false
            -- Проверяем, есть ли у игрока Tool
            for _, item in pairs(player.Backpack:GetChildren()) do
                if item:IsA("Tool") then
                    hasTool = true
                    break
                end
            end

            -- Если у игрока есть Tool, создаем Highlight
            if hasTool then
                createHighlight(player)
            else
                removeHighlight(player)
            end
        end
    end
    -- Задержка перед следующей проверкой
    wait(1)
end
