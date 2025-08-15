-- This is a configuration file for wezterm, a GPU-accelerated terminal emulator for modern workflows.

local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,    -- Hide the tab bar when there is only one tab
    window_close_confirmation = "NeverPrompt",
    window_decorations = "NONE", -- disable the title bar but enable the resizable border
    font = wezterm.font("JetBrains Mono", { weight = "DemiBold" }),
    font_size = 12,
    color_scheme = "DanQing (base16)",
    default_cursor_style = 'BlinkingBlock',
    macos_window_background_blur = 25, -- Enable window background blur on macOS
    background = {
        {
            source = {
                File = "/home/lzh/dotfiles/config/Arknight_Personal_Terminal.png",
        },
        hsb = {
            hue = 1.0,
            saturation = 1.02,
            brightness = 0.25
        },
        horizontal_align = "Center",
        vertical_align = "Middle",
        },
        {
        source = {
                Color = "#282c35", -- dark purple
            },
            width = "100%",
            height = "100%",
            opacity = 0.55,
        },
    },
    window_padding = {
        left = 8,
        right = 0,
        top = 3,
        bottom = 3,
    },
    initial_rows = 28,
    initial_cols = 100,
}

return config
