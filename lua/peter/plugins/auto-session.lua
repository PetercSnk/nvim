return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")
        local function restore_nvim_tree()
            local nvim_tree = require("nvim-tree")
            nvim_tree.change_dir(vim.fn.getcwd())
            --nvim_tree.refresh()
        end
        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop" },
            post_restore_cmds = { restore_nvim_tree, "NvimTreeOpen" },
        })
        vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for current directory" })
        vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session in current directory" })
    end
}
