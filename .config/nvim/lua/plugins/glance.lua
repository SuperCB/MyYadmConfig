return {
  {
    "dnlhc/glance.nvim",
    config = function()
      require("glance").setup({
        border = {
          enable = true,
          top_char = "―",
          bottom_char = "―",
        }, -- your configuration
      })
    end,
  },
}
