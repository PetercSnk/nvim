return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            extra_groups = {
                -- floating windows
                "NormalFloat",
                -- nvim-tree
                "NvimTreeNormal",
                -- bufferline
                "BufferLineTabClose",
                "BufferLineBufferSelected",
                "BufferLineFill",
                "BufferLineBackground",
                "BufferLineSerparator",
                "BufferLineIndicatorSelected",
                -- need to find lua line elements
                --"lualine_c_normal"
            }
        })
    end
}
