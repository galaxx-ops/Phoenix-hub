

repeat task.wait() until game:IsLoaded()
if game.PlaceId ~= 7449423635 and game.PlaceId ~= 2753915549 and game.PlaceId ~= 4442272183 and game.PlaceId ~= 5348375542 then
    return
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/w-azure/main/W-azure%20UI%20Library.lua"))()
local Phoenix = ui:Window("Phoenix Hub", "by galaxx", Color3.fromRGB(255, 144, 36), Enum.KeyCode.RightControl)

local Main = Phoenix:Tab("Auto Farm")
Main:Toggle("Auto Farm", false, function(v)
    _G.autoFarm = v
    while _G.autoFarm and task.wait() do
        -- coloque aqui sua função de farm
    end
end)

Main:Toggle("Auto Bounty", false, function(v)
    _G.autoBounty = v
    while _G.autoBounty and task.wait() do
        -- coloque sua função de auto bounty
    end
end)

Main:Toggle("Auto Haki", false, function(v)
    _G.autoHaki = v
    while _G.autoHaki and task.wait() do
        -- lógica do haki
    end
end)

local Extras = Phoenix:Tab("Extras")
Extras:Toggle("Auto Store Fruit", false, function(v)
    _G.autoStore = v
    while _G.autoStore and task.wait() do
        -- auto armazenar fruta
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
end)-- Phoenix Hub | Blox Fruits
-- Tema: Laranja com estilo W-Azure
-- Autor: galaxx-ops

repeat task.wait() until game:IsLoaded()
if game.PlaceId ~= 7449423635 and game.PlaceId ~= 2753915549 and game.PlaceId ~= 4442272183 and game.PlaceId ~= 5348375542 then
    return
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/w-azure/main/W-azure%20UI%20Library.lua"))()
local Phoenix = ui:Window("Phoenix Hub", "by galaxx", Color3.fromRGB(255, 144, 36), Enum.KeyCode.RightControl)

local Main = Phoenix:Tab("Auto Farm")
Main:Toggle("Auto Farm", false, function(v)
    _G.autoFarm = v
    while _G.autoFarm and task.wait() do
        -- coloque aqui sua função de farm
    end
end)

Main:Toggle("Auto Bounty", false, function(v)
    _G.autoBounty = v
    while _G.autoBounty and task.wait() do
        -- coloque sua função de auto bounty
    end
end)

Main:Toggle("Auto Haki", false, function(v)
    _G.autoHaki = v
    while _G.autoHaki and task.wait() do
        -- lógica do haki
    end
end)

local Extras = Phoenix:Tab("Extras")
Extras:Toggle("Auto Store Fruit", false, function(v)
    _G.autoStore = v
    while _G.autoStore and task.wait() do
        -- auto armazenar fruta
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
