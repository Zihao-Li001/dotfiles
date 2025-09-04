return {
    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = {
            options = {
                theme = "catppuccin",
                always_divide_middle = false,
                component_separators = { left = "", right = "" },
                section_separators = {left = "", right = ""},
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    -- "branch",
                    -- "diff",
                    "diagnostics",
                    {
                        'filename',
                        file_status = false,
                        path = 1
                    },
                },
                lualine_c = {},
                lualine_x = {'filetype'},
            },
        },
    },

    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
    },

    {
        "nvim-tree/nvim-web-devicons",
        opts = {
            override = {
                -- copilot = {
                --     icon = "",
                --     color = "#cba6f7",
                --     name = "Copilot",
                -- },
            },
        },
    },

    -- rainbow-delimiters
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            require 'rainbow-delimiters.setup'.setup {
                strategy = {
                    [''] = 'rainbow-delimiters.strategy.global',
                    commonlisp = 'rainbow-delimiters.strategy.local',
                },
                query = {
                    [''] = 'rainbow-delimiters',
                    latex = 'rainbow-blocks',
                },
                highlight = {
                    'RainbowDelimiterRed',
                    'RainbowDelimiterYellow',
                    'RainbowDelimiterBlue',
                    'RainbowDelimiterOrange',
                    'RainbowDelimiterGreen',
                    'RainbowDelimiterViolet',
                    'RainbowDelimiterCyan',
                },
                blacklist = {'c', 'cpp'},
            }
        end,
    },

    -- noice
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          -- {"rcarriga/nvim-notify", opts = {background_colour = "#000000"}}
        },
        keys = {
            { "<leader>n", "<CMD>Noice<CR>", desc = "[Noice] Show history messages" },
        },
        opts = {
            popupmenu = {
                enabled = false,
            },
            lsp = {
                override = {
                  ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
                  ["vim.lsp.util.stylize_markdown"] = false,
                },
                hover = {
                    enabled = true,
                    title =true,
                },
                signature = {
                    auto_open = { enabled = false },
                },
              },

            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = false, -- use a classic bottom cmdline for search
                command_palette = { theme = 'catppuccin'}, -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false, -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false, -- add a border to hover docs and signature help
            },
            routes = {
                -- Hide search count
                { filter = { event = "msg_show", kind = "search_count" }, opts = { skip = true } },
                -- Hide written message
                { filter = { event = "msg_show", kind = "" }, opts = { skip = true } },
            },
        },
    },

    -- mini icon
    {
        'echasnovski/mini.nvim',
        version = false,

        config = function()
            require('mini.icons').setup()
        end
    },

    {
        "sphamba/smear-cursor.nvim",
        opts = {
            -- Smear cursor when switching buffers or windows.
            smear_between_buffers = true,

            -- Smear cursor when moving within line or to neighbor lines.
            -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
            smear_between_neighbor_lines = true,

            -- Draw the smear in buffer space instead of screen space when scrolling
            scroll_buffer_space = true,

            -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
            -- Smears will blend better on all backgrounds.
            legacy_computing_symbols_support = false,

            -- Smear cursor in insert mode.
            -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
            smear_insert_mode = true,
        },
    },
}
