return {
	{
		"catppuccin/nvim",
		enabled = true,
		name = "catppuccin",
		priority = 1001,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"morhetz/gruvbox",
		enabled = true,
		name = "gruvbox",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		enabled = true,
		name = "oxocarbon",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("oxocarbon")
		end,
	},
}
