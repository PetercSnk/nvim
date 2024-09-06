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
                "bashls",
                "clangd",
                "cssls",
                "dockerls",
                "docker_compose_language_service",
                "html",
                "biome",
                "jdtls",
                "lua_ls",
                "jinja_lsp",
                "pylsp",
                "sqlls",
                "yamlls"
            }
        })
    end
}
