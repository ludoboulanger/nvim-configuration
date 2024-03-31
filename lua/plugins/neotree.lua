return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim"
    },
    config = function()
        vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal toggle left<CR>", {})
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                follow_current_file = { enabled = true },
                hide_dotfiles = false,
                hide_gitignore = false
            }
        })
    end
}
