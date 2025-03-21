-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

config.colors = {
	foreground = "#DDD2EC",   -- Lightest, general text
	background = "#0D1143",   -- Darkest, main background
	cursor_bg = "#CE99E3",    -- Medium purple, cursor fill
	cursor_border = "#CE99E3", -- Medium purple, cursor border
	cursor_fg = "#0D1143",    -- Darkest, cursor text
	selection_bg = "#BD719F", -- Pinkish purple, selection fill
	selection_fg = "#DDD2EC", -- Lightest, selection text
	ansi = {
		"#2C3E50",              -- Darker gray-blue, similar to the background's undertones
		"#E52E2E",              -- Standard red, keep for errors
		"#CE99E3",              -- Medium purple, a primary accent
		"#F9D9FE",              -- Light pinkish purple, brighter accent
		"#0FC5ED",              -- Standard cyan, keep for interoperability
		"#BD719F",              -- Pinkish purple, another accent
		"#24EAF7",              -- Standard light blue, keep for interoperability
		"#DDD2EC"               -- Lightest, a lighter accent
	},
	brights = {
		"#4C6A80", -- Brighter gray-blue
		"#FF6B6B", -- Brighter red
		"#F9D9FE", -- Light pinkish purple, brighter primary accent
		"#FFFFFF", -- Pure white, for maximum brightness
		"#A277FF", -- Standard purple, keep for interoperability
		"#CE99E3", -- Medium purple, brighter accent
		"#87CEEB", -- Brighter light blue
		"#FFFFFF" -- Pure white, for maximum brightness
	},
}


-- and finally, return the configuration to wezterm
return config
