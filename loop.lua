-- Список возможных папок, которые нужно проверять
local targetFolders = {"Hospital", "Hotel", "RailYard", "Office", "Prison", "ShoppingMall", "Town","PirateOutpost"}

-- Функция для изменения всех ProximityPrompt внутри партов и их дочерних объектов
local function updateProximityPrompts(part)
    -- Проверка на наличие ProximityPrompt в парте или его дочерних объектах
    local proximityPrompt = part:FindFirstChild("ProximityPrompt")
    if proximityPrompt then
        -- Изменение свойств ProximityPrompt
        proximityPrompt.MaxActivationDistance = 10000
        proximityPrompt.HoldDuration = 0
    end

    -- Обрабатываем все дочерние объекты парта, чтобы найти ProximityPrompt
    for _, child in pairs(part:GetChildren()) do
        if child:IsA("Part") then
            updateProximityPrompts(child) -- Рекурсивно проверяем дочерние части
        elseif child:IsA("Model") then
            updateProximityPrompts(child) -- Также проверяем дочерние модели
        end
    end
end

-- Функция для обработки найденной папки (hospital, hotel, или RailYard)
local function processFolder(folder)
    -- Если папка содержит подпапку "Detail", удалить её
    local detailFolder = folder:FindFirstChild("Detail")
    if detailFolder then
        detailFolder:Destroy()
    end
    
    -- Найти папку "Tasks" внутри текущей папки
    local tasksFolder = folder:FindFirstChild("Tasks")
    if tasksFolder then
        -- Пройти по всем партах внутри "Tasks"
        for _, part in pairs(tasksFolder:GetChildren()) do
            -- Если это часть (Part) или модель, проверяем её на наличие ProximityPrompt
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
    -- Повторяем проверку через небольшое задержку (например, каждые 5 секунд)
    wait(5)
end

