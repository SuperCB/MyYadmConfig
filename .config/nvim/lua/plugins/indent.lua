return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#912932" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#b38532" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#2c89d5" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ac6421" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#4c8027" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#18717d" })
      end)

      require("ibl").setup({
        indent = {
          highlight = highlight,
          char = "┆",
        },
        whitespace = {
          highlight = highlight,
          remove_blankline_trail = false,
        },
        scope = { highlight = highlight, char = "|" },
      })
    end,
  },
}
