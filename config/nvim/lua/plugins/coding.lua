return{
    {
        "folke/trouble.nvim",
        dependencies = {
            "nvim-web-devicons"
        },
        cmd = "Trouble",
        opts = {
              modes = {
                preview_float = {
                  mode = "diagnostics",
                  preview = {
                    type = "float",
                    relative = "editor",
                    border = "rounded",
                    title = "Preview",
                    title_pos = "center",
                    position = { 0, -2 },
                    size = { width = 0.3, height = 0.3 },
                    zindex = 200,
                  },
                },
              },
        },
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble preview_float toggle<cr>",
                desc = "diagnostics (Trouble)",
            }
        },
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {
            ignore_next_char = "[%w%.]",
        },
    },

    {
        "numToStr/Comment.nvim",
        keys = {
            {"<leader>/", function() require("Comment.api").toggle.linewise.current() end,
                mode = "n", desc = "[Comment] Comment current line",},
            {"<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
                mode = "v", desc = "[Comment] Comment current selected lines",},
        -- },
        config = true,
        },
    },

    {
        "folke/todo-comments.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "folke/snacks.nvim",
        },
        event = "VeryLazy",
        config = true,
    },
    {
        'ray-x/lsp_signature.nvim',
        event = "VeryLazy",
        opts = {
            bind = true,
            max_width = function()
                return  math.floor(vim.api.nvim_win_get_width(0) * 0.8)
            end,
            handler_opts = {
                border = "rounded"
            },
            floating_window_off_x = 5,
            floating_window_off_y = function()
                local linenr = vim.api.nvim_win_get_cursor(0)[1]
                local pumheight = vim.o.pumheight
                local winline = vim.fn.winline()
                local winheight = vim.fn.winheight(0)
                if winline - 1 < pumheight then
                    return pumheight
                end
                if winheight - winline < pumheight then
                    return -pumheight
                end
                return 0
            end,
            close_timeout = 4000,
            -- move_signature_window_key = {
            --     '<M-k>',
            --     '<M-j>',
            --     '<M-h>',
            --     '<M-l>',
            -- },
        }
    },
}
