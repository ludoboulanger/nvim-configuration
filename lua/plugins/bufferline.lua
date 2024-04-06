return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
    --keys = {
    --  { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    --  { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    --  { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    --  { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    --},
	config = function()
		vim.opt.termguicolors = true
        vim.api.nvim_set_keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		local opts = {
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		}
		require("bufferline").setup(opts)
	end,
}