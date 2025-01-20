-- dont steal if you steal = 🟥[[ UR GAY ]]🟥
-- i make it open source to make sure begginers learns somethings from this script.
-- boo 👻

local player = game.Players.LocalPlayer

local function set_flow(desired_flow)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Flow") then
            playerStats.Flow.Value = desired_flow
        end
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix Hub")

local Section = Window:NewSection("FLOWS")

Section:CreateButton("Prodigy", function()
    set_flow("Prodigy")
end)

Section:CreateButton("Dribbler (risky)", function()
    set_flow("Dribbler")
end)

local localPlayer = game:GetService("Players").LocalPlayer

Section:CreateButton("Enable Always Flow ON", function()
    if localPlayer:FindFirstChild("PlayerStats") and localPlayer.PlayerStats:FindFirstChild("InFlow") then
        localPlayer.PlayerStats.InFlow.Value = true
        local args = {
        [1] = "Prodigy"
    }
    game:GetService("ReplicatedStorage").Packages.Knit.Services.FlowService.RE.AuraEquip:FireServer(unpack(args))
    end
end)
