-- plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    -- 基础 LSP 配置
    local lspconfig = require("lspconfig")

    -- 通用 on_attach 函数
    local on_attach = function(client, bufnr)
      -- 这里可以添加按键映射
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Go to Definition' })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = 'Hover Documentation' })
    end

    -- 配置语言服务器
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = require("blink.cmp").get_capabilities(),
        })
      end
    })
  end
}
