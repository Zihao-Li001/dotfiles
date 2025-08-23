return {
    {
        "catppuccin/nvim",
        priority = 1000,
        config = function()
            vim.cmd([[
                colorscheme catppuccin-mocha

                " Enable transparency
                highlight Normal guibg=NONE ctermbg=NONE
                highlight NormalNC guibg=NONE ctermbg=NONE
                highlight LineNr guibg=NONE ctermbg=NONE
                highlight SignColumn guibg=NONE ctermbg=NONE
                highlight FoldColumn guibg=NONE ctermbg=NONE
                highlight CursorLine guibg=NONE ctermbg=NONE
                
                " For nvim tree
                highlight NvimTreeIndentMarker guifg=#A6E3A1
                highlight NvimTreeFolderArrowClosed guifg=#A6E3A1
                highlight NvimTreeFolderArrowOpen guifg=#A6E3A1
                highlight NvimTreeNormal guibg=NONE

                " For vertical split window border
                highlight WinSeparator guifg=#A6E3A1

                " " For Diagnostic mesgs
                " highlight DiagnosticVirtualTextError guibg=NONE
                " highlight DiagnosticVirtualTextWarn guibg=NONE
                " highlight DiagnosticVirtualTextInfo guibg=NONE
                " highlight DiagnosticVirtualTextHint guibg=NONE
                " highlight DiagnosticVirtualTextOk guibg=NONE

                " For Diagnostic messages
                highlight DiagnosticVirtualTextError guibg=#3A2A2A  " 微红色背景
                highlight DiagnosticVirtualTextWarn guibg=#3A3A2A  " 微黄色背景
                highlight DiagnosticVirtualTextInfo guibg=#2A3A3A  " 微蓝色背景
                highlight DiagnosticVirtualTextHint guibg=#2A3A2A  " 微绿色背景
                highlight DiagnosticVirtualTextOk guibg=#2A3A2A   " 微绿色背景

                " For float terms like hoverdoc
                " highlight NormalFloat guibg=NONE
                highlight NormalFloat guibg=NONE guifg=#CDD6F4  " 深色背景，白色前景
                highlight FloatBorder guifg=#A6E3A1 guibg=NONE  " 绿色边框，与背景一致
                ]])
        end,
    },
}
