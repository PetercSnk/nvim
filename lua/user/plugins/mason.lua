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
                "html",
                "biome",
                "lua_ls",
                "jinja_lsp",
                "pylsp",
                "yamlls",
                "marksman"
            }
        })
    end
}
