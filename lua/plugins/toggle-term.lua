return {
    "akinsho/toggleterm.nvim",
    version = "*",
    hidden = true,
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            direction = "float",
            float_opts = {
                border = "curved",
                title_pos = "center",
            },
            close_on_exit = true,
            shell = "bash",
        })
    end
}
