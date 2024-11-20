--
-- Wezterm config
-- https://wezfurlong.org/wezterm/config/files.html
--

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- Below is where you actually apply your config choices

-- Change the color scheme
config.color_scheme = "catppuccin-mocha"

-- Set the font to use
config.font = wezterm.font_with_fallback({
	"IBM Plex Mono",
})
config.font_size = 16

-- Finally, return the configuration to wezterm
return config
