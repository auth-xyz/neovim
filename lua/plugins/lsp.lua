return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local caps = require("cmp_nvim_lsp").default_capabilities()

			-- Actual LSPs
			require("lspconfig").lua_ls.setup({ capabilities = caps })
			require("lspconfig").clangd.setup({ capabilities = caps })
			-- ===========

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>m", vim.lsp.buf.rename, {})
		end,
	},
}
