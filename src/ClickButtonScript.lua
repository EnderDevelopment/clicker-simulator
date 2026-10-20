-- Click Button Script

local button = script.Parent

local function onClick()
    local player = game.Players.LocalPlayer
    player:Chat("+1")
end

button.MouseButton1Click:Connect(onClick)
