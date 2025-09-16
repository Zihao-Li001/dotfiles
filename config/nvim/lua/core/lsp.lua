vim.lsp.enable("lua_ls")
vim.lsp.enable("python_ls")
vim.lsp.enable("marksman")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		-- obtain LSP client
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		-- [basic keymaps]
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf, desc = "LSP: Goto Definition" })
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = event.buf, desc = "LSP: Goto Declaration" })
		-- Show diagnostic float window <C-W><C-D>
		vim.keymap.set("n", "<leader>d", function()
			vim.diagnostic.open_float({ source = true })
		end, { buffer = event.buf, desc = "LSP: Show Diagnostic" })
	end,
})

vim.diagnostic.config({
	-- virtual_lines = { current_line = true },
	virtual_text = {
		spacing = 5,
		prefix = "◍ ",
	},
	float = { severity_sort = true },
	severity_sort = true,
	signs = {
		text = {
			-- [vim.diagnostic.severity.ERROR] = "◍",
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "DiagnosticError",
			[vim.diagnostic.severity.WARN] = "DiagnosticWarning",
			[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticHint",
		},
	},
})
