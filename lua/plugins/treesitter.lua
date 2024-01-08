return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitterConfig = require('nvim-treesitter.configs')
    treesitterConfig.setup({
      auto_install = true,
      highlight = {enabled = true},
      indent = {enabled = true}
    })
  end
}
