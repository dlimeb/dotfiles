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
	-- "IBM Plex Mono",
	"Geist Mono",
})
config.font_size = 16

-- Disable font ligatures
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- Finally, return the configuration to wezterm
return config
