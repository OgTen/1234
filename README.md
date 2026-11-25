# GlassyUI for Matcha

GlassyUI is a separate Lua Drawing-based interface library based on the uploaded Nexa-UI implementation, restyled around the supplied GlassyDashboard project.

## Design direction

- Lavender / blue glass default palette inspired by the dashboard's `#A9A4F8` background, blue-to-indigo-to-violet accent, pale surfaces and rounded navigation.
- Larger rounded window and roomier control spacing.
- Four light palettes: Lavender Glass, Cloud Glass, Rose Glass and Mint Glass.
- Existing dark and saturated palettes remain available as alternatives.
- Existing Drawing object pooling, input handling, scrolling, transitions, popups, notifications, keybind overlay, performance overlay, configuration support and control system are retained from the supplied source.

## Load

```lua
local GlassyUI = loadstring(game:HttpGet("YOUR_RAW_GITHUB_URL/glassy-ui.lua"))()
```

Or execute the contents of `glassy-ui.lua` directly. The library returns its table and publishes only `GlassyUI` to `getgenv()` / `shared`; it does not overwrite `Nexa`, `UI` or `DrawingUI`.

## Quick start

See `example.lua` for a complete starter window with tabs, sections, toggles, sliders, dropdowns, buttons, notifications and theme selection.

## Main API

- `GlassyUI:CreateWindow(options)`
- `Window:AddTab({Title, Icon, Select})`
- `Tab:AddSection(title, description, options)`
- `Tab` / `Section` control methods: `AddLabel`, `AddDivider`, `AddButton`, `AddToggle`, `AddRadio`, `AddSegmented`, `AddProgress`, `AddStatus`, `AddSlider`, `AddRangeSlider`, `AddDropdown`, `AddKeybind`, `AddColorPicker`
- `Window:Notify(options)`
- `Window:SetTheme(nameOrColorTable)` / `Window:NextTheme()`
- `Window:SetBackground(effect)`
- `Window:SaveConfig(name)` / `Window:LoadConfig(name)` / `Window:DeleteConfig(name)`
- `Window:Show()` / `Window:Hide()` / `Window:Toggle()` / `Window:Destroy()`

The control option names and callback conventions follow the supplied Nexa source to make porting scripts straightforward. Check the original implementation for each control's full option set; this first release intentionally retains those behaviours rather than inventing a new API.

## Compatibility notes

This is a Matcha / Roblox Drawing-environment library, not a standard standalone Lua UI. It expects the Drawing API and the same executor-side input / file capabilities used by the supplied source. Optional facilities are guarded where the source already guards them. Verify in your Matcha build before using it in a live script.

## Independence

- Does not assign `Nexa`, `UI` or `DrawingUI` globals.
- Uses `GlassyUI_` prefixes for config and image-cache files.
- Keeps its own theme state and library object.
