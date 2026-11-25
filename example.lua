local Source = game:HttpGet("https://raw.githubusercontent.com/OgTen/1234/refs/heads/main/glassy-ui.lua")
assert(loadstring(Source))()
local GlassyUI = assert(_G.GlassyUI, "GlassyUI failed to load")

local Window = GlassyUI:CreateWindow({
    Title = "Matcha Script",
    Subtitle = "Glassy interface",
    Size = Vector2.new(760, 540),
    Theme = "Blue",
    MenuKey = "p",
    Opacity = 100,
    Background = "none",
    Logo = "https://i.ibb.co/dwpNVBN2/Shinobu-Shocked.png",
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
    Title = "Test button",
    ButtonText = "Run",
    Callback = function() print("Button pressed") end,
})

-- The library includes its own Settings tab and accent theme selector.
