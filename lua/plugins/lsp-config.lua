return {
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
      lspconfig.clangd.setup({ capabilities = capability })
      lspconfig.ast_grep.setup({ capabilities = capability })
      lspconfig.cssls.setup({ capabilities = capability })
      lspconfig.pylsp.setup({ capabilities = capability })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action, {})
    end,
  },
}
