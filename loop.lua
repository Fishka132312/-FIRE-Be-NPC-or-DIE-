-- Список возможных папок, которые нужно проверять
local targetFolders = {"Hospital", "Hotel", "RailYard", "Office", "Prison", "ShoppingMall", "Town", "PirateOutpost"}

-- Получение персонажа игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Функция для поворота персонажа к объекту с ProximityPrompt
local function facePrompt(part)
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart and part:IsA("BasePart") then
        local lookAt = (part.Position - rootPart.Position).Unit
        rootPart.CFrame = CFrame.new(rootPart.Position, rootPart.Position + lookAt)
    end
end

-- Функция для изменения всех ProximityPrompt внутри партов и их дочерних объектов
local function updateProximityPrompts(part)
    local proximityPrompt = part:FindFirstChild("ProximityPrompt")
    if proximityPrompt then
        proximityPrompt.MaxActivationDistance = 100000000
        proximityPrompt.HoldDuration = 0
        proximityPrompt.RequiresLineOfSight = false -- Отключаем проверку прямой видимости

        task.defer(function()
            facePrompt(proximityPrompt.Parent) -- Повернуть персонажа к объекту
            proximityPrompt:InputHoldBegin()
            wait(0.1)
            proximityPrompt:InputHoldEnd()
        end)
    end
    for _, child in pairs(part:GetChildren()) do
        if child:IsA("Part") then
            updateProximityPrompts(child)
        elseif child:IsA("Model") then
            updateProximityPrompts(child)
        end
    end
end

-- Функция для обработки найденной папки (hospital, hotel, или RailYard)
local function processFolder(folder)
    local detailFolder = folder:FindFirstChild("Detail")
    if detailFolder then
        detailFolder:Destroy()
    end
    
    local tasksFolder = folder:FindFirstChild("Tasks")
    if tasksFolder then
        for _, part in pairs(tasksFolder:GetChildren()) do
            if part:IsA("Part") or part:IsA("Model") then
                updateProximityPrompts(part)
            end
        end
    end
end

-- Основной цикл для проверки всех папок в Workspace
while true do
    for _, folderName in pairs(targetFolders) do
        local folder = workspace:FindFirstChild(folderName)
        if folder then
            processFolder(folder)
        end
    end
    wait(1)
end
