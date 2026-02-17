return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    return {
      sections = {
        lualine_c = {
          { "filename", path = 1 },
        },
      },
    }
  end,
}
