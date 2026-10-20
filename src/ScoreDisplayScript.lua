-- Score Display Script

local player = game.Players.LocalPlayer
local scoreText = script.Parent

local function updateScore()
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local clicks = leaderstats:FindFirstChild("Clicks")
        if clicks then
            scoreText.Text = "Score: " .. clicks.Value
        end
    end
end

player.leaderstats.Clicks.Changed:Connect(updateScore)

updateScore()
