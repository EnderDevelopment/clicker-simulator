-- Click Simulator Main Script

local Players = game:GetService("Players")

-- Function to create a new player's data
local function createPlayerData(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local clicks = Instance.new("IntValue")
    clicks.Name = "Clicks"
    clicks.Value = 0
    clicks.Parent = leaderstats
end

-- Connect to player added event
Players.PlayerAdded:Connect(createPlayerData)

-- Function to handle player clicks
local function onPlayerClick(player)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local clicks = leaderstats:FindFirstChild("Clicks")
        if clicks then
            clicks.Value = clicks.Value + 1
        end
    end
end

-- Connect to player clicks event
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if message == "+1" then
            onPlayerClick(player)
        end
    end)
end)
