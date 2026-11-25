local GlassyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/OgTen/1234/refs/heads/main/glassy-ui.lua"))()

local Window = GlassyUI:CreateWindow({
    Title = "Matcha Script",
    Subtitle = "Glassy interface",
    Size = Vector2.new(760, 540),
    Theme = "Lavender Glass",
    MenuKey = "p",
    Opacity = 88,
    Background = "aurora",
})

local Main = Window:AddTab({ Title = "Main", Icon = "home", Select = true })
local MainSection = Main:AddSection("Main controls", "Example controls using the GlassyUI API.")

MainSection:AddLabel({ Title = "Welcome", Description = "Your script is ready." })
MainSection:AddToggle({
    Title = "Enabled",
    Description = "Enable or disable the feature.",
    Default = false,
    Callback = function(value)
        print("Enabled:", value)
    end,
})
MainSection:AddSlider({
    Title = "Walk speed",
    Min = 0,
    Max = 100,
    Default = 16,
    Callback = function(value)
        print("Walk speed:", value)
    end,
})
MainSection:AddDropdown({
    Title = "Mode",
    Options = { "Normal", "Fast", "Smooth" },
    Default = "Normal",
    Callback = function(value)
        print("Mode:", value)
    end,
})
MainSection:AddButton({
    Title = "Test notification",
    ButtonText = "Notify",
    Callback = function()
        Window:Notify({ Title = "GlassyUI", Content = "Everything is working.", Duration = 3 })
    end,
})

local Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
local Appearance = Settings:AddSection("Appearance", "Change the interface theme.")
Appearance:AddDropdown({
    Title = "Theme",
    Options = { "Lavender Glass", "Cloud Glass", "Rose Glass", "Mint Glass", "Midnight", "Obsidian" },
    Default = "Lavender Glass",
    Callback = function(value)
        Window:SetTheme(value)
    end,
})

Window:Notify({ Title = "GlassyUI loaded", Content = "Press P to toggle the interface." })
