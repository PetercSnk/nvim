return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local function getWords()
            if vim.fn.mode() == "v" or vim.fn.mode() == "V" or vim.fn.mode() == "" then
                return vim.fn.wordcount().visual_words .. " words"
            else
                return vim.fn.wordcount().words .. " words"
            end
        end
        require("lualine").setup({
            options = {
                theme = "everforest"
            },
            sections = {
                lualine_c = {
                    getWords
                }
            }
        })
    end
}
