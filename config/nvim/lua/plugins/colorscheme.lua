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

                " For Diagnostic mesgs
                highlight DiagnosticVirtualTextError guibg=NONE
                highlight DiagnosticVirtualTextWarn guibg=NONE
                highlight DiagnosticVirtualTextInfo guibg=NONE
                highlight DiagnosticVirtualTextHint guibg=NONE
                highlight DiagnosticVirtualTextOk guibg=NONE

                " For float terms like hoverdoc
                highlight NormalFloat guibg=NONE

                ]])
        end,
    },
}
