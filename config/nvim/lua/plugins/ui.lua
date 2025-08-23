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
                lualine_b = { "branch", "diff", "diagnostics" },
            }

        }
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
        submodules = false,
        main = "rainbow-delimiters.setup",
        opts = {},
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

        opts = {
            popupmenu = {
                enabled = false,
            },
            notify = {
                enabled = false,
            },
            lsp = {
                -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                  ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
                  ["vim.lsp.util.stylize_markdown"] = false,
                },
                hover = {
                    enabled = true,
                    title =true,
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
    }
}
