-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.

local config = wezterm.config_builder()

config.color_scheme = "Rosé Pine (Gogh)"

-- Turn off bell
config.audible_bell = "Disabled"

-- This is where you actually apply your config choices

config.background = {
	{
		source = {
			Color = "#191724",
		},
		width = "100%",
		height = "100%",
		opacity = 1.0,
	},
	{
		source = {
			File = "/Users/gautomdas/cyberpunk.png",
		},

		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",
		horizontal_align = "Center",
		height = "Cover",
		width = "Cover",
		opacity = 0.07,
	},
}

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 14.0,
	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#191724",
	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#191724",
}

config.colors = {
	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = "#0b0022",

		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = "#2b2042",
			-- The color of the text for the tab
			fg_color = "#c0c0c0",

			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = "Normal",

			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = "None",

			-- Specify whether you want the text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = false,

			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},

		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab_hover`.
		},

		-- The new tab button that let you create new tabs
		new_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab_hover`.
		},
	},
}

config.font_size = 16.0
config.allow_square_glyphs_to_overflow_width = "Never"

-- and finally, return the configuration to wezterm
return config
