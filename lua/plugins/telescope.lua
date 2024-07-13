return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local find_all_files = function()
                local builtin = require("telescope.builtin")
                builtin.find_files({ find_command = { "rg", "--files", "--hidden", "-g", "!.git" } })
            end

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader><leader>", find_all_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
