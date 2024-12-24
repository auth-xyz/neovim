return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({
				ensure_installed = { "c", "cpp", "vim" },
				auto_install = true,
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null = require("null-ls")
			null.setup({
				sources = {
					null.builtins.formatting.prettier,
					null.builtins.formatting.stylua,
					null.builtins.formatting.clang_format,
				},
			})
		end,
	},
}
