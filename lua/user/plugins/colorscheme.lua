return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "moon",
            transparent = vim.g.transparent_enabled
        })
        vim.cmd("colorscheme tokyonight")
    end
}
