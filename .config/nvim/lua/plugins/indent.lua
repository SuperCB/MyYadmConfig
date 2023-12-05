return {
  {
    "nvimdev/indentmini.nvim",
    event = "BufEnter",
    config = function()
      require("indentmini").setup({
        char = "|",
        exclude = {
          "erlang",
          "markdown",
        },
      })
    end,
  },
}
