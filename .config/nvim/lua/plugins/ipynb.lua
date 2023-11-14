return {
  {
    "meatballs/notebook.nvim",
    event = "VeryLazy",
    config = function()
      require("notebook").setup()
    end,
  },
}
