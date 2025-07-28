-- SC3 Premium Menü v1.0
local SC3 = {}

-- Temel ayarlar
SC3.Settings = {
    MenuKey = Enum.KeyCode.RightShift,
    DefaultTheme = "Dark"
}

-- Menü oluşturma
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SC3 H4X MENÜSÜ", SC3.Settings.DefaultTheme)

-- PLAYER HACKS
local PlayerTab = Window:NewTab("OYUNCU")
local PlayerSection = PlayerTab:NewSection("Hileler")

PlayerSection:NewToggle("God Mode", "Ölümsüzlük verir", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    end
end)

PlayerSection:NewSlider("Hız", "Yürüme hızını ayarlar", 500, 16, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- Diğer menü öğeleri buraya...

return SC3
