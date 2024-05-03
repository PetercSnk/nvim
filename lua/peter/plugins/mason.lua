return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "→",
                    package_uninstalled = "✕"
                }
            }
        })
        require("mason-lspconfig").setup({
            ensure_installed = {
                -- "asm_lsp",
                -- "bashls",
                -- "clangd",
                -- "cssls",
                -- "dockerls",
                -- "docker_compose_language_service",
                -- "html",
                -- "hls",
                -- "biome",
                -- "jdtls",
                -- "jinja_lsp",
                "lua_ls",
                -- "matlab_ls",
                -- "pyright",
                -- "sqlls"
            }
        })
    end
}
