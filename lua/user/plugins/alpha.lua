local cat = {
[[                             ,    ]],
[[      ,-.       _,---._ __  / \   ]],
[[     /  )    .-'       `./ /   \  ]],
[[    (  (   ,'            `/    /| ]],
[[     \  `-"             \'\   / | ]],
[[      `.              ,  \ \ /  | ]],
[[       /`.          ,'-`----Y   | ]],
[[      (            ;        |   ' ]],
[[      |  ,-.    ,-'         |  /  ]],
[[      |  | (   |    neovim  | /   ]],
[[      )  |  \  `.___________|/    ]],
[[      `--'   `--'                 ]]
}
return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = cat
        dashboard.section.buttons.val = {
            dashboard.button("e", "> New File", "<cmd>ene<CR>"),
            dashboard.button("_ ee", "> Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("_ ff", "> Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("_ fs", "> Find String", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("_ sr", "> Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
            dashboard.button("q", "> Quit NVIM", "<cmd>qa<CR>")
        }
        alpha.setup(dashboard.opts)
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
}
