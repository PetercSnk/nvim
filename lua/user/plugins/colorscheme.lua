return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "moon",
            transparent = vim.g.transparent_enabled,
            on_colors = function(colors)
                colors.bg_visual = "#FFFEE0"
            end
        })
        vim.cmd("colorscheme tokyonight")
    end
}
