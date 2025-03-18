return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            show_close_icon = false,
            mode = "tabs",
            numbers = "ordinal",
            indicator = {
                style = "none"
            },
            separator_style = "thin",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    separator = true
                }
            }
        }
    }
}
