return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = false },
			indent = { enabled = true },
			input = { enabled = true },
			image = {
				enabled = true,
				-- backend = "kitty",
				-- max_width = 100,
				-- max_height = 30,
				-- window_overlap = true,
			},
			lazygit = {},
			-- picker = { enabled = true },
			notifier = {
				enabled = true,
				timeout = 3000,
				-- style = notification,
			},
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	},
}
