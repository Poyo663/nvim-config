return {
	--jsx
	{
		"neoclide/vim-jsx-improve",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"ast_grep",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capability = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ capabilities = capability })
			lspconfig.tsserver.setup({ capabilities = capability })
			lspconfig.eslint.setup({ capabilities = capability })
			lspconfig.clangd.setup({ capabilities = capability })
			lspconfig.ast_grep.setup({ capabilities = capability })
			lspconfig.cssls.setup({ capabilities = capability })
			lspconfig.pyright.setup({ capabilities = capability })
			lspconfig.tailwindcss.setup({ capabilities = capability })
			lspconfig.rust_analyzer.setup({ capabilities = capability })
			lspconfig.bashls.setup({ capabilities = capability })
			lspconfig.angularls.setup({ capabilities = capability })
			lspconfig.jdtls.setup({ capabilities = capability })
			lspconfig.ltex.setup({ capabilities = capability })
			lspconfig.csharp_ls.setup({ capabilities = capability })

			lspconfig.gdscript.setup({ capabilities = capability })
			local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
			if not vim.loop.fs_stat(pipepath) then
				vim.fn.serverstart(pipepath)
			end

			local cap = require("lspconfig").omnisharp.capabilities
			lspconfig.omnisharp.setup({
				capabilities = cap,
				cmd = { "dotnet", vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action, {})
		end,
	},
}
