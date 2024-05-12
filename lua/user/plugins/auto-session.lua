return {
    "rmagatti/auto-session",
    config = function()
        local function restore_nvim_tree()
            local api = require("nvim-tree.api")
            api.tree.change_root(vim.fn.getcwd())
            api.tree.open()
            api.tree.expand_all()
        end
        require("auto-session").setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop" },
            post_restore_cmds = { restore_nvim_tree },
        })
        vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for current directory" })
        vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session in current directory" })
    end
}
