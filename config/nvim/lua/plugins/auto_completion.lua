-- lua/plugins/completion.lua

return {
        "saghen/blink.cmp",
        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using the latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        opts = {
            keymap = {
                ["<C-k>"] = false,
            },

            appearance = {
                -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = "mono",
            },

            sources = {
                -- `lsp`, `buffer`, `snippets`, `path`, and `omni` are built-in
                -- so you don't need to define them in `sources.providers`
                default = { "lsp", "path", "snippets", "buffer" },

                -- Sources are configured via the sources.providers table
            },

            -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" },
            completion = {
                -- The keyword should only match against the text before
                keyword = { range = "prefix" },
                menu = {
                    -- Use treesitter to highlight the label text for the given list of sources
                    draw = {
                        treesitter = { "lsp" },
                        components = {
                            kind_icon = {
                                text = function(ctx)
                                    local icon = ctx.kind_icon
                                    if ctx.item.source_name == "LSP" then
                                        local color_item = require("nvim-highlight-colors").format(ctx.item.documentation, { kind = ctx.kind })
                                        if color_item and color_item.abbr ~= "" then
                                            icon = color_item.abbr
                                        end
                                    end
                                    return icon .. ctx.icon_gap
                                end,
                                highlight = function(ctx)
                                    local highlight = "BlinkCmpKind" .. ctx.kind
                                    if ctx.item.source_name == "LSP" then
                                        local color_item = require("nvim-highlight-colors").format(ctx.item.documentation, { kind = ctx.kind })
                                        if color_item and color_item.abbr_hl_group then
                                            highlight = color_item.abbr_hl_group
                                        end
                                    end
                                    return highlight
                                end,
                            },
                        },
                    },
                },
                -- Show completions after typing a trigger character, defined by the source
                trigger = { show_on_trigger_character = true },
                documentation = {
                    -- Show documentation automatically
                    auto_show = true,
                },
        },
        -- Signature help when tying
        signature = { enabled = true },
        },
        opts_extend = { "sources.default" },
    }
