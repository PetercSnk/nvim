return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local function expand_nvim_tree()
            local api = require("nvim-tree.api")
            api.tree.expand_all()
        end
        local nvimtree = require("nvim-tree")
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                }
            },
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    }
                }
            },
            filters = {
                custom = { ".DS_Store" }
            },
            git = {
                ignore = false
            }
        })
        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeFindFile<CR>", { desc = "Toggle file explorer on current file" })
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse directories" })
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus on file explorer" })
        vim.keymap.set("n", "<leader>ea", "<cmd>expand_nvim_tree<CR>", { desc = "Expand all directories" })
    end
}
