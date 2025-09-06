-- lua/plugins/completion.lua

return {
        "saghen/blink.cmp",
        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "1.*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using the latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        --@module 'blink.emp'
        --@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "none",
                ['<CR>'] = { 'accept', 'fallback' },
                ['<S-Tab>'] = { 'select_prev','snippet_backward','fallback' },
                ['<Tab>'] = { 'select_next','snippet_forward','fallback' },
            },

            appearance = {
                -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = "normal",
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
                -- Show completions after typing a trigger character, defined by the source
                trigger = { show_on_trigger_character = true },
                documentation = {
                    -- Show documentation automatically
                    auto_show = true,
                },
                menu = {
                    draw = {
                      components = {
                        kind_icon = {
                          text = function(ctx)
                            local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                            return kind_icon
                          end,
                          -- (optional) use highlights from mini.icons
                          highlight = function(ctx)
                            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                            return hl
                          end,
                        },
                        kind = {
                          -- (optional) use highlights from mini.icons
                          highlight = function(ctx)
                            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                            return hl
                          end,
                        }
                      }
                    }
                  }
        },

        -- Signature help when tying
        signature = { enabled = false },
        },
        opts_extend = { "sources.default" },
    }
