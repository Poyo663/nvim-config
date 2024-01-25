return {
	{
		"catppuccin/nvim",
		enabled = true,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		enabled = false,
		name = "oxocarbon",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("oxocarbon")
		end,
	},
}
