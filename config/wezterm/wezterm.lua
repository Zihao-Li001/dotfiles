-- This is a configuration file for wezterm, a GPU-accelerated terminal emulator for modern workflows.

local wezterm = require("wezterm")
local home = os.getenv("HOME")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,    -- Hide the tab bar when there is only one tab
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE", -- disable the title bar but enable the resizable border
    font = wezterm.font("JetBrains Mono", { weight = "DemiBold" }),
    font_size = 12.5,
    color_scheme = "DanQing (base16)",
    default_cursor_style = 'BlinkingBlock',
    macos_window_background_blur = 25, -- Enable window background blur on macOS
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
        left = 8,
        right = 0,
        top = 0,
        bottom = 0,
    },
    initial_rows = 28,
    initial_cols = 100,
}

return config
