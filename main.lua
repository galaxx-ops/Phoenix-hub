
repeat task.wait() until game:IsLoaded()
if game.PlaceId ~= 7449423635 and game.PlaceId ~= 2753915549 and game.PlaceId ~= 4442272183 and game.PlaceId ~= 534 then
    return
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/w-azure/main/W-azure%20UI%20Library.lua"))()
local Phoenix = ui:Window("Phoenix Hub", "by galaxx", Color3.fromRGB(255, 144, 36), Enum.KeyCode.RightControl)

-- Aba: Auto Farm
local Main = Phoenix:Tab("Auto Farm")

Main:Toggle("Auto Farm", false, function(v)
    _G.autoFarm = v
    while _G.autoFarm and task.wait() do
        -- lógica de auto farm
    end
end)

Main:Toggle("Auto Bounty", false, function(v)
    _G.autoBounty = v
    while _G.autoBounty and task.wait() do
        -- lógica de auto bounty
    end
end)

Main:Toggle("Auto Haki", false, function(v)
    _G.autoHaki = v
    while _G.autoHaki and task.wait() do
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
end)

-- Aba: Extras
local Extras = Phoenix:Tab("Extras")

Extras:Toggle("Auto Store Fruit", false, function(v)
    _G.autoStore = v
    while _G.autoStore and task.wait() do
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v.Name)
            end
        end
    end
end)

Extras:Button("FPS Boost", function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
        end
    end
    sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Compatibility)
    game.Lighting.GlobalShadows = false
end)