return {
  { "tahayvr/matteblack.nvim", lazy = false, priority = 1000 },
  { "morhetz/gruvbox", lazy = false, priority = 1000 },
  {
    "sgeisbacher/sonokai",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.sonokai_style = "espresso"
      -- vim.g.sonokai_transparent_background = 0
      vim.g.sonokai_dim_inactive_windows = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}
