return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = ...,
	},
	{
		"rebelot/kanagawa.nvim",
		"sainnhe/gruvbox-material",
		"mellow-theme/mellow.nvim",
	},
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				livePreview = true,
				vim.cmd.colorscheme("gruvbox-material"), -- default theme
				themes = {
					{ name = "Gruvbox Dark", colorscheme = "gruvbox" },
					{ name = "Gruvbox Material", colorscheme = "gruvbox-material" },
					{ name = "Kanagawa", colorscheme = "kanagawa" },
					{ name = "Mellow", colorscheme = "mellow" },
				},
			})
		end,
	},
}
