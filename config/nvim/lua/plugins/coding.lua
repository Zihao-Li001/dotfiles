return{
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
        
}
