return {
	{
		"rose-pine/neovim",
		enabled = true,
		name = "rose-pine",
		priority = 999,
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},
				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},
			})
		end,
	},
	{
		"morhetz/gruvbox",
		enabled = true,
		name = "gruvbox",
		priority = 999,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		enabled = true,
		name = "oxocarbon",
		priority = 999,
	},
	{
		"catppuccin/nvim",
		enabled = true,
		name = "catppuccin",
		priority = 999,
		config = function()
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
