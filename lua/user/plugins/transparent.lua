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
                --"BufferLineTabClose",
                -- "BufferLineCloseButton",
                -- "BufferLineBufferSelected",
                "BufferLineFill",
                -- "BufferLineBackground",
                -- "BufferLineSerparator",
                -- "BufferLineIndicatorSelected",
                -- need to find lua line elements
            }
        })
    end
}
