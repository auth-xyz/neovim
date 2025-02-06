return {
	{
		"chrisgrieser/nvim-origami",
		event = "VeryLazy",
		opts = {},
		config = function()
			require("origami").setup({
				keepFoldsAcrossSessions = true,
				pauseFoldsOnSearch = true,
				setupFoldKeymaps = true,

				hOpensOnlyOnFirstColumn = false,
			})
		end,
	},
}
