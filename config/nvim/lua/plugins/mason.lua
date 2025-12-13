return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = { border = "rounded" },
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = { "pylsp", "lua_ls", "clangd" },
			automatic_installation = true,
		},
	},
}
