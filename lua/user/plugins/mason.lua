return {
    "mason-org/mason.nvim",
    dependencies = {
        "mason-org/mason-lspconfig.nvim"
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
                "lua_ls",
                "marksman",
                "pylsp",
                "yamlls"
            }
        })
    end
}
