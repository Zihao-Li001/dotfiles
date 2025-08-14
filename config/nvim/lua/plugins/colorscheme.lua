-- lua/plugins/dracula.lua
return {
  "Mofiqul/dracula.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- This command activates the theme after it's loaded
    vim.cmd.colorscheme "dracula"
  end,
}
