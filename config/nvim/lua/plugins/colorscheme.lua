return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			auto_integrations = true,
			integrations = {
				lualine = true, -- 开启 lualine 集成
			},
		},
		config = function()
			require("catppuccin").setup({
				flavour = "frappe",
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
