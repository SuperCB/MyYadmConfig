return {
  {
    "chrisgrieser/nvim-spider",
    -- example for lazy-loading and keymap
    keys = {
      {
        "e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
      },
    },
  },
}
