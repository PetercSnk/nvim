return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        require("gruvbox").setup({
            contrast = "soft"
        })
        vim.cmd([[colorscheme gruvbox]])
    end
}
