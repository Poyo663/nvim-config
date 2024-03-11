return {
  {
    "morhetz/gruvbox",
    enabled = false,
    name = "gruvbox",
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
  {
    "catppuccin/nvim",
    enabled = true,
    name = "catppuccin",
    priority = 999,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
