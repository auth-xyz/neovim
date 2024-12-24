return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = ...,
		config = function()
			vim.cmd([[colorscheme gruvbox]])
		end,
	},

	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
			vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = { theme = "gruvbox_dark" },
			})
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}
