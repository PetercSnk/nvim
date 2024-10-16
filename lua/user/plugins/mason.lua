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
                "biome",
                "clangd",
                "cssls",
                "dockerls",
                "html",
                "jinja_lsp",
                "lua_ls",
                "marksman",
                "pylsp",
                "yamlls"
            }
        })
    end
}
