return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<CR>",
            desc = "Trouble Diagnostics"
        },
        {
            "<leader>xb",
            "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
            desc = "Trouble Buffer Diagnostics"
        },
        {
            "<leader>xs",
            "<cmd>Trouble symbols toggle focus=false<CR>",
            desc = "Trouble Symbols"
        },
        {
            "<leader>xd",
            "<cmd>Trouble lsp toggle focus=false win.position=right<CR>",
            desc = "Trouble LSP Definitions"
        },
        {
            "<leader>xl",
            "<cmd>Trouble loclist toggle<CR>",
            desc = "Trouble Location List"
        },
        {
            "<leader>xq",
            "<cmd>Trouble qflist toggle<CR>",
            desc = "Trouble Quickfix List"
        }
    }
}
