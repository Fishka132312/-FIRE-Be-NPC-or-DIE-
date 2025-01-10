while task.wait() do
    local UserInputService = game:GetService("UserInputService")
    local CHeld = UserInputService:IsKeyDown(Enum.KeyCode.C)
    if CHeld == true then
        game.workspace.CurrentCamera.FieldOfView = 1
    else
        game.workspace.CurrentCamera.FieldOfView = 111111
    end
end
