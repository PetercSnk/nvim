return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }
            opts.desc = "Show references"
            vim.keymap.set("n", "gR", vim.lsp.buf.references, opts)
            opts.desc = "Jump to declaration"
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            opts.desc = "Jump to definition"
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            opts.desc = "Show implementations"
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
            opts.desc = "Jump to type definition"
            vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
            opts.desc = "Smart rename"
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            opts.desc = "Show line diagnostics"
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
            opts.desc = "Jump to previous diagnostic"
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
            opts.desc = "Jump to next diagnostic"
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
            opts.desc = "Show documentation"
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            opts.desc = "Show signature infomation"
            vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, opts)
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                    on_attach = on_attach
                })
            end,
            -- lua config
            ["lua_ls"] = function()
                lspconfig["lua_ls"].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = {
                                    "vim"
                                }
                            }
                        }
                    }
                })
            end,
            -- python config
            ["pylsp"] = function()
                lspconfig["pylsp"].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = {
                        pylsp = {
                            plugins = {
                                pycodestyle = {
                                    ignore = {
                                        "E501",
                                        "E265",
                                        "E402"
                                    },
                                    maxLineLength = 100
                                }
                            }
                        }
                    }
                })
            end
        })
    end
}
