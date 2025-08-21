-- This is a configuration file for wezterm, a GPU-accelerated terminal emulator for modern workflows.

local wezterm = require("wezterm")
local home = os.getenv("HOME")

-- reconginze the local os
-- custom window action

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,

    use_fancy_tab_bar = true,
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,    -- Hide the tab bar when there is only one tab
    window_close_confirmation = "NeverPrompt",

    -- Font
    font_size = 13,
    line_height = 1.1,
    font = wezterm.font("JetBrains Mono", { weight = "DemiBold" }),

    -- Color Scheme   
    color_scheme = "Catppuccin Mocha",
    set_environment_variables = {
        BAT_THEME = "Catppuccin-mocha",
    },

    -- Window
    default_cursor_style = 'BlinkingBlock',
    adjust_window_size_when_changing_font_size = false,
    macos_window_background_blur = 70, -- Enable window background blur on macOS
    background = {
        {
            source = {
                Color = "#282c35", -- dark purple
            },
            width = "100%",
            height = "100%",
            opacity = 0.75,
        },
    },
    window_padding = {
        left = 15,
        right = 15,
        top = 15,
        bottom = 15,
    },
    initial_rows = 37,
    initial_cols = 127,

    -- Keymap

}

-- Recogize OS 
-- Custom window action according to OS
if wezterm.target_triple:find("apple") then 
    config.window_decorations = "RESIZE"
elseif wezterm.target_triple:find("linux") then
    config.window_decorations = "NONE"
else 
    config.window_decorations = "RESIZE"
end

return config
