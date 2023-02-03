Config = {}

Config.Image = "" -- SVG or PNG (example: discord cdn)
Config.Color = "" -- Hex color (#ff00ff)
Config.OnKeyP = function()
    TogglePauseMenu()
end

Config.Buttons = {
    {"RESUME", function() Resume() end},
    {"MAP", function() Map() end},
    {"SETTINGS", function() Settings() end},
    {"DISCORD", function()
        OpenBrowserPage("https://discord.gg/Cr42xbKdDf")
    end},
    {"DISCONNECT", function() Disconnect() end},
}

-- Cleaned and bypassed by flux#3487