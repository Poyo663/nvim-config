return {
	"numToStr/Comment.nvim",
	opts = {},
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				line = "ff",
			},
			opleader = {
				line = "ff",
			},
		})
	end,
}
