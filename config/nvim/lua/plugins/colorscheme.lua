return {
    {
        "catppuccin/nvim",
        priority = 1000,
        -- opts = {
        --     flavour = "auto",
        --     background = {
        --         light = "latte",
        --         dark = "frappe",
        --     },
        --     transparent_background = true,
        --     float = {
        --         transparent = true,
        --         solid = true,
        --     },
        --     styles = {
        --         comments = {"italic"},
        --         conditionals = {"italic"},
        --     },
        --     integrations = {
        --         nvimtree = true,
        --         treesitter = true,
        --         blink = true,
        --     },
        -- },
        -- config = function()
        --     vim.cmd([[
        --         colorscheme catppuccin-mocha
        --
        --         " Enable transparency
        --         highlight Normal guibg=NONE ctermbg=NONE
        --         highlight NormalNC guibg=NONE ctermbg=NONE
        --         highlight LineNr guibg=NONE ctermbg=NONE
        --         highlight SignColumn guibg=NONE ctermbg=NONE
        --         highlight FoldColumn guibg=NONE ctermbg=NONE
        --         highlight CursorLine guibg=NONE ctermbg=NONE
        --         
        --         " For nvim tree
        --         highlight NvimTreeIndentMarker guifg=#A6E3A1
        --         highlight NvimTreeFolderArrowClosed guifg=#A6E3A1
        --         highlight NvimTreeFolderArrowOpen guifg=#A6E3A1
        --         highlight NvimTreeNormal guibg=NONE
        --
        --         " For vertical split window border
        --         highlight WinSeparator guifg=#A6E3A1
        --
        --         " " For Diagnostic mesgs
        --         " highlight DiagnosticVirtualTextError guibg=NONE
        --         " highlight DiagnosticVirtualTextWarn guibg=NONE
        --         " highlight DiagnosticVirtualTextInfo guibg=NONE
        --         " highlight DiagnosticVirtualTextHint guibg=NONE
        --         " highlight DiagnosticVirtualTextOk guibg=NONE
        --
        --         " For Diagnostic messages
        --         highlight DiagnosticVirtualTextError guibg=#3A2A2A  " 微红色背景
        --         highlight DiagnosticVirtualTextWarn guibg=#3A3A2A  " 微黄色背景
        --         highlight DiagnosticVirtualTextInfo guibg=#2A3A3A  " 微蓝色背景
        --         highlight DiagnosticVirtualTextHint guibg=#2A3A2A  " 微绿色背景
        --         highlight DiagnosticVirtualTextOk guibg=#2A3A2A   " 微绿色背景
        --
        --         " For float terms like hoverdoc
        --         " highlight NormalFloat guibg=NONE
        --         highlight NormalFloat guibg=NONE guifg=#CDD6F4  " 深色背景，白色前景
        --         highlight FloatBorder guifg=#A6E3A1 guibg=NONE  " 绿色边框，与背景一致
        --         ]])
        -- end,
    config = function()
        require("catppuccin").setup({
            flavour = "auto", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            float = {
                transparent = true, -- enable transparent floating windows
                solid = true, -- use solid styling for floating windows, see |winborder|
            },
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true,
            auto_integrations = false,
            integrations = {
                barbar = true,
                blink_cmp = { style = 'bordered' },
                mason = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notice = true,
                snacks = {
                        enabled = true,
                        indentscope_color = "",
                    },
                lsp_trouble = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        })
        vim.cmd.colorscheme "catppuccin"
-- setup must be called before loading
    end
    },
}
