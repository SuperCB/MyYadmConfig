return {
  {
    "echasnovski/mini.comment",
    enabled = false,
    config = function()
      require("mini.comment").setup({
        options = {
          custom_commentstring = function()
            return vim.bo.commentstring
          end,
        },
      })
    end,
  },
}
