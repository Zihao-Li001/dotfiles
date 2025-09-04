vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '', -- or other icon of your choice here, this is just what my config has:
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '󰌵',
    },
  },

  virtual_text = false, -- 启用虚拟文本（显示诊断信息）
  -- signs = true, -- 启用诊断标志（如错误、警告的左侧符号）
  underline = true, -- 启用诊断下划线
  update_in_insert = false, -- 不插入模式下更新诊断
  severity_sort = true, -- 按严重性排序
  float = {
    border = "rounded", -- 圆角边框
    width = math.floor(vim.o.columns * 0.4), -- 固定宽度
    scope = "line", -- 显示当前行的诊断
    source = "always", -- 显示诊断来源（如 LSP 名称）
    focusable = false, -- 禁止聚焦到浮动窗口
  },
})

-- Keymap
vim.keymap.set('n','<leader>d', vim.diagnostic.open_float, { desc = 'Open Floating Diagnostice' })
