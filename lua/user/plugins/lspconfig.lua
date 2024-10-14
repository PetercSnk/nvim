return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = {buffer = ev.buf, silent = true}
                opts.desc = "Show references"
                vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
                opts.desc = "Jump to declaration"
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                opts.desc = "Jump to definition"
                vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
                opts.desc = "Show implementations"
                vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
                opts.desc = "Jump to type definition"
                vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
                opts.desc = "See available code actions"
                vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)
                opts.desc = "Smart rename"
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                opts.desc = "Show buffer diagnostics"
                vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
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
                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
            end
        })
        local capabilities = cmp_nvim_lsp.default_capabilities()
        -- bash
        lspconfig["bashls"].setup({
            capabilities = capabilities
        })
        -- javascript, typescript, json
        lspconfig["biome"].setup({
            capabilities = capabilities
        })
        -- c, c++
        lspconfig["clangd"].setup({
            cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
            capabilities = capabilities
        })
        -- less, scss, css
        lspconfig["cssls"].setup({
            capabilities = capabilities
        })
        -- docker
        lspconfig["dockerls"].setup({
            capabilities = capabilities
        })
        -- html
        lspconfig["html"].setup({
            capabilities = capabilities
        })
        -- jinja, django, nunjucks
        lspconfig["jinja_lsp"].setup({
            capabilities = capabilities
        })
        -- lua
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
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
        -- markdown
        lspconfig["marksman"].setup({
            capabilities = capabilities
        })
        -- python config
        lspconfig["pylsp"].setup({
            capabilities = capabilities,
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
        -- yaml
        lspconfig["yamlls"].setup({
            capabilities = capabilities
        })
    end
}
