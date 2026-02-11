return {
  "folke/trouble.nvim",
  opts = function(_, opts)
    opts.win = opts.win or {}
    opts.win.size = {
      width = 50,
    }
    return opts
  end,
}
