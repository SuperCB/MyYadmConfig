return {
  {
    "gvlatko/inline-relative-numbers.nvim",
    config = function()
      require("inline-relative-numbers").setup({})
    end,
    event = "BufRead",
  },
}
