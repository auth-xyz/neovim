return {
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "petertriho/nvim-scrollbar", opts = {} },

	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
}
