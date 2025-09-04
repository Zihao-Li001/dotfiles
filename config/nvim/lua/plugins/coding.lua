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
        -- stylua: ignore
        -- keys = {
        --   ---@diagnostic disable-next-line: undefined-field
        --   { "<leader>st", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME", "BUG", "FIXIT", "HACK", "WARN", "ISSUE"  } }) end, desc = "[TODO] Pick todos (without NOTE)", },
        --   ---@diagnostic disable-next-line: undefined-field
        --   { "<leader>sT", function() require("snacks").picker.todo_comments() end, desc = "[TODO] Pick todos (with NOTE)", },
        -- },
        config = true,
    },
    {
        'ray-x/lsp_signature.nvim',
        event = "VeryLazy",
        config = function()
            require('lsp_signature').setup({
                enabled = true,
                bind = true,
                floating_window = true,
                floating_window_above_cur_line = true,
                max_height = 10,
                max_width = 80,
                auto_close_after = 3,
                min_length = 6,
                toggle_key = '<M-x>',
                zindex = 200,
                show_source = false,
                override = true,
            })
        end
    }
}
